package com.venilla.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.venilla.user.Book;



@Repository
public interface BookRepository extends JpaRepository<Book,Integer> {

}
