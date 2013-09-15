package cse.buffalo.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cse.buffalo.edu.dao.BookDao;
import cse.buffalo.edu.entity.BookEntity;
import cse.buffalo.edu.service.BookManager;

@Controller
public class EditBookController {

	@Autowired
	private BookManager bookManager;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listBooks(ModelMap map) {
		map.addAttribute("book", new BookEntity());
		map.addAttribute("bookList", bookManager.getAllBooks());

		return "editBookList";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String addBook(@ModelAttribute(value = "book") BookEntity book,
			BindingResult result) {
		bookManager.addBook(book);
		return "redirect:/";
	}

	@RequestMapping("/delete/{bookId}")
	public String deleteBook(@PathVariable("bookId") int bookId) {
		bookManager.deleteBook(bookId);
		return "redirect:/";
	}

	public void setBookManager(BookManager bookManager) {
		this.bookManager = bookManager;
	}
}
