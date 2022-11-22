<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cyworld</title>
<link rel="stylesheet" href="/cyworld/resources/css/reset.css">
<link rel="stylesheet" href="/cyworld/resources/css/animate.css">
<link rel="stylesheet" href="/cyworld/resources/css/main.css">

<script>
	function registration(f){
		var Ilchonpyeong = f.Ilchonpyeong.value;
		
		//유효성 체크 
		if( Ilchonpyeong == ""){
			alert("일촌평을 작성해주세요.");
			return;
		}
		f.action = "insert.do";
		f.method="post";
		f.submit();
	}
</script>
<style>
 
</style>
</head>
<body>
 <div class="container">
                <section class="left-section">
                        <div class="left-dashed-line">
                            <div class="left-gray-background">
                                <p class="todayBanner"><span>Today</span> <span class="todayHere">156</span><span>&nbsp;｜ Total</span> 45,405</p>
                                <aside class="left-aside">
                                    <div class="item item1"></div>
                                    <div class="item item1"></div>
                                    <div class="item item2"></div>
                                    <div class="item item2"></div>
                                    <div class="todayIcon">
                                        <span class="todayIconText">Today is..</span><img class="box animate__animated animate__headShake animate__infinite " src="resources/images/emoticon1.png" alt="">
                                    </div>
                                    <div class="left-image"><img class="leftImg" src="resources/images/left_profile.png" alt=""></div>
                                    <textarea class="left-textarea">어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구어쩌구저쩌구</textarea>
                                    <div class="history"><img src="resources/images/arrow.png" alt=""><h3>History</h3></div>
                                    <select class="myFriend">
                                        <option value="">::: 파도타기 :::</option>
                                            <option><a href="#">이정현 ｜  친구</a></option>
                                            <option><a href="#">박성철 ｜  친구</a></option>
                                            <option><a href="#">장유진 ｜  친구</a></option>
                                            <option><a href="#">황유진 ｜  친구</a></option>
                                            <option><a href="#">장현중 ｜  친구</a></option>
                                    </select>
                                </aside>
                            </div>
                        </div>
                </section>
               
                <section class="right-section">
                        <div class="right-dashed-line">
                            <div class="right-gray-background">
                                <p class="title"><a href="#">Test 싸이월드 Title입니다. 누르면 무슨 기능이였더라?</a></p>
                                <!-- a태그 = 새로고침  -->
                                <!-- <p class="titleLink"><a href="#">http://www.zenghyun.com</a></p> -->
                                <aside class="right-aside">
                                    <div class="miniRoomBox"><p>Mini Room</p>
                                   <div class="miniRoom"><img src="resources/images/mainroom.png" alt=""></div>
                                    <div class=" Crayon box animate__animated animate__bounce animate__infinite"><img src="resources/images/Crayon.png" alt=""></div>
                                </div>
                                <div class="Ilchonpyeong">
                                    <span>일촌평</span> <input type="text" name="Ilchonpyeong" placeholder="일촌과 나누고 싶은 이야기를 남겨보세요"></input>
                                    <input class="Ic-registration" type="button" value="확인" onclick="registration(this.form);"></input>
                                </div>
                                <div class="IlchonpyeongList">
                                <div class="Ilchon" >${ vo.Ilchonpyeong }</div>
                                </div>
                                </aside>
                            </div>
                        </div>
                        <div class="tabs">
                                <input type="checkbox" id="tab1" checked ></input>
                                <input type="checkbox" id="tab2"></input>
                                <input type="checkbox" id="tab3"></input>
                                <input type="checkbox" id="tab4"></input>
                                <input type="checkbox" id="tab5"></input>
                                <div class="tab-btns">
                                    <label for="tab1" id="btn1">홈</label>
                                    <label for="tab2" id="btn2">프로필</label>
                                    <label for="tab3" id="btn3">다이어리</label>
                                    <label for="tab4" id="btn4">사진첩</label>
                                    <label for="tab5" id="btn5">방명록</label>
                                </div>
                        </div>
                </section>
    </div>
</body>
</html>