package com.domain;

public class book {
    private String bookid;

    private String bookname;

    private String author;

    private Double price;

    private Integer account;

    private String cover;

    private Integer bid;

    @Override
	public String toString() {
		return "book [bookid=" + bookid + ", bookname=" + bookname + ", author=" + author + ", price=" + price
				+ ", account=" + account + ", cover=" + cover + ", bid=" + bid + "]";
	}

	public String getBookid() {
        return bookid;
    }

    public void setBookid(String bookid) {
        this.bookid = bookid == null ? null : bookid.trim();
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname == null ? null : bookname.trim();
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author == null ? null : author.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getAccount() {
        return account;
    }

    public void setAccount(Integer account) {
        this.account = account;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover == null ? null : cover.trim();
    }

    public Integer getBid() {
        return bid;
    }

    public void setBid(Integer bid) {
        this.bid = bid;
    }
}