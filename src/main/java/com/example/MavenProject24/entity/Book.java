package com.example.MavenProject24.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date; // Import Date

@Entity
@Table(name = "book_tb")
public class Book {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String author;
	private int price;
	private String status; // "available" or "borrowed"
	private int borrowedForDays;
	private Date borrowedDate; // New field

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getBorrowedForDays() {
		return borrowedForDays;
	}

	public void setBorrowedForDays(int borrowedForDays) {
		this.borrowedForDays = borrowedForDays;
	}

	public Date getBorrowedDate() { // Getter for borrowedDate
		return borrowedDate;
	}

	public void setBorrowedDate(Date borrowedDate) { // Setter for borrowedDate
		this.borrowedDate = borrowedDate;
	}
}