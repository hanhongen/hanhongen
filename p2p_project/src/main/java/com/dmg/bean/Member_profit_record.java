package com.dmg.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Member_profit_record {  //成员利润记录表)

	private int id;  //id
	private String serial_number;  //流水号
	private int type;  //类型
	private double amount;  // 金额
	private Member member;  //用户id
	private int delflag;  //默认null
	private String create_date;  //创建时间
	private String update_date;  //修改时间
	private String comment;  //备注
	private Subject subject;  //标的id
	private int profit_year;  //计息年
	private int profit_month;  // 计息月
	private int profit_day;  // 计息日
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSerial_number() {
		return serial_number;
	}
	public void setSerial_number(String serial_number) {
		this.serial_number = serial_number;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public double getAmount() {
		return amount;
	}
	public void setAmount(double amount) {
		this.amount = amount;
	}
	
	@ManyToOne()
	@JoinColumn(name="member_id")
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public int getDelflag() {
		return delflag;
	}
	public void setDelflag(int delflag) {
		this.delflag = delflag;
	}
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
	@ManyToOne()
	@JoinColumn(name="subject_id")
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	public int getProfit_year() {
		return profit_year;
	}
	public void setProfit_year(int profit_year) {
		this.profit_year = profit_year;
	}
	public int getProfit_month() {
		return profit_month;
	}
	public void setProfit_month(int profit_month) {
		this.profit_month = profit_month;
	}
	public int getProfit_day() {
		return profit_day;
	}
	public void setProfit_day(int profit_day) {
		this.profit_day = profit_day;
	}
	
	
	
}
