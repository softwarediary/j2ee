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
		habit.setFinishedNum(0);
		habitDao.addHabit(habit);
		return "message";
	}
	
	public String showHabit(){
		habitList=habitDao.QueryAllHabit();
		return "show_habit";
	}
	   public String editHabit() throws Exception {
	    	System.out.println("编辑习惯");
	    	Habit h=habitDao.GetHabitById(habit.getHid());
	    	habit.setFinishedNum(h.getFinishedNum());
	    	habitDao.UpdateHabit(habit);
	        return "edit_message";
	    }
    public String showEdit() throws Exception {
    	habit = habitDao.GetHabitById(habit.getHid());
        return "edit_view";
    }
    public String daka() throws Exception {
    	Habit h=habitDao.GetHabitById(habit.getHid());
    	h.setFinishedNum(h.getFinishedNum()+1);
    	habitDao.UpdateHabit(h);
    	System.out.println("成功打卡一个习惯");
        return "daka_success";
    }
    public String deleteHabit() throws Exception {
    	habitDao.deleteHabit(habit.getHid());
        return "delete_message";
    }
}
