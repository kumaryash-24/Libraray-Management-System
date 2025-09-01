package com.example.MavenProject24.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import com.example.MavenProject24.entity.Book;
 
public interface BookRepository extends CrudRepository<Book, Integer> {

    // Custom query methods for search and filter
    List<Book> findByNameContainingIgnoreCaseOrAuthorContainingIgnoreCase(String name, String author);
    List<Book> findByStatus(String status);
    List<Book> findByNameContainingIgnoreCaseAndStatusOrAuthorContainingIgnoreCaseAndStatus(String name, String nameStatus, String author, String authorStatus);

}