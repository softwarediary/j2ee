package com.dd.model;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer uid;
	private Integer tele;
	private String uname;
	private String passwd;
	private String email;
	private String upic;
	private Integer uvalue;
	private Set habits = new HashSet(0);
	private Set urs = new HashSet(0);
	private Set urs_1 = new HashSet(0);
	private Set habits_1 = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(Integer tele, String passwd) {
		this.tele = tele;
		this.passwd = passwd;
	}

	/** full constructor */
	public User(Integer tele, String uname, String passwd, String email,
			String upic, Integer uvalue, Set habits, Set urs, Set urs_1,
			Set habits_1) {
		this.tele = tele;
		this.uname = uname;
		this.passwd = passwd;
		this.email = email;
		this.upic = upic;
		this.uvalue = uvalue;
		this.habits = habits;
		this.urs = urs;
		this.urs_1 = urs_1;
		this.habits_1 = habits_1;
	}

	// Property accessors

	public Integer getUid() {
		return this.uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getTele() {
		return this.tele;
	}

	public void setTele(Integer tele) {
		this.tele = tele;
	}

	public String getUname() {
		return this.uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPasswd() {
		return this.passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUpic() {
		return this.upic;
	}

	public void setUpic(String upic) {
		this.upic = upic;
	}

	public Integer getUvalue() {
		return this.uvalue;
	}

	public void setUvalue(Integer uvalue) {
		this.uvalue = uvalue;
	}

	public Set getHabits() {
		return this.habits;
	}

	public void setHabits(Set habits) {
		this.habits = habits;
	}

	public Set getUrs() {
		return this.urs;
	}

	public void setUrs(Set urs) {
		this.urs = urs;
	}

	public Set getUrs_1() {
		return this.urs_1;
	}

	public void setUrs_1(Set urs_1) {
		this.urs_1 = urs_1;
	}

	public Set getHabits_1() {
		return this.habits_1;
	}

	public void setHabits_1(Set habits_1) {
		this.habits_1 = habits_1;
	}

}