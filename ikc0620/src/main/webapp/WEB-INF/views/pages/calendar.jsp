<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!DOCTYPE html>
<html lang='en'>

<head>
<meta charset='utf-8' />

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>I K care | 線上營養師</title>
<link rel="shortcut icon" type="image/x-icon" href="../img/logo.png" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- font-awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">


<!-- fullcalendar -->
<link href='../css/main.css' rel='stylesheet' />
<script src='../js/main.js'></script>
<!-- 轉換成中文 -->
<script src="../js/locales-all.js"></script>




<style>
/* 導覽列 */
body {
	font-size: 20px;
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

/* main */
main {
	height: 1000px;
}

a {
	text-decoration: none;
	color: rgba(7, 6, 3, 0.854);
}

a:hover {
	color: rgb(197, 179, 165)
}

#date_controls {
	display: inline-block;
}

::after, ::before {
	box-sizing: border-box;
}

/* 月曆 */
.container {
	margin-top: 100px;
	border-radius: 1rem;
	width: 900px;
	height: 700px;
	position: absolute;
	top: 60%;
	left: 60%;
	background-color: rgb(247, 245, 241);
	transform: translate(-60%, -50%);
	/* border: 1px solid gray; */
	box-shadow: 5px 10px 7px gray;
	padding: 30px;
}

@media ( max-width :600px) {
	.container {
		width: 350px;
		height: 500px;
	}
	.fc th {
		font-size: 16px;
	}
}

a {
	color: rgb(18, 18, 14);
	text-decoration: none;
}

/* 左側導覽列 */
.container-all {
	padding-top: 100px;
	display: flex;
	align-items: stretch;
}

#sidebar {
	width: 240px;
	height: 450px;
	background-color: rgb(235, 242, 225);
	color: black;
	transition: 1s;
}

#sidebar.active {
	margin-left: -190px;
}

.container-right {
	width: 100%;
	height: 100vh;
	text-align: center;
}

.collapse-btn {
	position: relative;
	top: 0%;
	float: right;
	border: none;
	font-size: 30px;
}

.collapse-btn:hover {
	color: rgb(170, 199, 235);
}

#sidebar p {
	padding-top: 30px;
	text-align: center;
	font-size: 30px;
	font-style: italic;
	color: #4f4f4f;
}

#sidebar ul li a {
	font-size: 20px;
	padding: 10px;
	display: block;
	text-decoration: none;
}

#sidebar ul li a:hover {
	color: rgb(65, 76, 65);
	background-color: rgb(243, 236, 231);
}

#sidebar ul li ul li a {
	font-size: 15px;
	text-align: center;
}

.fa-solid {
	float: right;
}

@media ( max-width :500px) {
	#sidebar {
		margin-left: -150px;
		width: 100px;
		font-size: 10px;
	}
	#sidebar.active {
		margin-left: 0px;
	}
	.collapse-btn {
		position: relative;
		top: 1%;
		left: 100px;
	}
}
</style>
<!--  
<script>
            document.addEventListener('DOMContentLoaded', function () {
                var calendarEl = document.getElementById('calendar');
                var calendar = new FullCalendar.Calendar(calendarEl, {
                    initialView: 'dayGridMonth',
                    locale: 'zh-tw',
                    height: 500,
                    navLinks: true,
                    headerToolbar: {
                        left: 'prev,next today',
                        center: 'title',
                        right: 'dayGridMonth,timeGridWeek,timeGridDay'//出現月份日期
                    }
               
    
    
                });
                calendar.render();
            });
    
        </script>
 -->
<script>
	$(document).ready(function() {
		$('#collapse').on('click', function() {
			$('#sidebar').toggleClass('active');
			$('.fa-angle-left').toggleClass('fa-angle-right');
		})
	})
</script>
</head>

