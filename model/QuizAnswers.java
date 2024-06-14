 package com.quize.model;

import java.util.HashMap;
import java.util.Map;

public class QuizAnswers {

    private Integer quizId;  // Reference to the Quiz ID
    private Map<Integer, String> answers; // Map question ID to user's selected answer

    // Getters, setters, and constructors

    public QuizAnswers() {
        // Optional constructor for initialization
    }

    public QuizAnswers(Integer quizId) {
        this.quizId = quizId;
    }

    public Integer getQuizId() {
        return quizId;
    }

    public void setQuizId(Integer quizId) {
        this.quizId = quizId;
    }

    public Map<Integer, String> getAnswers() {
        return answers;
    }

    public void setAnswers(Map<Integer, String> answers) {
        this.answers = answers;
    }

    public void addAnswer(Integer questionId, String answer) {
        if (answers == null) {
            answers = new HashMap<>();
        }
        answers.put(questionId, answer);
    }

    // Option 1: Modify `getAnswer` to use `Integer`
    public String getAnswer(Integer questionId) {
        if (answers == null) {
            return null;
        }
        return answers.get(questionId);
    }

   
}
