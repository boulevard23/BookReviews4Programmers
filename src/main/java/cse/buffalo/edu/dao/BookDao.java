package cse.buffalo.edu.dao;

import java.util.List;

import cse.buffalo.edu.entity.BookEntity;

public interface BookDao {
	public void addBook(BookEntity book);
	public List<BookEntity> getAllBooks();
	public void deleteBook(int bookId);
}
