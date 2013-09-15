package cse.buffalo.edu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cse.buffalo.edu.dao.BookDao;
import cse.buffalo.edu.entity.BookEntity;

@Service
public class BookManagerImpl implements BookManager {

	@Autowired
	private BookDao bookDao;

	@Transactional
	public void addBook(BookEntity book) {
		bookDao.addBook(book);
	}

	@Transactional
	public List<BookEntity> getAllBooks() {
		return bookDao.getAllBooks();
	}

	@Transactional
	public void deleteBook(int bookId) {
		bookDao.deleteBook(bookId);
	}

	public void setBookDao(BookDao bookDao) {
		this.bookDao = bookDao;
	}

}
