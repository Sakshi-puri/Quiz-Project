package com.quize.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.quize.model.QuizAnswers;
import com.quize.model.Quize;

@Repository
public interface QuizeRepo extends JpaRepository<Quize, Integer>
{

	

}
