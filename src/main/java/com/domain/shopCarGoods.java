package com.domain;

public class shopCarGoods {

	  private String bookname;

	    private String author;

	    private Double price;

	    private String cover;
	    
	    private Integer num;

		@Override
		public String toString() {
			return "shopCarGoods [bookname=" + bookname + ", author=" + author + ", price=" + price + ", cover=" + cover
					+ ", num=" + num + "]";
		}

		public String getBookname() {
			return bookname;
		}

		public void setBookname(String bookname) {
			this.bookname = bookname;
		}

		public String getAuthor() {
			return author;
		}

		public void setAuthor(String author) {
			this.author = author;
		}

		public Double getPrice() {
			return price;
		}

		public void setPrice(Double price) {
			this.price = price;
		}

		public String getCover() {
			return cover;
		}

		public void setCover(String cover) {
			this.cover = cover;
		}

		public Integer getNum() {
			return num;
		}

		public void setNum(Integer num) {
			this.num = num;
		}
	    
	    
}
