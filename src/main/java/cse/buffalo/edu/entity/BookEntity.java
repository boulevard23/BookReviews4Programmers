package cse.buffalo.edu.entity;

import java.sql.Timestamp;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "BOOK")
public class BookEntity {

	@Id
	@Column(name = "BookId")
	@GeneratedValue
	private int id;

	@Column(name = "BookName")
	private String name;

	@Column(name = "Author")
	private String author;

	@Column(name = "Pages")
	private short pages;

	@Column(name = "Publisher")
	private String publisher;

	@Column(name = "Publish_Date")
	private Date publish_date;

	@Column(name = "BookLanguage")
	private String language;

	@Column(name = "ISBN_10")
	private String ISBN_10;

	@Column(name = "ISBN_13")
	private String ISBN_13;

	@Column(name = "Created_On")
	private Timestamp Created;

	public int getId() {
		return id;
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

	public short getPages() {
		return pages;
	}

	public void setPages(short pages) {
		this.pages = pages;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public Date getPublish_date() {
		return publish_date;
	}

	public void setPublish_date(Date publish_date) {
		this.publish_date = publish_date;
	}

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getISBN_10() {
		return ISBN_10;
	}

	public void setISBN_10(String iSBN_10) {
		ISBN_10 = iSBN_10;
	}

	public String getISBN_13() {
		return ISBN_13;
	}

	public void setISBN_13(String iSBN_13) {
		ISBN_13 = iSBN_13;
	}

	public Timestamp getCreated() {
		return Created;
	}

	public void setCreated(Timestamp created) {
		Created = created;
	}
}