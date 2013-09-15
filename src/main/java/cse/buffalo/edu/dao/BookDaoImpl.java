package cse.buffalo.edu.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cse.buffalo.edu.entity.BookEntity;

@Repository
public class BookDaoImpl implements BookDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addBook(BookEntity book) {
		this.sessionFactory.getCurrentSession().save(book);
	}

	public List<BookEntity> getAllBooks() {
		return this.sessionFactory.getCurrentSession().createQuery("from BookEntity").list();
	}

	public void deleteBook(int bookId) {
		BookEntity book = (BookEntity) sessionFactory.getCurrentSession().load(BookEntity.class, bookId);
		
		if (book != null) {
			this.sessionFactory.getCurrentSession().delete(book);
		}
	}

}
