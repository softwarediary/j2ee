package com.dd.model;

/**
 * Reward entity. @author MyEclipse Persistence Tools
 */

public class Reward implements java.io.Serializable {

	// Fields

	private Integer rid;
	private String rpic;
	private String rcontent;
	private Integer rvalue;

	// Constructors

	/** default constructor */
	public Reward() {
	}

	/** full constructor */
	public Reward(String rpic, String rcontent, Integer rvalue) {
		this.rpic = rpic;
		this.rcontent = rcontent;
		this.rvalue = rvalue;
	}

	// Property accessors

	public Integer getRid() {
		return this.rid;
	}

	public void setRid(Integer rid) {
		this.rid = rid;
	}

	public String getRpic() {
		return this.rpic;
	}

	public void setRpic(String rpic) {
		this.rpic = rpic;
	}

	public String getRcontent() {
		return this.rcontent;
	}

	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}

	public Integer getRvalue() {
		return this.rvalue;
	}

	public void setRvalue(Integer rvalue) {
		this.rvalue = rvalue;
	}

}