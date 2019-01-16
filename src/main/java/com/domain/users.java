package com.domain;

public class users {
    private String username;

    private String password;

    private String paypass;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    @Override
	public String toString() {
		return "users [username=" + username + ", password=" + password + ", paypass=" + paypass + "]";
	}

	public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getPaypass() {
        return paypass;
    }

    public void setPaypass(String paypass) {
        this.paypass = paypass == null ? null : paypass.trim();
    }
}