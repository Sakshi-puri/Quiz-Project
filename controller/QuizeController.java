package com.quize.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.quize.model.Question;
import com.quize.model.QuestionWrapper;
import com.quize.model.QuizAnswers;
import com.quize.model.Quize;
import com.quize.model.Response;
import com.quize.quizeService.QuizeService;
import com.quize.repository.QuizeRepo;
import com.quize.repository.RegRepo;
import java.util.Optional;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class QuizeController 
{
	@Autowired
	RegRepo rg; //sign repo
	@Autowired
	QuizeService qs;
	
	@Autowired
	QuizeRepo quizerepo;
	
	@RequestMapping("/play")
	public String saveplay()
			
	{
		
		return "generate";
	}
	
	@RequestMapping("/gen")
	
	public String genquize(@RequestParam String category,@RequestParam int number,Model model)
	{
		System.out.println("#$%^&");
		return qs.createQuize(category,number);
	}
	
	
	//***experiment ***
	@RequestMapping("/fetchid")
	public String idfetch(@RequestParam("number") String number, Model model) 
	{
		try {
            int id = Integer.parseInt(number);
            model.addAttribute("id", id);
            Optional<Quize> quiz = quizerepo.findById(id);
            if (quiz.isPresent())
            {
            	List<Question> questionFromDb  = quiz.get().getQuestions();
            	List<QuestionWrapper> questionForUser = new ArrayList<>();
            	for (Question q : questionFromDb)
            	{
					QuestionWrapper qw=new QuestionWrapper(q.getId(), q.getQuestionTitle(), q.getOption1(), q.getOption2(), q.getOption3(), q.getOption4());
					questionForUser.add(qw);
				}
            	model.addAttribute("questions", questionForUser);
                
            } else {
                // Handle the case where no Quize object is found for the given id
              
                model.addAttribute("errorMessage", "No quiz found with ID: " + id);
            }
        } catch (NumberFormatException e) {
            // Handle the case where the input is not a valid integer
          
            model.addAttribute("errorMessage", "Invalid ID: " + number);
        }
		
		
		
		return "experi";   //exid
	}
	
	//*******Playing****

//******form****
	@PostMapping("/submit/{id}")
	public String submitAnswers(@PathVariable("id") String id,
            @RequestParam Map<String, String> allParams,
            Model model) {


		 allParams.forEach((key, value) -> System.out.println(key + " : " + value));





model.addAttribute("message", "Form submitted successfully");



return qs.calculateResult(id, allParams, model);

}
}
	
	
	
	

