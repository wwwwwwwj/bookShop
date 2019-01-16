package com.domain;

public class shopcar {
    @Override
	public String toString() {
		return "shopcar [sid=" + sid + ", bookid=" + bookid + ", num=" + num + "]";
	}

	private Integer sid;

    private String bookid;

    private Integer num;

    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getBookid() {
        return bookid;
    }

    public void setBookid(String bookid) {
        this.bookid = bookid == null ? null : bookid.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}