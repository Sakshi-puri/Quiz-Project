package com.quize.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


import com.quize.model.Sign;


@Repository
public interface RegRepo extends JpaRepository<Sign, Integer>
{
	public Sign findByEmail( String email);
}
