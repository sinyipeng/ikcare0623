<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<!DOCTYPE html>
<html lang="en">

<head>
<!DOCTYPE html>
<html lang="zh-Hant-TW">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>IKcare | 線上營養師</title>
<meta name="referrer" content="no-referrer-when-downgrade">
<meta name="description" property="og:description"
	itemprop="description" content="紀錄飲食，線上營養諮詢。" />
<meta property="og:locale" content="zh_TW" />
<meta property="og:title" itemprop="name" content="IKcare | 線上營養師" />
<meta property="og:url" itemprop="url" content="#" />
<meta property="og:image" itemprop="image" content="../img/logo2.png" />
<meta property="og:type" content="website" />
<meta property="og:site_name" content="ikcare" />

<link href="ikcare1.css" rel="stylesheet">
<!-- header css -->
<!-- <link href="https://static.tpx.tw/sff/mouggan/css/main.css?v=20220518v1" rel="stylesheet">
        <link href="https://static.tpx.tw/sff/mouggan/css/rwd-content.css?v=20220518v1" rel="stylesheet"> -->
<!-- bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<link rel="shortcut icon" type="image/x-icon" href="../img/logo.png" />

<!-- icon css => Font-awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<link href="carousel.css" rel="stylesheet">



<style>
body {
	background-color: #f4f3efe8;
}

/* 輪播 */
.carousel-inner {
	width: fit-content
}

.logo {
	left: 10px;
	padding: 10px;
}

.logo2 {
	width: 50px;
	padding: 0px;
}

#navbar {
	background-color: rgb(242, 236, 226) !important;
}

.search {
	width: 30px;
	height: 30px;
	margin: 10px;
}

.login {
	width: 30px;
	height: 30px;
	margin: 10px;
}

.cart {
	width: 30px;
	height: 30px;
	margin: 10px;
}

#calory {
	margin-left: 200px;
	margin-top: 50px;
	margin-bottom: 50px;
}

#exercise {
	margin-left: 700px;
	margin-top: 50px;
	margin-bottom: 50px;
}

#sleep {
	margin-left: 200px;
	margin-top: 50px;
	margin-bottom: 50px;
}

a {
	text-decoration: none;
	color: rgba(7, 6, 3, 0.854);
}

a:hover {
	color: rgb(197, 179, 165)
}

.IKcare {
	color: rgb(145, 32, 32);
}

main {
	height: 900px;
}

.col-md-7 {
	padding-right: 200px;
}

.welcomepicture {
	width: 400px;
	height: 400px;
	margin-left: 100px;
	margin-top: 50px;
}
</style>

</head>

