package com.dd.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.dd.dao.HabitDao;
import com.dd.model.Habit;
import com.dd.model.Reward;

import com.opensymphony.xwork2.ActionSupport;

@Controller @Scope("prototype")
public class HabitAction extends ActionSupport{
@Resource HabitDao habitDao;
	
	private Habit habit;

	public Habit getHabit() {
		return habit;
	}

	public void setHabit(Habit habit) {
		this.habit = habit;
	}
	
	private List<Habit> habitList;

	public List<Habit> getHabitList() {
		return habitList;
	}

	public void setHabitList(List<Habit> habitList) {
		this.habitList = habitList;
	}
	
	public String addHabit(){
		habitDao.addHabit(habit);
		return "message";
	}
	
	public String showHabit(){
		habitList=habitDao.QueryAllHabit();
		return "show_habit";
	}
}
