package cse.buffalo.edu.service;

import java.util.List;

import cse.buffalo.edu.entity.BookEntity;

public interface BookManager {
	public void addBook(BookEntity book);
	public List<BookEntity> getAllBooks();
	public void deleteBook(int bookId);
}
