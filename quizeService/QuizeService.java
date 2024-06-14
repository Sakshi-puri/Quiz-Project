package com.quize.quizeService;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quize.model.Question;
import com.quize.model.QuestionWrapper;
import com.quize.model.QuizAnswers;
import com.quize.model.Quize;
import com.quize.model.Response;
import com.quize.repository.QueRepo;
import com.quize.repository.QuizeRepo;


@Service
public class QuizeService 
{

	@Autowired
	QuizeRepo quizerepo;
	@Autowired
	QueRepo qr; 

	
	public String createQuize(String category, int number)
	{
		List<Question> questions =qr.findRandomQuestionByCategory(category,number);
		Quize quize=new Quize();
		quize.setCategory(category);
		quize.setQuestions(questions);
		quizerepo.save(quize);
		return "fetchingquize";
	}


	public String calculateResult(String id, Map<String, String> allParams, Model model) 
	
	{
		
		int id2=Integer.parseInt(id);
		 // Fetch the quiz by ID
        Optional<Quize> optionalQuiz = quizerepo.findById(id2);

        if (optionalQuiz.isPresent()) {
            Quize quiz = optionalQuiz.get();

            int correctCount = 0;
            List<Question> questions = quiz.getQuestions();

           
            System.out.println("Number of responses received: " + allParams.size());

            for (Question question : questions) {
                String userResponse = allParams.get("ans_" + question.getId());
                System.out.println("User Response: " + userResponse);
                System.out.println("Correct Answer: " + question.getRightAnswer());
/////////
               if (userResponse != null && userResponse.equalsIgnoreCase(question.getRightAnswer())) {
                    System.out.println("***if");
                    correctCount++;
                }
            }

           
            model.addAttribute("right", correctCount);
            model.addAttribute("totalQuestions", questions.size());

            
            return "feedPage";
        } else {
            
            return "fetchingquize";
        }
    }
		
		
	
}

	
	

