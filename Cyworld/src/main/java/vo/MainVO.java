package vo;

import org.springframework.web.multipart.MultipartFile;

public class MainVO {
 private int today, todayTotal;
 private String todayIs, profileImgName, profileText, history, ilchonList, introduceBanner, search, bgmName, ilchonpyeong;

 //파일을 받기 위한 클래스
 private MultipartFile photo;
 
 public MultipartFile getPhoto() {
		return photo;
	}
	public void setPhoto(MultipartFile photo) {
		this.photo = photo;
	}
 
 public int getToday() {
	return today;
}
public void setToday(int today) {
	this.today = today;
}
public int getTodayTotal() {
	return todayTotal;
}
public void setTodayTotal(int todayTotal) {
	this.todayTotal = todayTotal;
}
public String getTodayIs() {
	return todayIs;
}
public void setTodayIs(String todayIs) {
	this.todayIs = todayIs;
}
public String getProfileImgName() {
	return profileImgName;
}
public void setProfileImgName(String profileImgName) {
	this.profileImgName = profileImgName;
}
public String getProfileText() {
	return profileText;
}
public void setProfileText(String profileText) {
	this.profileText = profileText;
}
public String getHistory() {
	return history;
}
public void setHistory(String history) {
	this.history = history;
}
public String getIlchonList() {
	return ilchonList;
}
public void setIlchonList(String ilchonList) {
	this.ilchonList = ilchonList;
}
public String getIntroduceBanner() {
	return introduceBanner;
}
public void setIntroduceBanner(String introduceBanner) {
	this.introduceBanner = introduceBanner;
}
public String getSearch() {
	return search;
}
public void setSearch(String search) {
	this.search = search;
}
public String getBgmName() {
	return bgmName;
}
public void setBgmName(String bgmName) {
	this.bgmName = bgmName;
}
public String getIlchonpyeong() {
	return ilchonpyeong;
}
public void setIlchonpyeong(String ilchonpyeong) {
	this.ilchonpyeong = ilchonpyeong;
}
 
 
}
