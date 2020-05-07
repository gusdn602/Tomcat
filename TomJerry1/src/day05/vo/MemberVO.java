package day05.vo;

import java.text.*;
import java.sql.*;
public class MemberVO {
	private int mno;
	private String id, oriname, tel, mail, gen, sdate, avatar, isshow;
	private Date jDate;
	private Time jTime;
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return oriname;
	}
	public void setName(String name) {
		this.oriname = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getGen() {
		return gen;
	}
	public void setGen(String gen) {
		this.gen = gen;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public void setSdate() {
		
		
		SimpleDateFormat form1 = new SimpleDateFormat("yyyy년 mm월 dd일");
		SimpleDateFormat form2 = new SimpleDateFormat("HH:mm:ss");
		
		String str = form1.format(jDate) + " " + form2.format(jTime);
		
		this.sdate = str;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getIsshow() {
		return isshow;
	}
	public void setIsshow(String isshow) {
		this.isshow = isshow;
	}
	public Date getjDate() {
		return jDate;
	}
	public void setjDate(Date jDate) {
		this.jDate = jDate;
	}
	public Time getjTime() {
		return jTime;
	}
	public void setjTime(Time jTime) {
		this.jTime = jTime;
	}
}