<body>
	<!-- 導覽列 -->
	<nav id="navbar"
		class="navbar navbar-expand-lg navbar-light bg-light fixed-top"
		style="font-size: 20px;">
		<!-- navbar justify-content-center  -->
		<div class="container-fluid">
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

					<li class="nav-item"><a class="nav-link" href="/IKcare2.html">首頁</a>
					</li>

					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							健康小幫手 </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<!--  	<li><a class="dropdown-item" href="health.html">BMI計算</a></li>-->
							<li><a class="dropdown-item" href='<c:url value="/pages/TDEE" />'>BMR＆TDEE計算</a></li>
							<li><a class="dropdown-item" href='<c:url value="/pages/dietRecord" />'>飲食分析</a></li>
							<li><a class="dropdown-item" href='<c:url value="/pages/bodyinformationselect" />'>運動分析</a></li>
							<li><a class="dropdown-item" href='<c:url value="/pages/sleeping" />'>睡眠分析</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href='<c:url value="/pages/calendar" />'>我的健康月曆</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link"
						href="/shop_all/ec_p1_main.html">商城</a></li>
				</ul>
				<form class="d-flex">
					<!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button> -->
					<a type="button"><img class="search" src="../img/search.png"></a>
					<a href='<c:url value="/secure/ec_p3_login" />' type="button"><img class="login" src="../img/login.png"></a>
					<a type="button"><img class="cart" src="../img/cart.png"></a>
				</form>
			</div>
		</div>
	</nav>
	<main>
		<div>
		<!--  
			<h3
				style="margin-top: 80px; text-align: center; color: rgb(13, 17, 42)">我的健康月曆</h3>
			<input type="date" style="margin-left: 650px;">
			-->
			
		</div>
		<div class="container-left">
			<!-- 左側導覽 -->
			<nav id="sidebar">

				<!-- 展開or縮起來 
				<button type="button" id="collapse" class="btn collapse-btn">
					<i class="fa-solid fa-angle-left"></i>
				</button>
					-->
				<!-- list -->
				<!--  
				<ul class="list-unstyled">
					<p>My calendar</p>
					<li><a href="#sublist" data-bs-toggle="collapse" id="dropdown"
						name="diet">飲食<i class="fa-solid fa-utensils"></i></a>

						<ul id="sublist" class="list-unstyled collapse">
							<li><a href="#" name="breakfast">早餐</a></li>
							<li><a href="#" name="lunch">午餐</a></li>
							<li><a href="#" name="dinner">晚餐</a></li>
							<li><a href="#" name="snack">點心</a></li>

						</ul></li>
					<li><a href="#" name="exercise">運動<i
							class="fa-solid fa-person-running"></i></a></li>
					<li><a href="#" name="sleep">睡眠<i class="fa-solid fa-bed"></i></a></li>

				</ul>
				-->

			</nav>
		</div>

		<!-- 飲食calendar -->
		<div class="container" style="width: 1200px">
			<div id='calendar'></div>

		</div>

		<script
			src='http://fullcalendar.io/js/fullcalendar-2.1.1/lib/moment.min.js'></script>
		<script
			src='http://fullcalendar.io/js/fullcalendar-2.1.1/lib/jquery.min.js'></script>
		<script
			src="http://fullcalendar.io/js/fullcalendar-2.1.1/lib/jquery-ui.custom.min.js"></script>
		<script
			src='http://fullcalendar.io/js/fullcalendar-2.1.1/fullcalendar.min.js'></script>


		<script>
			var test2="${test1}"
			var event=[];
			
			jQuery.ajax({
                url : "/pages/calendarsport",
                type : 'get',
                dataType : 'json',        
                success : function(doc) {
                    $.map(doc, function(b) 
						 {
                    	if(b.useraccount==test2){
                    	var str2 = b.sportdate
                    	if(str2!=null)var str1 = str2.substring(0, b.sportdate.indexOf("T"));
                        event.push({
                            id : "123",
                            title : "運動消耗:"+b.calorie+"大卡",
                            start : str1,
                            end : str1,
                       	 		});
                        	
                       	 }
                   		 });  
              			  
                    	calendarsleep();
               			 }
							
            });
			function calendarsleep(){
			jQuery.ajax({
                url : "/pages/calendarsleep",
                type : 'get',
                dataType : 'json',        
                success : function(doc) {
                    $.map(doc, function(b) 
						 {
                    	if(b.useraccount==test2){
                    	var str2 = b.sleepingdate
                    	if(str2!=null)var str1 = str2.substring(0, 10);
                        event.push({
                            id : "123",
                            title : "睡眠時數:"+b.sleepinghour	+"小時",
                            start : str1,
                            end : str1,
                       	 		});
                       	 }
                   		 });  
                    	calendardiet();	
               			 }
						
            });
			}
			function  calendardiet(){
			jQuery.ajax({
                url : "/pages/calendardiet",
                type : 'get',
                dataType : 'json',        
                success : function(doc) {
                    $.map(doc, function(b) 
						 {
                    	if(b.useraccount==test2){
                    	var str2 = b.dietdate
                    	if(str2!=null)var str1 = str2.substring(0, 10);
                    	
                    	b.dietcalories=parseInt(b.dietcalories);
                        event.push({
                            id : "123",
                            title : "飲食攝取:"+b.dietcalories	+"大卡",
                            start : str1,
                            end : str1,
                       	 		});
                       	 }
                   		 });   
                    	tttt();	
               			 }
					
            });
			}
		 	function  tttt() {
		    var calendarEl = document.getElementById('calendar');
		    var calendar = new FullCalendar.Calendar(calendarEl, {
		        initialView : 'dayGridMonth',
		        locale : 'zh-tw',
		        height : 700,
		        navLinks : true,
		        headerToolbar : {
		            left : 'prev,next today',
		            center : 'title',
		            right : 'dayGridMonth,timeGridWeek,timeGridDay'
		        },
		        events:event
		    });
		    calendar.render();
			};
		</script>
		<!-- 運動 -->
		<!-- <div class="container">
            <div id='calendar'>
            </div>
        </div> -->
		<!-- 睡眠 -->
		<!-- <div class="container">
            <div id='calendar'>
            </div>
        </div> -->
	</main>
	<!-- footer -->
	<footer class="navbar-fixed-bottom" style="background-color: #eee6d3;">
		<div class="p-4">
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
						<li class="mb-1"><a href="#!" style="color: #4f4f4f;">FAQs</a>
						</li>
						<li class="mb-1"><a href="#!" style="color: #4f4f4f;">How
								to buy</a></li>
					</ul>
				</div>

				<div class="col-lg-2 col-md-6 mb-4">
					<h5 class="mb-3 text-dark">I K Care</h5>
					<ul class="list-unstyled mb-0">
						<li class="mb-1"><a href="#!" style="color: #4f4f4f;">關於我們</a>
						</li>
						<li class="mb-1"><a href="#!" style="color: #4f4f4f;">隱私權政策</a>
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
</head>
<body>

</body>
</html>