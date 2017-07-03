package com.venilla.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.venilla.user.User;




@Repository
public interface UserRepository extends JpaRepository<User,Integer> {

	@Query(value="select* from user where username=?1 and password=?2 and active=?3",nativeQuery= true)
	public User findByusernameandpassword(String username,String password,String active);
	
}



