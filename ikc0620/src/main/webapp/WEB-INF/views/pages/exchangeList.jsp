<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>I K care | 線上營養師</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="shortcut icon" type="image/x-icon" href="../img/logo.png" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- font-awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">

<!-- datatable -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<script type="text/javascript" charset="utf8"
	src="https:cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>


<style>

/* 導覽列 */
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
	height: 1400px;
}

a {
	text-decoration: none;
	color: rgba(7, 6, 3, 0.854);
}

a:hover {
	color: rgb(197, 179, 165)
}

/* 左側導覽列 */
.container-all {
	padding-top: 100px;
	display: flex;
	align-items: stretch;
}

#sidebar {
	width: 240px;
	height: 700px;
	background-color: rgb(224, 212, 195);
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
	color: rgb(238, 237, 235);
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

/* 份數面板 */
.align {
	padding-top: 70px;
	width: 100%;
	height: 400px;
	display: flex;
	flex-flow: row wrap;
	justify-content: space-around;
	align-items: space-around;
}

.card-container {
	-webkit-perspective: 1200;
	-moz-perspective: 1200;
	perspective: 1200;
}

.card-vertical, .card-horizontal {
	height: 350px;
	width: 300px;
	box-shadow: 0 6px 8px #bbb;
	-moz-transform-style: preserve-3d;
	-webkit-transform-style: preserve-3d;
	transform-style: preserve-3d;
	transition: all .4s ease;
}

.card-front, .card-back {
	color: #000000;
	height: 100%;
	width: 100%;
	position: absolute;
	background: #e7dbd8f5;
	-moz-backface-visibility: hidden;
	-webkit-backface-visibility: hidden;
	backface-visibility: hidden;
	-webkit-transform-style: preserve-3d;
	-moz-transform-style: preserve-3d;
	transform-style: preserve-3d;
}

.card-back {
	-moz-transform: rotateY(179.9deg);
	-webkit-transform: rotateY(179.9deg);
	transform: rotateY(179.9deg);
	background: #bea8a0;
}

.card-front-content {
	padding: 3em;
	box-sizing: border-box;
	text-align: center;
	line-height: 3em;
	font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
}

.card-back-content {
	padding: 2em;
	box-sizing: border-box;
	text-align: center;
	line-height: 2em;
	font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
}

.card-back-hr {
	-webkit-transform: rotateX(179.9deg);
	-moz-transform: rotateX(179.9deg);
	transform: rotateX(179.9deg);
}

.card-vertical:hover {
	-webkit-transform: rotateY(179.9deg);
	-moz-transform: rotateY(179.9deg);
	transform: rotateY(179.9deg);
}

.card-horizontal:hover {
	-webkit-transform: rotateX(179.9deg);
	-moz-transform: rotateX(179.9deg);
	transform: rotateX(179.9deg);
}

table tr td{
	border-bottom: 1px lightgray solid;
}
table th{
	font-size: 20px;
	border-bottom: 1px lightgray solid;
}
td:hover {
                background: #e7dbd8f5;
            }  
