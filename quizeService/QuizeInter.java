package com.quize.quizeService;

import java.util.List;

import com.quize.model.Question;
import com.quize.model.QuizAnswers;

public interface QuizeInter
{
	

    
	int processAndCalculateResult(Integer id, QuizAnswers answers) throws Exception;
}
