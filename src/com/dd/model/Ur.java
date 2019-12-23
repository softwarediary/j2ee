package com.dd.model;

/**
 * Ur entity. @author MyEclipse Persistence Tools
 */

public class Ur implements java.io.Serializable {

	// Fields

	private Integer urid;
	private User user;
	private Reward reward;

	// Constructors

	/** default constructor */
	public Ur() {
	}

	/** full constructor */
	public Ur(User user, Reward reward) {
		this.user = user;
		this.reward = reward;
	}

	// Property accessors

	public Integer getUrid() {
		return this.urid;
	}

	public void setUrid(Integer urid) {
		this.urid = urid;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Reward getReward() {
		return this.reward;
	}

	public void setReward(Reward reward) {
		this.reward = reward;
	}

}