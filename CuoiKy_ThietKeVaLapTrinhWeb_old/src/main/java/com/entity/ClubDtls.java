package com.entity;

public class ClubDtls {
private int id;	
private String logo;
private String name;
private int w;
private int d;
private int l;
private int score;
private int conceded;



public ClubDtls() {
	super();
	// TODO Auto-generated constructor stub
}
public ClubDtls(String logo, String name, int w, int d, int l, int score, int conceded) {
	super();
	this.logo = logo;
	this.name = name;
	this.w = w;
	this.d = d;
	this.l = l;
	this.score = score;
	this.conceded = conceded;
}



public int getId() {
	return id;
}



public void setId(int id) {
	this.id = id;
}



public String getLogo() {
	return logo;
}



public void setLogo(String logo) {
	this.logo = logo;
}



public String getName() {
	return name;
}



public void setName(String name) {
	this.name = name;
}



public int getW() {
	return w;
}



public void setW(int w) {
	this.w = w;
}



public int getD() {
	return d;
}



public void setD(int d) {
	this.d = d;
}



public int getL() {
	return l;
}



public void setL(int l) {
	this.l = l;
}



public int getScore() {
	return score;
}



public void setScore(int score) {
	this.score = score;
}



public int getConceded() {
	return conceded;
}



public void setConceded(int conceded) {
	this.conceded = conceded;
}



@Override
public String toString() {
	return "ClubDtls [id=" + id + ", logo=" + logo + ", name=" + name + ", w=" + w + ", d=" + d + ", l=" + l
			+ ", score=" + score + ", conceded=" + conceded + "]";
}




}
