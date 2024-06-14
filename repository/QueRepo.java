package com.quize.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.quize.model.Question;

@Repository
public interface QueRepo extends JpaRepository<Question, Integer> 
{

	List<Question> getQuestionByCategory(String category);

	
	//no param before
	  @Query(value = "SELECT * FROM question WHERE category = :category ORDER BY RAND() LIMIT :number", nativeQuery = true)
	List<Question> findRandomQuestionByCategory( @Param("category") String category, @Param("number") int number);

}
