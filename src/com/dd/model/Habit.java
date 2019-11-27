package com.dd.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;


/**
 * Habit entity. @author MyEclipse Persistence Tools
 */

public class Habit  implements java.io.Serializable {


    // Fields    

     private Integer hid;
     private String hname;
     private String pic;
     private Integer totalNum;
     private Integer finishedNum;
     private String htype;
     private String fre;
     private String htext;
     private Integer curdays;
     private Integer aimdays;
     private Integer hvalue;
     private Date credate;
     private Set dakas = new HashSet(0);


    // Constructors

    /** default constructor */
    public Habit() {
    }

    
    /** full constructor */
    public Habit(String hname, String pic, Integer totalNum, Integer finishedNum, String htype, String fre, String htext, Integer curdays, Integer aimdays, Integer hvalue, Date credate, Set dakas) {
        this.hname = hname;
        this.pic = pic;
        this.totalNum = totalNum;
        this.finishedNum = finishedNum;
        this.htype = htype;
        this.fre = fre;
        this.htext = htext;
        this.curdays = curdays;
        this.aimdays = aimdays;
        this.hvalue = hvalue;
        this.credate = credate;
        this.dakas = dakas;
    }

   
    // Property accessors

    public Integer getHid() {
        return this.hid;
    }
    
    public void setHid(Integer hid) {
        this.hid = hid;
    }

    public String getHname() {
        return this.hname;
    }
    
    public void setHname(String hname) {
        this.hname = hname;
    }

    public String getPic() {
        return this.pic;
    }
    
    public void setPic(String pic) {
        this.pic = pic;
    }

    public Integer getTotalNum() {
        return this.totalNum;
    }
    
    public void setTotalNum(Integer totalNum) {
        this.totalNum = totalNum;
    }

    public Integer getFinishedNum() {
        return this.finishedNum;
    }
    
    public void setFinishedNum(Integer finishedNum) {
        this.finishedNum = finishedNum;
    }

    public String getHtype() {
        return this.htype;
    }
    
    public void setHtype(String htype) {
        this.htype = htype;
    }

    public String getFre() {
        return this.fre;
    }
    
    public void setFre(String fre) {
        this.fre = fre;
    }

    public String getHtext() {
        return this.htext;
    }
    
    public void setHtext(String htext) {
        this.htext = htext;
    }

    public Integer getCurdays() {
        return this.curdays;
    }
    
    public void setCurdays(Integer curdays) {
        this.curdays = curdays;
    }

    public Integer getAimdays() {
        return this.aimdays;
    }
    
    public void setAimdays(Integer aimdays) {
        this.aimdays = aimdays;
    }

    public Integer getHvalue() {
        return this.hvalue;
    }
    
    public void setHvalue(Integer hvalue) {
        this.hvalue = hvalue;
    }

    public Date getCredate() {
        return this.credate;
    }
    
    public void setCredate(Date credate) {
        this.credate = credate;
    }

    public Set getDakas() {
        return this.dakas;
    }
    
    public void setDakas(Set dakas) {
        this.dakas = dakas;
    }
   








}