<body>
	<!-- header導覽列 -->
	<nav id="navbar"
		class="navbar navbar-expand-lg navbar-light bg-light fixed-top"
		style="font-size: 20px;">
		<!-- navbar justify-content-center  -->
		<div class=" container-fluid">
			<img class="logo" src="../img/logo2.png" height="40">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">

					<li class="nav-item mx-auto" style="width: 400px"><a
						class="nav-link active" aria-current="page" href="/IKcare2.html"></a>
					</li>

					<li class="nav-item"><a class="nav-link" href='<c:url value="/"/>'>首頁</a>
					</li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							健康小幫手 </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                       
                        <li><a class="dropdown-item" href='<c:url value="/pages/dietRecord" />'>飲食分析</a></li>
                        <li><a class="dropdown-item" href='<c:url value="/pages/sporting" />'>運動分析</a></li>
                        <li><a class="dropdown-item" href='<c:url value="/pages/sleeping" />'>睡眠分析</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href='<c:url value="/pages/calendar" />'>我的健康月曆</a></li>
                    </ul>
					 <li class="nav-item"><a class="nav-link" href='<c:url value="/pages/TDEE" />'>BMR＆TDEE計算</a></li>
                 <li class="nav-item">
                    <a class="nav-link" href="./shop_all/ec_p1_main.html">商城</a>
                </li>
				</ul>
				<!-- <form class="d-flex"> -->
				<!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button> -->

				<a type="button"><img class="search" src="../img/search.png"></a>
				<a href='<c:url value="/secure/ec_p3_login" />' type="button"><img class="login" src="../img/login.png"></i></a>
				<a type="button"><img class="cart" src="../img/cart.png"></a>
				</form>
			</div>
		</div>
	</nav>

	<main>

		<div class="container">
			<div class="row">

				<div class="exerciseform col-lg-4">
					<div>
						<img src="https://tools.heho.com.tw/assets/img/bmr/bmr-img.png"
							style="margin-left: 30px; margin-top: 100px; width: 600px; height: 200px;">
					</div>
					<div id="exercisepanel"
						style="margin-top: 0px; margin-left: 20px; background-color: rgb(209, 229, 247); width: 600px; height: 500px; border-radius: 1rem;">
						<form action='<c:url value="/pages/exerciseinsert"/>'
							method="post">
							<h3 style="padding-top: 50px; margin-left: 230px;">運動分析</h3>
							<br> <label style="margin-left: 150px;">分析日期&nbsp;</label><input
								type="date" class="date" name="sportdate"><br> <label
								style="margin-left: 150px;">體重</label><input id="weight"
								type="text" name="weight" style="margin: 15px;"value="${check}" > &nbsp;公斤<br>

							<label style="margin-left: 150px;">運動項目&nbsp;&nbsp;</label><select
								id="sportclass" name="sportclass">
								<optgroup label="走路">
									<option value="1">慢走(4 公里/時)</option>
									<option value="2">快走、健走(6 公里/時)</option>
								</optgroup>
								<optgroup label="爬樓梯">
									<option value="3">下樓梯</option>
									<option value="4">上樓梯</option>
								</optgroup>
								<optgroup label="跑步">
									<option value="5">慢跑(8 公里/時)</option>
									<option value="6">快跑(12 公里/時)</option>
									<option value="7">快跑(16 公里/時)</option>
								</optgroup>
								<optgroup label="騎腳踏車">
									<option value="8">騎腳踏車(一般速度，10 公里/時)</option>
									<option value="9">騎腳踏車(快，20 公里/時)</option>
									<option value="10">騎腳踏車(很快，30 公里/時)</option>
								</optgroup>
								<optgroup label="家事">
									<option value="11">拖地</option>
									<option value="12">園藝</option>
								</optgroup>
								<optgroup label="工作">
									<option value="13">使用工具製造或修理(如水電工)</option>
									<option value="14">耕種、牧場、漁業、林業</option>
									<option value="15">搬運重物</option>
								</optgroup>
								<optgroup label="其他運動">
									<option value="16">瑜珈</option>
									<option value="17">跳舞(慢)、元極舞</option>
									<option value="18">跳舞(快)、國際標準舞</option>
									<option value="19">飛盤</option>
									<option value="20">排球</option>
									<option value="21">保齡球</option>
									<option value="22">太極拳</option>
									<option value="23">乒乓球</option>
									<option value="24">棒壘球</option>
									<option value="25">高爾夫</option>
									<option value="26">溜直排輪</option>
									<option value="27">羽毛球</option>
									<option value="28">游泳(慢)</option>
									<option value="29">游泳(較快)</option>
									<option value="30">籃球(半場)</option>
									<option value="31">籃球(全場)</option>
									<option value="32">有氧舞蹈</option>
									<option value="33">網球</option>
									<option value="34">足球</option>
									<option value="35">跳繩(慢)</option>
									<option value="36">跳繩(快)</option>
									<option value="37">健康操</option>
									<option value="38">划獨木舟</option>
									<option value="39">高爾夫球</option>
									<option value="40">保齡球</option>
									<option value="41">划船</option>
									<option value="42">溜輪鞋</option>
									<option value="43">騎馬(小跑)</option>
									<option value="44">溜冰刀(16 公里/時)</option>
									<option value="45">爬岩(35 公尺/時)</option>
									<option value="46">滑雪(16 公里/時)</option>
									<option value="47">手球</option>
									<option value="48">拳擊</option>
									<option value="49">划船比賽</option>
								</optgroup>
							</select><br> <label style="margin-top: 20px; margin-left: 150px;">運動時間&nbsp;&nbsp;</label><input
								id="sporttime" type="text" name="sporthour">
							<tr>小時
							<tr>
								<input type="button" value="計算熱量消耗"
									style="margin-left: 200px; margin-top: 20px;" onclick="cal()"></input>

								<label id="Calories1"></label>
								<label id="Calories2"></label>
								<br>
								<input type="submit" value="儲存"
									style="margin-left: 200px; margin-top: 20px;"></input>
								
						</form>
								<a href="/pages/calendar"><input type="button" value="前往月曆"
									style="margin-left: 200px; margin-top: 20px;"></input>
								<br>
								</a>
					</div>
				</div>

				<div id="exercisegoal" class="exercisegoal col-lg-3"
					style="margin-left: 250px; margin-right: 100px; background-color: rgba(221, 221, 202, 0.945); margin-top: 100px; width: 500px; height: 300px; text-align: center; border-radius: 1rem;">
					<h5 style="margin-top: 50px;">運動飲食建議</h5>
					<br> <label>你的運動目標為：</label> <input type="button" value="減脂"
						name="reducefat" onclick="reduceweight()">&nbsp;&nbsp;<input
						type="button" value="增肌" name="gainmuscle" onclick="gainmuscle()">
					<p id="reducefatinfo"></p>

				</div>

			</div>
		</div>

		<script>
        function reduceweight(){
            document.getElementById('reducefatinfo').innerHTML='<p style="color:#7f662a;margin:20px;margin-left:60px; font-size:18px;">以下為減脂飲食相關建議：<br>1.營養素比例：碳水化合物：蛋白質＝3～4：1<br>例如：地瓜1小顆+茶葉蛋1顆就是很好的搭配<br>2.運動後半小時內進食以補充血糖，並攝取碳水化合物能幫助修復肌肉，並減少形成體脂肪！熱量控制在300大卡以內才能發揮最大效果！<br>3.碳水化合物應以全穀類為主，例如：糙米、燕麥、藜麥。<br>4.也可以透過補充營養食品，促進體脂肪代謝！<br><img src="https://img2.91mai.com/o2o/image/12eca7cf-b422-4183-a151-606e4b44a291.jpg" style="width:250px;height:200px;margin:30px;"><br><a href="ec_p1_main.html">康普茶為本期熱賣燃脂產品，歡迎至商城選購！</a></p>'; 
            document.getElementById('exercisegoal').style.height='700px';
        }
        function gainmuscle(){
            document.getElementById('reducefatinfo').innerHTML='<p style="color:#7f662a;margin:20px;margin-left:60px; font-size:18px;">以下為增肌飲食相關建議：<br>1.攝取熱量>TDEE<br>2.蛋白質攝取量約每公斤體重x1.5公克<br>3.脂肪攝取量約每公斤體重x1.4公克<br>4.碳水化合物攝取量：TDEE總熱量-蛋白質攝取量-脂肪攝取量<br>5.補充肌酸可以增加肌肉生長速度。<br><img src="https://media.decathlon.tw/media/catalog/product/cache/10/image/9df78eab33525d08d6e5fb8d27136e95/d/d/dddac72a-d274-4734-9129-5e315fdf9dff_8628105.jpg" style="width:250px;height:200px;margin:30px;"><br><a href="ec_p1_main.html">肌酸為本期熱賣增肌產品，歡迎至商城選購！</a></p>'
            document.getElementById('exercisegoal').style.height='650px';
        }
        function cal(){
        	var time =  document.getElementById('sporttime').value
        	var weight =document.getElementById('weight').value
        	var sportclass = document.getElementById('sportclass').value
        	if (sportclass=1)var cal=4
        	if (sportclass=2)var cal=6
        	if (sportclass=3)var cal=3
        	if (sportclass=4)var cal=8
        	if (sportclass=5)var cal=8
        	if (sportclass=6)var cal=13
        	if (sportclass=7)var cal=17
        	if (sportclass=8)var cal=4
        	if (sportclass=9)var cal=8
        	if (sportclass=10)var cal=13
        	if (sportclass=11)var cal=4
        	if (sportclass=12)var cal=4
        	if (sportclass=13)var cal=5
        	if (sportclass=14)var cal=7
        	if (sportclass=15)var cal=8
        	if (sportclass=16)var cal=3
        	if (sportclass=17)var cal=3
        	if (sportclass=18)var cal=5
        	if (sportclass=19)var cal=3
        	if (sportclass=20)var cal=4
        	if (sportclass=21)var cal=4
        	if (sportclass=22)var cal=4
        	if (sportclass=23)var cal=4
        	if (sportclass=24)var cal=5
        	if (sportclass=25)var cal=5
        	if (sportclass=26)var cal=5
        	if (sportclass=27)var cal=5
        	if (sportclass=28)var cal=6
        	if (sportclass=29)var cal=10
        	if (sportclass=30)var cal=6
        	if (sportclass=31)var cal=8
        	if (sportclass=32)var cal=7
        	if (sportclass=33)var cal=7
        	if (sportclass=34)var cal=8
        	if (sportclass=35)var cal=8
        	if (sportclass=36)var cal=13
        	if (sportclass=37)var cal=4
        	if (sportclass=38)var cal=3
        	if (sportclass=39)var cal=4
        	if (sportclass=40)var cal=4
        	if (sportclass=41)var cal=4
        	if (sportclass=42)var cal=5
        	if (sportclass=43)var cal=5
        	if (sportclass=44)var cal=6
        	if (sportclass=45)var cal=7
        	if (sportclass=46)var cal=7
        	if (sportclass=47)var cal=9
        	if (sportclass=48)var cal=11
        	if (sportclass=49)var cal=12
			document.getElementById('Calories1').innerHTML=time*weight*cal
			document.getElementById('Calories2').innerHTML='<br>大卡<br>'
        	
        	
        }
    </script>

	</main>

	<footer class="navbar-fixed-bottom" style="background-color: #eee6d3;">
		<div class="container p-4">
			<div class="row">
				<div class="col-lg-2 col-md-12 mb-4">
					<!-- <h5 class="mb-3 text-dark">footer content</h5> -->
					<!-- <p>
      Lorem ipsum dolor sit amet consectetur, adipisicing elit. 
      Iste atque ea quis molestias. Fugiat pariatur maxime quis culpa 
      corporis vitae repudiandae aliquam voluptatem veniam, 
      est atque cumque eum delectus sint!
    </p> -->
				</div>

				<div class="col-lg-2 col-md-6 mb-4">
					<h6 class="mb-3 text-dark">購物資訊</h6>
					<ul class="list-unstyled mb-0">
						<li class="mb-1"><a href='<c:url value="/pages/FAQ" />' style="color: #4f4f4f;">FAQs</a>
						</li>
					</ul>
				</div>

				<div class="col-lg-2 col-md-6 mb-4">
					<h5 class="mb-3 text-dark">I K Care</h5>
					<ul class="list-unstyled mb-0">
						<li class="mb-1"><a href='<c:url value="/pages/aboutus" />' style="color: #4f4f4f;">關於我們</a>
						</li>
						<li class="mb-1"><a href='<c:url value="/pages/policy" />' style="color: #4f4f4f;">隱私權政策</a>
						</li>
					</ul>
				</div>

				<div class="col-lg-2 col-md-6 mb-4">
					<h6 class="mb-3 text-dark">相關網站</h6>
					<ul class="list-unstyled mb-0">
						<li class="mb-1"><a href="dietaryGuide.html"
							style="color: #4f4f4f;">國民飲食指標</a></li>
						<li class="mb-1"><a href="#!" style="color: #4f4f4f;">營養小知識</a>
						</li>
					</ul>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<h6 class="mb-3 text-dark">聯絡我們</h6>
					<ul class="list-unstyled mb-0">
						<li class="mb-1"><a href="#!" style="color: #4f4f4f;">service@ikcare.com</a>
						</li>
						<li class="mb-1"><a href="#!" style="color: #4f4f4f;"><img
								src="../img/facebook_logos_PNG19753.png" type="button"
								width="30px"></a></li>
						<li class="mb-1"><a href="#!" style="color: #4f4f4f;"><img
								src="../img/instagram.png" type="button" width="30px"></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2);">
			© 2022 Copyright: <a class="text-dark" href="IKcare2.html">IKcare.com</a>
		</div>
		<!-- Copyright -->
	</footer>

</body>

</html>

</body>
</html>