</style>

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
							
							<li><a class="dropdown-item"
								href='<c:url value="/pages/dietRecord"/>'>飲食分析</a></li>
							<li><a class="dropdown-item" href="exercise.html">運動分析</a></li>
							<li><a class="dropdown-item" href="sleep.html">睡眠分析</a></li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li><a class="dropdown-item" href="calendar.html">我的健康月曆</a></li>
						</ul></li>
					 <li class="nav-item"><a class="nav-link" href='<c:url value="/pages/TDEE" />'>BMR＆TDEE計算</a></li>
                 <li class="nav-item">
                    <a class="nav-link" href="./shop_all/ec_p1_main.html">商城</a>
                </li>
				</ul>
				<form class="d-flex">
					<!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button> -->
					<!-- <a type="button"><img class="search" src="search.png"></a> -->
					<a type="button"><img class="login" src="../img/login.png"></a>
					<!-- <a type="button"><img class="cart" src="cart.png"></a> -->
				</form>
			</div>
		</div>
	</nav>
	<main>
		<div class="container-all">

			<div class="container-left">
				<!-- 左側導覽 -->
				<nav id="sidebar">

					<!-- 展開or縮起來 -->
					<button type="button" id="collapse" class="btn collapse-btn">
						<i class="fa-solid fa-angle-left"></i>
					</button>

					<!-- list -->
					<ul class="list-unstyled">
						<p>I K care</p>
						<li><a href="/exchange.html">食物份量介紹<i
								class="fa-solid fa-house"></i></a></li>
						<li><a href="#sublist" data-bs-toggle="collapse"
							id="dropdown">六大類食物份量<i class="fa-solid fa-utensils"></i></a>

							<ul id="sublist" class="list-unstyled collapse">
								<li><a href="#" class="wholegrain"
									onclick="wholeExchange()"><input id="foodtype" type="text"
										value="全穀雜糧類" style="display: none;">全穀雜糧類</a></li>
								<li><a href="#" class="protein" onclick="wholeExchange()"><input
										id="foodtype" type="text" value="豆魚蛋肉類" style="display: none;">豆魚蛋肉類</a>
								</li>
								<li><a href="#" class="vegetable" onclick="wholeExchange()"><input
										id="foodtype" type="text" value="蔬菜類" style="display: none;">蔬菜類</a>
								</li>
								<li><a href="#" class="fruit" onclick="wholeExchange()"><input
										id="foodtype" type="text" value="水果類" style="display: none;">水果類</a>
								</li>
								<li><a href="#" class="milk" onclick="wholeExchange()"><input
										id="foodtype" type="text" value="乳品類" style="display: none;">乳品類</a>
								</li>
								<li><a href="#" class="oil" onclick="wholeExchange()"><input
										id="foodtype" type="text" value="油脂與堅果種子類"
										style="display: none;">油脂與堅果種子類</a></li>

							</ul></li>
					</ul>

				</nav>
			</div>

			<!-- <div class="container-middle"><img src="dailyExchange.png" style="height:300px;width:500px;padding-left:50px;"></div> -->

			<div id="exchangeMean" class="container-right">

				<!-- style="border-radius: 1rem; background-color:rgb(236, 241, 226);margin-left: 80px; padding-left:30px;padding-right:30px; height:150px;width:1100px;" -->
				<div class="container-fluid" style="display: inline-flex;"></div>
				<!-- <h6 style="margin:10px;">食物份量表</h6> -->

				<div>
					<img src="../img/dailyExchange.png"
						style="width: 600px; height: 350px;">
					<!-- <p>食物的份量是依據食物的營養素含量來做區分的。

                依據營養素的不同，大致可分為六大類食物: 全榖雜糧類、豆魚蛋肉類、蔬菜類、水果類、乳品類及油脂與堅果種子類。</p> -->

				</div>
				
				<div style="z-index:0; position:absolute; justify-content:center; height:500px; margin-top:50px;overflow:auto;">
				<table id="exchangeTable" class="exchangeList" style="border-spacing:20px; width: 1000px; height:0px;margin-left: 100px; margin-top:50px;background-color:rgb(242, 236, 226);">
				</table>
				</div>
			
				<div id="wholeProteinVegetable" class="align"
					style="padding-top: 40px;">
					<div class="card-container">
						<div class="card-vertical">
							<div class="card-front rounded">
								<article class="card-front-content">
									<h5>全穀雜糧類</h5>
									<img src="../img/rice.png" style="height: 150px; width: 150px;">


									<article>
							</div>
							<div class="card-back rounded">
								<article class="card-back-content">
									<p style="font-size: 20px;">
										一份含有： <br>15g碳水化合物、2g蛋白質，等於70大卡熱量。<br>相當於1/4碗的份量。
									</p>
									<img src="../img/riceExchange.png"
										style="width: 100px; height: 100px;">
									<article>
							</div>
						</div>
					</div>
					<div class="card-container">
						<div class="card-horizontal">
							<div class="card-front rounded">
								<article class="card-front-content">
									<h5>豆魚蛋肉類</h5>
									<img src="../img/chicken.png"
										style="height: 150px; width: 150px;">
									<article>
							</div>
							<div class="card-back card-back-hr rounded">
								<article class="card-back-content">
									<p style="font-size: 20px;">
										一份含有： <br>7g蛋白質、5g脂肪，等於75大卡熱量。<br>相當於三根手指厚度的份量。
									</p>
									<img src="../img/proteinExchange.png"
										style="width: 120px; height: 120px;">
									<article>
							</div>
						</div>
					</div>

					<div class="card-container">
						<div class="card-vertical">
							<div class="card-front rounded">
								<article class="card-front-content">
									<h5>蔬菜類</h5>
									<img src="../img/vegetable.png"
										style="height: 150px; width: 150px;">
									<article>
							</div>
							<div class="card-back rounded">
								<article class="card-back-content">
									<p style="font-size: 20px;">
										ㄧ份含有： <br>5g碳水化合物、1g蛋白質，等於25大卡熱量。<br>相當於半碗的份量。
									</p>
									<img src="../img/vegetableExchange.png"
										style="width: 100px; height: 100px;">
									<article>
							</div>
						</div>
					</div>

				</div>

				<div id="fruitMilkOil" class="align">
					<div class="card-container">
						<div class="card-vertical">
							<div class="card-front rounded">
								<article class="card-front-content">

									<h5>水果類</h5>
									<img src="../img/fruit.png"
										style="height: 150px; width: 150px;">

									<p></p>
									<article>
							</div>
							<div class="card-back rounded">
								<article class="card-back-content">
									<p style="font-size: 20px;">
										ㄧ份含有： <br>15g碳水化合物，等於60大卡熱量。<br>相當於一個拳頭的份量。
									</p>
									<img src="../img/fruitExchange.png"
										style="width: 100px; height: 100px;">
									<article>
							</div>
						</div>
					</div>
					<div class="card-container">
						<div class="card-horizontal">
							<div class="card-front rounded">
								<article class="card-front-content">
									<h5>乳品類</h5>
									<img src="../img/milk.png" style="height: 150px; width: 150px;">
									<article>
							</div>
							<div class="card-back card-back-hr rounded">
								<article class="card-back-content">
									<p style="font-size: 20px;">
										ㄧ份大約含有： <br>12g碳水化合物、8g蛋白質、8g脂肪，等於150大卡。<br>相當於一杯240毫升牛奶的份量
									</p>
									<img src="../img/milkExchange.png"
										style="width: 80px; height: 80px;">
									<article>
							</div>
						</div>
					</div>

					<div class="card-container">
						<div class="card-vertical">
							<div class="card-front rounded">
								<article class="card-front-content">

									<h6>油脂與堅果種子類</h6>
									<img src="../img/oilAndnut.png"
										style="height: 150px; width: 150px;">
									<article>
							</div>
							<div class="card-back rounded">
								<article class="card-back-content">
									<p style="font-size: 20px;">
										ㄧ份含有： <br>5g脂質，等於45大卡。<br>相當於一茶匙的份量
									</p>
									<img src="../img/teaspoon.png"
										style="width: 150px; height: 120px;">
									<article>
							</div>
						</div>
					</div>

				</div>
			</div>


		</div>



		<script>
			function wholeExchange() {

				document.getElementById("wholeProteinVegetable").innerHTML = "";
				document.getElementById("fruitMilkOil").innerHTML = "";
				//document.getElementById("wholeProteinProteinVegetable").innerHTML=`<h6>全穀根莖類份量表</h6>`;

				var foodtype = $('#foodtype').prop('value');
				//$('#foodtype').prop('value');
				console.log(foodtype);
				$.ajax({
					type : "get",
					url : "/pages/findExchangeList/" + foodtype
				}).then(
						function(e) {
							$("#exchangeTable").append(
									"<thead>" + "<tr>" + "<th>" + "食物種類"
											+ "</th>" + "<th>" + "食物名稱"
											+ "</th>" + "<th>" + "食物份量"
											+ "</th>" + "<th>" + "每份食物重量"
											+ "</th>" + "</tr>" + "</thead>"
											);
							console.log(e.length);
							for (i = 0; i < e.length; i++) {
								$("#exchangeTable").append(
										"<tbody>" + "<tr>" + "<td>"
												+ e[i].foodtype + "</td>"
												+ "<td>" + e[i].foodName
												+ "</td>" + "<td>"
												+ e[i].servingSize + "</td>"
												+ "<td>" + e[i].ediblePart
												+ "</td>" + "</tr>"
												+ "</tbody>"
								)
							}
						})		
			};
		</script>

		<script>
			/*  findfood.onclick = function(){
				/* let searchFoodName = $('#foodname').prop('value');
				$('#SearchedFood').empty(); */
			/* var foodtype = $('.wholegrain').prop('value');
			$.ajax({
				type:"get",
				url:"/pages/exchangeList/"+foodtype
			}).then(function(e) {
				$.each(e,function(a,b){
			        $('#wholeProteinProteinVegetable').append('<table><tr><th>食物種類</th><th>食物名稱</th><th>份量</th><th>可食重量</th></tr></table>');
				})
			})
			}; */

			/* btnAjaxGET.onclick = function () {
			    // 20. 透過 $.ajax() 取得資料並顯示到畫面上
			    $.ajax(myURL)
			    .done(function(apple){
			        //console.log(apple)
			        //跑回圈＋判斷
			        $.each(apple,function(a,b){
			            if(b.userId == 10){
			            //console.log(b);
			            $('#demo').append(`${b.userId} -${b.id} - ${b.title} - ${b.completed}`);
			                console.log(a);
			                //console.log(b);
			            if(b.completed == true){
			                $('#demo').append(`${b.userId} - ${b.completed} <br>`);
			                $('#demo2').append(`<h3 style="background-color:pink; padding: 15px;">
			                    <input type="checkbox" ${(b.completed)?"checked":" "}>
			                    <span>${b.id}-${b.title}</span>
			                    </h3>`);
			            }

			        }
			        })
			        //alert("success");
			    })
			    // .fail(function(){
			    //     alert("fail");
			    // })
			    .always(function(){
			        alert("complete");
			    })
			} */
		</script>

	</main>

	<!-- footer -->
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