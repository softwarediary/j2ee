package com.dd.action;

import java.util.List;
import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.dd.dao.RewardDao;
import com.dd.model.Habit;
import com.dd.model.Reward;
@Controller @Scope("prototype")
public class RewardAction extends ActionSupport{
@Resource RewardDao rewardDao;
	private Reward reward;
	private List<Reward> rewardList;
	public Reward getReward() {
		return reward;
	}

	public void setReward(Reward reward) {
		this.reward = reward;
	}
	
	public String addReward(){
		rewardDao.addReward(reward);
		return "messager";
	}
	
	public List<Reward> getRewardList() {
		return rewardList;
	}

	public void setRewardList(List<Reward> rewardList) {
		this.rewardList = rewardList;
	}
	
	public String showReward(){
		rewardList=rewardDao.QueryAllReward();
		return "show_reward";
	}

}
