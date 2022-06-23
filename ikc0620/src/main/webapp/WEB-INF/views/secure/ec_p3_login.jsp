<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="zh-Hant-TW">

<head>
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

<link rel="canonical" href="#" />
<!-- <link href="https://static.tpx.tw/sff/mouggan/css/main.css?v=20220518v1" rel="stylesheet"> -->
<link href="../css/style.css" rel="stylesheet">
<link
	href="https://static.tpx.tw/sff/mouggan/css/rwd-content.css?v=20220518v1"
	rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
<!-- <script>
        window.Email = '';
    </script> -->
<c:if test="${not empty error}">
	<script type="text/javascript">
		alert('註冊失敗，請仔細填寫身高欄位，並確保是數字');
	</script>
</c:if>
<c:if test="${not empty error2}">
	<script type="text/javascript">
		alert('註冊失敗，請仔細填寫體重欄位，並確保是數字');
	</script>
</c:if>
<c:if test="${not empty fail}">
	<script type="text/javascript">
		alert('註冊失敗，帳號已存在');
	</script>
</c:if>
<c:if test="${not empty errors}">
	<script type="text/javascript">
		alert('登入失敗，請確認帳號密碼是正確的，或沒有帳號請註冊帳號');
	</script>
</c:if>


</head>

<body id="page-shop" class="style-lang-en">

	<style>
.mycategory:hover {
	color: #876d5a;
	line-height: 24px;
}

.mycategory {
	line-height: 24px;
	font-weight: bold;
}

.nav:hover {
	color: #876d5a;
	text-decoration: lemonchiffon wavy underline;
}

#mysubtitle {
	font-weight: bold;
}

#mysubtitle:hover {
	color: #876d5a;
}
</style>

	<!-- header -->
	<header class="header" id="one">
		<div
			class="container-fluid align-items-center justify-content-center position-relative">
			<div class="header-inner">
				<div class="logo">
					<a href="<c:url value="/" />"><img class="img-fluid"
						style="width: 150px;" src="../img/logo2.png" alt=""></a>
				</div>

				<!-- icon-s-logo小logo -->
				<div class="navbar-nav">
					<ul class="d-md-inline-block d-none align-top">
						<li class="nav-item s-logo ml-0"><a href="/en-us/"><i
								class="icon-s-logo"></i></a></li>
					</ul>

					<!-- header右邊 -->
					<ul class="main-list member-nav">
						<li class="nav-item search-item" style="width: auto;"><a
							class="btn-global-search global-search d-md-inline-block d-none"
							href=""> <i class="icon-search hide-search"></i>
						</a> <a
							class="btn-global-search-mobile hide-search global-search d-inline-block d-md-none"
							href=""> <i class="icon-search"></i>
						</a> <span class="close-global-search-m"> <a
								class="close-global-search" href=""> <i class="icon-close"></i>
							</a>
						</span>
							<form class="search-form align-bottom" id="form-global-search"
								action="">
								<i class="icon-search2"></i> <input
									class="input-global-search form-control border-0 d-inline-block mx-2"
									id="search-input" type="text" placeholder="SEARCH"
									style="font-size: 18px;"> <a
									class="close-global-search" href=""> <i class="icon-close"></i>
								</a>
							</form></li>
						<!-- <li class="nav-item d-md-inline-block d-none hide-search">
                            <a href="/ec_p3_login.html">
                                <div class="text-en" style="margin-left: -18px;">Login</div>
                                <i class="icon-member"></i>
                            </a>
                        </li> -->
                        <!-- FB的SCRIPT -->
							
							<script>
								  //初始化
								  window.fbAsyncInit = function() {
								    FB.init({
								      appId      : '564008045182710',
								      cookie     : true,
								      xfbml      : true,
								      version    : 'v14.0'
								    });
								      
								    FB.AppEvents.logPageView();   
								      
								  };
								

								  $(function() {
								    //點擊登入按鈕
								    $("#FBlogin").click(function() {
								      //檢查臉書登入狀態
								      FB.getLoginStatus(function(response) {
								        //如果已經有授權過應用程式
								        if (response.authResponse) {
								          //呼叫FB.api()取得使用者資料
								          FB.api('/me',{fields: 'id,name,email'}, function (response) {
								        	  console.log(response);
								        	  var data ={
								        			"id":response.id,
								        			"name":response.name,
								        			"email":response.email
								        	  }
							        		  var jsondata = JSON.stringify(data);
								        	  $.ajax({
								        		  url:"/en-us/fblogin",
								        		  type:"POST",
								        		  data:jsondata,
								        		  contentType:"application/json;charset=utf-8",
								        		  success:function(e){
								        			  if(e=="success"){
								        				  alert("FB登入成功");
								        				  window.location.assign("/");
								        			  }else{
								        				  $.ajax({
								        					  url:"/en-us/fbsignup",
											        		  type:"POST",
											        		  data:jsondata,
											        		  contentType:"application/json;charset=utf-8",
											        		  success:function(s){
											        			  if(s!="success"){
											        				  alert("連線異常，請稍後再試");
											        			  }else{
											        				  alert("FB登入，成功註冊");
											        				  window.location.assign("/");
											        			  }
											        		  }
								        				  })
								        			  }
								        		  }
								        	  })
								              //這邊就可以判斷取得資料跟網站使用者資料是否一致
								          });
								        //沒授權過應用程式
								        } else {
								          //呼叫FB.login()請求使用者授權
								          FB.login(function (response) {
								            if (response.authResponse) {
								              FB.api('/me',{fields: 'id,name,email'}, function (response) {
								            	  var data ={
										        			"id":response.id,
										        			"name":response.name,
										        			"email":response.email
										        	  }
									        		  var jsondata = JSON.stringify(data);
										        	  $.ajax({
										        		  url:"/en-us/fblogin",
										        		  type:"POST",
										        		  data:jsondata,
										        		  contentType:"application/json;charset=utf-8",
										        		  success:function(e){
										        			  if(e=="success"){
										        				  alert("FB登入成功");
										        				  window.location.assign("/");
										        			  }else{
										        				  $.ajax({
										        					  url:"/en-us/fbsignup",
													        		  type:"POST",
													        		  data:jsondata,
													        		  contentType:"application/json;charset=utf-8",
													        		  success:function(s){
													        			  if(s!="success"){
													        				  alert("連線異常，請稍後再試");
													        			  }else{
													        				  alert("FB登入，成功註冊");
													        				  window.location.assign("/");
													        			  }
													        		  }
										        				  })
										        			  }
										        		  }
										        	  })
								                //這邊就可以判斷取得資料跟網站使用者資料是否一致
								              });
								            }
								          //FB.login()預設只會回傳基本的授權資料
								          //如果想取得額外的授權資料需要另外設定在scope參數裡面
								          //可以設定的授權資料可以參考官方文件          
								          }, { scope: 'email,user_likes' });
								        }
								      });
								    });
								  });
								  $(function() {
									$('#FBlogout').click(function() {
										FB.getLoginStatus(function(response) {
											FB.logout(function(response){
												document.location.reload();
											});
										});
									});
								});
								</script>	
						<!-- 右上會員 -->
						<li class="nav-item hide-search"><a href="#">
								<div class="text-en" style="margin-left: -28px;">Member</div> <i
								class="icon-member"></i>
						</a>
							<div class="sub-list-block down-left sub-member-list"
								style="left: -50px;">
								<!-- 登入前版本 -->
								<c:if test="${empty membersbean}">
									<ol class="sub-list p-4" style="height: 110px;">
										<li class="my-3">
											<div style="padding: 10px 30px">
												<a class="btn btn-outline-primary w-100"
													style="font-size: 16px;"
													href="<c:url value="/secure/ec_p3_login" />" title="登入">登入</a>
											</div>
										</li>
									</ol>
								</c:if>
								<!-- 登入後版本 -->
								<c:if test="${not empty membersbean}">
									<ol class="sub-list p-4" style="height: 180px;">
										<li><a class="menu-collapse with-plus collapsed"
											href="/ec_p9_member.html" title="會員中心"
											style="text-align: center; font-size: 16px;">會員中心</a></li>
										<li><a class="menu-collapse with-plus collapsed"
											href="/ec_p10_history.html" title="訂單查詢"
											style="text-align: center; font-size: 16px;">訂單查詢</a></li>
										<li class="my-3">
											<div style="padding: 10px 30px">
												<a class="btn btn-outline-primary w-100"
													style="font-size: 16px;"
													href="<c:url value="/en-us/logout" />" title="登出">登出</a>
											</div>
										</li>
									</ol>
								</c:if>
							</div></li>

						<!-- 購物車邊欄 -->

						<li class="nav-item hide-search" id="app-mini-cart"><a
							class="open-sidebar" href="#" data-sidebar="#cart-menu"
							data-mask="#cart-mask" ref="cartdot"
							:class="{'show': count !== 0 &amp;&amp; dataisload}">
								<div class="text-en" style="margin-left: -15px;">Cart</div> <i
								class="icon-cart"></i> <!-- <span v-text=" count "></span> --> <span id="shoppingcart_length"></span>
								<!-- 範例demo -->
						</a>
							<div class="sidebar h5" id="cart-menu">
								<div class="inner-block p-5">
									<a class="close-sidebar float-right" data-sidebar="#cart-menu"
										data-mask="#cart-mask" data-btn="" href="#"><i
										class="icon-close" style="width: 18px; height: 18px;"></i></a>
									<div class="clearfix"></div>
									<div class="shopping-cart-list my-5">
									
									<!-- JSShoppingCart -->
									<script type="text/javascript">
										function temp1(){
											let templo = [
												{
													"ProductID":5,
													"ProductName":"萊萃美葉黃素複方液態軟膠囊30粒",
													"ProductImg":"https://ppc.easyopen.com.tw/Files/market/100883/image/MAI_161058121_X700X700.png",
													"StandardCost":650,
													"ProductDescribe":"高單位魚油幫助調節生理機能，促進代謝,含必須脂肪酸EPA及深海魚油可幫助您維護循環健康,並調節生理機能，讓您活力充沛,適合經常外食，飲食偏高油脂、低蔬果者",
													"OrderNumber":1
												},
												{
													"ProductID":4,
													"ProductName":"萊萃美超級B群加C錠100錠",
													"ProductImg":"https://ppc.easyopen.com.tw/Files/market/100881/image/MAI_143019840_X700X700.jpg",
													"StandardCost":790,
													"ProductDescribe":"多種B群完整組合有助於維持能量正常代謝。提升工作活力為每天的健康活力加分。添加高單位維生素C能促進膠原形成幫助鐵吸收具抗氧化作用。",
													"OrderNumber":2
												}
											];
											let temptolocal = JSON.stringify(templo);
											localStorage.removeItem('Shoppingcart');
											localStorage.setItem('Shoppingcart', temptolocal);
											getlocal();
											
										}
										function getlocal(){
											$('#shoppingcart').innerHTML="";
											let Shoppingcart = localStorage.getItem('Shoppingcart');
											if(Shoppingcart==undefined){
												$('#shoppingcart_length').append("0");
											}else{
												let JShoppingcart = JSON.parse(Shoppingcart);
												let cartLength = JShoppingcart.length;
												$('#shoppingcart_length').append(cartLength);
												$.each(JShoppingcart,function(a,b){
													$('#shoppingcart').append(`<li index="0" class="text-left mb-3"><a href="/ec_p2_product.html" class="row m-0"><div class="col-4 cart-img p-0 pr-4"><div class="inner-wrap" style="position: absolute; top: 10px;"><img src="`+b.ProductImg+`" alt="" class="img-fluid"></div></div><div class="col-8 p-0"><div href="/ec_p2_product.html"class="item-name d-block text-truncate mb-4"><span style="font-size: 14px; white-space: normal;">`+b.ProductName+`</span></div><div><span>單價</span><span class="item-size">&ensp;`+b.StandardCost+`元</span></div><div><span>數量 </span><span>`+b.OrderNumber+`</span></div></div></a></li>`);
												});
												}
										}
										$(document).ready(function(){
											getlocal();
										})
									</script>
									
										<ul id="shoppingcart">
<!-- 無商品版
												<li class="text-left mb-3" v-if="count !== 0 &amp;&amp; dataisload"
                                                v-for="(item, index) in datas" index="index"
                                                key="item.CustomMarketID">
                                                <a class="row m-0" href="item.Url">
                                                    <div class="col-4 cart-img p-0 pr-4">
                                                        <div class="inner-wrap item-img-box">
                                                            <new-image url="item.Cover" size="'_w120_h160'"
                                                                name="item.Name"></new-image>
                                                        </div>
                                                    </div>
                                                    <div class="col-8 p-0">
                                                        <div class="item-name d-block text-truncate mb-4"
                                                            href="item.Url">{{item.Name}}</div>
                                                        <div><span>尺寸 </span><span
                                                                class="item-size">{{item.Size}}</span></div>
                                                        <div><span>顏色 </span><span
                                                                class="item-color">{{item.ColorName}}</span></div>
                                                        <div><span>數量 </span><span>{{item.Count}}</span></div>
                                                    </div>
                                                </a>
												</li> 

-->
<!-- demo版 
											<li index="0" class="text-left mb-3"><a
												href="/ec_p2_product.html" class="row m-0">
													<div class="col-4 cart-img p-0 pr-4">
														<div class="inner-wrap"
															style="position: absolute; top: 10px;">
															<img
																src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cgn/cgn00932/l/102.jpg"
																alt="" class="img-fluid">
														</div>
													</div>
													<div class="col-8 p-0">
														<div href="/ec_p2_product.html"
															class="item-name d-block text-truncate mb-4">
															<span style="font-size: 14px; white-space: normal;">
																California Gold Nutrition, 金 C 粉，維生素 C，1,000 毫克，240
																粒素食膠囊</span>
														</div>
														<div>
															<span>尺寸 </span><span class="item-size">F</span>
														</div>
														<div>
															<span>數量 </span><span>1</span>
														</div>
													</div>
											</a></li>
-->
										</ul>
									</div>
									<a class="btn-go-cart btn btn-outline-primary btn-lg w-100"
										href="/ec_p7_cart.html" style="font-size: 14px;"></a>
								</div>
							</div></li>
						<li class="nav-item d-md-none d-inline-block hide-search"><a
							class="open-sidebar btn-burger" href="#"
							data-sidebar="#burger-menu" data-mask="#burger-mask"> <span></span>
						</a></li>
					</ul>



					<!-- header欄位 -->
					<ul class="main-list d-md-inline-block d-none hide-search">
						<li class="nav-item nav-change"><a class="nav"
							href="/ec_p1_main.html"
							style="font-weight: bold; font-size: 18px; font-family: 'Courier New', Courier, monospace;">最新</a>
						</li>
						<li class="nav-item nav-change"><a class="nav"
							href="/ec_p1_main.html"
							style="font-weight: bold; font-size: 18px; font-family: 'Courier New', Courier, monospace;">熱賣商品</a>
						</li>
						<li class="nav-item nav-change"><a class="nav"
							href="/ec_p1_main.html"
							style="font-weight: bold; font-size: 18px; font-family: 'Courier New', Courier, monospace;">全部商品</a>
							<div class="sub-list-block down-left">
								<ol class="sub-list"
									style="font-size: 18px; font-family: 'Courier New', Courier, monospace; width: 180px; height: 335px;">
									<li><a id="mysubtitle" href="#">消化健康</a></li>
									<li><a id="mysubtitle" href="#">能量精力</a></li>
									<li><a id="mysubtitle" href="#">眼與視覺健康</a></li>
									<li><a id="mysubtitle" href="#">免疫健康</a></li>
									<li><a id="mysubtitle" href="#">健康睡眠</a></li>
									<li><a id="mysubtitle" href="#">減重塑形</a></li>
									<li><a id="mysubtitle" href="#">骨與關節健康</a></li>
								</ol>
							</div></li>
						<li class="nav-item nav-change"><a class="nav"
							href='<c:url value="/"/>'
							style="font-weight: bold; font-size: 18px; font-family: 'Courier New', Courier, monospace;">線上營養師</a>
						</li>
					</ul>

				</div>
			</div>
		</div>
	</header>

	<!-- RWD網頁縮小後的選單 -->

	<div class="sidebar h4" id="burger-menu">
		<div class="inner-block p-5">
			<ul class="accordion" id="accordionMobileMenu"
				style="font-size: 18px;">
				<li class="mb-4"><a href="/ec_p1_main.html">最新</a></li>
				<li class="mb-4"><a href="/ec_p1_main.html">熱賣商品</a></li>

				<!-- 縮小後的邊欄event -->
				<li class="mb-4"><a class="menu-collapse with-plus collapsed"
					href="#" data-toggle="collapse" data-target="#collapse0"
					aria-expanded="true">優惠活動</a>
					<div class="collapse menu-collapse-block" id="collapse0"
						data-parent="#accordionMobileMenu">
						<ol class="p-4">
							<li class="py-2"><a href="#"> 歡慶開幕 單件免運</a></li>

						</ol>
					</div></li>

				<!-- 縮小後的邊欄category -->
				<li class="mb-4"><a class="menu-collapse with-plus collapsed"
					href="/ec_p1_main.html" data-toggle="collapse"
					data-target="#collapse1" aria-expanded="true">商品分類</a>
					<div class="collapse menu-collapse-block" id="collapse1"
						data-parent="#accordionMobileMenu">
						<ol class="p-4">
							<li class="py-2"><a href="/ec_p1_main.html">全部商品</a></li>
							<li class="py-2"><a href="#">消化健康</a></li>
							<li class="py-2"><a href="#">能量精力</a></li>
							<li class="py-2"><a href="#">眼與視覺健康</a></li>
							<li class="py-2"><a href="#">免疫健康</a></li>
							<li class="py-2"><a href="#">健康睡眠</a></li>
							<li class="py-2"><a href="#">減重塑形</a></li>
							<li class="py-2"><a href="#">骨與關節健康</a></li>
						</ol>
					</div></li>

				<li class="mb-4"><a href="<c:url value="/" />">線上營養師</a></li>
				
			</ul>

			<!-- 縮小後的邊欄 會員功能 -->
			<ul class="member-menu w-75" style="font-size: 18px;">
				<!-- 登入前版本 -->
				<!-- <li class="mb-4"><a class="btn btn-outline-primary btn-lg btn-block" href="/ec_p3_login.html"
                        style="font-size: 18px;">登入</a></li> -->

				<!-- 登入後版本 -->
				<li class="mb-4"><a class="menu-collapse with-plus collapsed"
					href="/ec_p9_member.html">會員中心</a></li>
				<li class="mb-4"><a class="menu-collapse with-plus collapsed"
					href="/ec_p10_history.html">訂單查詢</a></li>
				<li class="mb-4"><a
					class="btn btn-outline-primary btn-lg btn-block"
					href="/ec_p1_main.html" style="font-size: 18px;">登出</a></li>
			</ul>
		</div>
	</div>

	<!-- 搜尋功能 -->
	<div class="mask close-sidebar" id="burger-mask"
		data-sidebar="#burger-menu" data-mask="#burger-mask"
		data-btn=".open-sidebar"></div>
	<div class="mobile-search-block" id="search-popup">
		<div class="container-fluid">
			<form class="search-form mt-3" action="">
				<input class="input-global-search form-control with-search mb-3"
					id="search-input-m" type="text" placeholder="請輸入關鍵字">
				<button class="btn btn-primary btn-block btn-lg"
					id="btn-global-search-m">搜尋</button>
			</form>
		</div>
	</div>


	<!-- 中間頁面 -->

	<div id="main-wrap" style="font-size: 16px;">
		<div class="container-fluid">
			<div class="content-block content-xs">
				<form class="show-block show-register hide" id=""
					action='<c:url value="/en-us/signup"/>' method="post">
					<input name="__RequestVerificationToken" type="hidden"
						value="kQL5ftH6SdwnAH0nN0pYaGCf-BMmTK2SRFzZk5gYux5OYzJ_Oo7O_pGDNK3zgz5eIXKZO--lBLqMepmA44TzI9lH5HJQ7N-8cN5Odtc6jK41" />
					<div class="register-switch page-title title text-center">
						<a
							class="btn-register-switch btn-switch-block d-inline-block mx-4 h1"
							href="#" data-block=".show-login" data-name=".show-block">Sign
							In </a> <a
							class="btn-register-switch active btn-switch-block d-inline-block mx-4 h1"
							href="#" data-block=".show-register" data-name=".show-block">New
							customer</a>
					</div>
					<div class="form-g">
						<input class="form-control" type="text" placeholder="帳號/信箱"
							name="useraccount" required style="font-size: 16px;">
					</div>
					<div class="form-g">
						<input class="form-control" id="password-signup" type="password"
							placeholder="密碼(6碼至15碼英數字)" name="userpassword"
							autocomplete="off" required style="font-size: 16px;">
					</div>
					<div class="form-g">
						<input class="form-control" id="check-ps" type="password"
							name="checkpassword" placeholder="再次輸入密碼" autocomplete="off"
							required style="font-size: 16px;">
					</div>
					<div class="form-g">
						<input class="form-control" type="text" placeholder="姓名"
							name="membername" required style="font-size: 16px;">
					</div>
					<div class="row">
						<div class="col">
							<div class="form-g">
								<div class="form-g">
									<c:if test="${not empty errors.birthday }">
										<input class="form-control" type="date"
											placeholder="生日（YYYY-MM-DD）" name="birthday" required
											style="font-size: 16px;">
									</c:if>
									<c:if test="${empty errors.birthday }">
										<input class="form-control" type="date"
											placeholder="生日 (YYYY-MM-DD)" name="birthday" required
											style="font-size: 16px;">
									</c:if>
								</div>
							</div>
						</div>
						<div class="col">
							<select name="gender" class="form-control custom-ui"
								style="font-size: 16px; font-family: 'Courier New', Courier, monospace;">
								<option value="男" selected="selected">男</option>
								<option value="女">女</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="form-g">
								<div class="form-g">
									<input class="form-control" type="text" placeholder="身高"
										name="memberheight" required style="font-size: 18px;">
								</div>
							</div>
						</div>
						<div class="col">
							<div class="form-g">
								<div class="form-g">
									<input class="form-control" type="text" placeholder="體重"
										name="memberweight" required style="font-size: 18px;">
								</div>
							</div>
						</div>
					</div>

					<div class="form-g">
						<input type="text" name="telephone" placeholder="電話"
							class="form-control valid" aria-invalid="false"
							style="font-size: 16px; font-family: 'Courier New', Courier, monospace;">
					</div>
					<div class="form-g">
						<input type="text" name="cellphone" placeholder="手機"
							class="form-control valid" aria-invalid="false"
							style="font-size: 16px; font-family: 'Courier New', Courier, monospace;">
					</div>

					<div class="form-g">
						<select name="area" aria-invalid="false" placeholder=""
							class="form-control custom-ui"
							style="font-size: 16px; font-family: 'Courier New', Courier, monospace;">
							<option value="臺北市">臺北市</option>
							<option value="基隆市">基隆市</option>
							<option value="新北市">新北市</option>
							<option value="宜蘭縣">宜蘭縣</option>
							<option value="新竹市">新竹市</option>
							<option value="新竹縣">新竹縣</option>
							<option value="桃園市">桃園市</option>
							<option value="苗栗縣">苗栗縣</option>
							<option value="臺中市">臺中市</option>
							<option value="彰化縣">彰化縣</option>
							<option value="南投縣">南投縣</option>
							<option value="嘉義市">嘉義市</option>
							<option value="嘉義縣">嘉義縣</option>
							<option value="雲林縣">雲林縣</option>
							<option value="臺南市">臺南市</option>
							<option value="高雄市">高雄市</option>
							<option value="澎湖縣">澎湖縣</option>
							<option value="屏東縣">屏東縣</option>
							<option value="臺東縣">臺東縣</option>
							<option value="花蓮縣">花蓮縣</option>
							<option value="金門縣">金門縣</option>
							<option value="連江縣">連江縣</option>
						</select>
					</div>
					<div class="form-g">
						<input type="text" name="address" placeholder="地址"
							required="required" class="form-control valid"
							aria-invalid="false"
							style="font-size: 16px; font-family: 'Courier New', Courier, monospace;">
					</div>

					<div class="my-5">
						<div class="controls-item custom-ui text-center row">

							<div class="col-md-12 p-0 col-12 custom-ui">
								<input class="checkbox" id="agree-privacy" name="agree-privacy"
									type="checkbox"> <label for="agree-privacy"><span
									class="d-inline-block align-middle"><a
										class="font-underline margin-h-5 text-underline"
										href="/ec_p5_policy.html">我已閱讀並同意會員約定條款說明</a></span></label>
							</div>
						</div>
					</div>
					<input class="btn btn-outline-primary btn-block btn-lg"
						type="submit" value="註冊" style="font-size: 16px;"><br>
					<br> <br>
				</form>
				<form class="show-block show-login" id="form-user-login"
					action='<c:url value="/en-us/login"/>' method="post">
					<input name="__RequestVerificationToken" type="hidden"
						value="kQL5ftH6SdwnAH0nN0pYaGCf-BMmTK2SRFzZk5gYux5OYzJ_Oo7O_pGDNK3zgz5eIXKZO--lBLqMepmA44TzI9lH5HJQ7N-8cN5Odtc6jK41" />
					<div class="register-switch page-title title text-center mb-5">
						<a
							class="btn-register-switch btn-switch-block active d-inline-block mx-4 h1"
							href="#" data-block=".show-login" data-name=".show-block">Sign
							In </a> <a
							class="btn-register-switch btn-switch-block d-inline-block mx-4 h1"
							href="#" data-block=".show-register" data-name=".show-block">New
							customer</a>
					</div>
					<div class="form-g">
						<input class="form-control" id="user-email" type="email"
							placeholder="會員帳號（E-mail）" value="" name="account" required
							style="font-size: 16px;">
					</div>
					<div class="form-g">
						<input class="form-control" id="user-password" type="password"
							placeholder="密碼" name="password" autocomplete="off" required
							style="font-size: 16px;">
					</div>
					<div class="my-5">
						<input
							class="btn btn-outline-primary btn-block show-block show-login btn-lg"
							type="submit" value="會員登入" style="font-size: 16px;">
					</div>

						<div class="form-g">
						<div class="float-left">
						<i class="icon-fb" style="width: 30px; height: 30px" id="FBlogin"></i>
						</div>
						<div class="float-right">
							<a class="btn-switch-block" style="font-size: 16px;" id="FBlogout">FB登出</a>
						</div>
						<div class="clearfix"></div>
<!--  忘記密碼段，未製作
						<div class="float-right">
							<a class="btn-switch-block" href="#" data-block=".show-forgot"
								data-name=".show-block" style="font-size: 16px;">忘記密碼</a>
						</div>
						<div class="clearfix"></div>
-->
					</div>
				</form>
				<form class="show-block show-forgot hide" id="form-user-forgot"
					action="" method="post">
					<div class="page-title h1 text-center pb-5 font-weight-bold">Forgot
						Password</div>
					<div class="form-g">
						<input class="form-control" id="user-mail" type="email"
							placeholder="請輸入您的會員帳號（E-mail），以接收密碼" name="account" required
							style="font-size: 16px;">
					</div>

					<div class="my-5">
						<input
							class="hide btn btn-outline-primary btn-block show-block show-forgot btn-lg"
							type="submit" value="送出" style="display: none; font-size: 16px;">
					</div>

					<div class="py-4">
						<a
							class="btn-register-switch active btn-switch-block d-inline-block"
							href="/ec_p3_login.html" data-block=".show-login"
							data-name=".show-block">已經是會員了嗎？點這裡登入！</a>
					</div>
				</form>

			</div>
		</div>
	</div>



	<!-- ikcare footer -->
	<footer style="background-color: #eee6d3;">
		<div class="container p-4">
			<div class="row">
				<div class="col-lg-2 col-md-12 mb-4"></div>

				<div class="col-lg-2 col-md-6 mb-4">
					<h5 class="mb-3"
						style="color: #9A6852; font-weight: bold; font-size: 16px; font-family: 'Courier New', Courier, monospace;">購物資訊</h5>

					<ul class="list-unstyled mb-0" style="font-size: 16px;">
					<!-- 購物車佔用 -->
						<li class="mb-1"><a href='<c:url value="/pages/FAQ" />' >FAQs</a></li>
					</ul>
				</div>

				<div class="col-lg-2 col-md-6 mb-4">
					<h5 class="mb-3"
						style="color: #9A6852; font-weight: bold; font-size: 16px;">I
						K Care</h5>
					<ul class="list-unstyled mb-0"
						style="font-weight: bold; font-size: 16px; font-family: 'Courier New', Courier, monospace;">
						<li class="mb-1"><a href='<c:url value="/pages/aboutus" />'>關於我們</a></li>
						<li class="mb-1"><a href='<c:url value="/pages/policy" />'>隱私權政策</a></li>
					</ul>
				</div>

				<div class="col-lg-2 col-md-6 mb-4">
					<h5 class="mb-3"
						style="color: #9A6852; font-weight: bold; font-size: 16px; font-family: 'Courier New', Courier, monospace;">
						相關網站</h5>
					<ul class="list-unstyled mb-0"
						style="font-weight: bold; font-size: 16px; font-family: 'Courier New', Courier, monospace;">
						<li class="mb-1"><a href="#!" onclick="temp1()">國民飲食指標</a></li>
						<li class="mb-1"><a href="#!">營養小知識</a></li>
					</ul>
				</div>

				<div class="col-lg-3 col-md-6 mb-4">
					<h5 class="mb-3"
						style="color: #9A6852; font-weight: bold; font-size: 16px; font-family: 'Courier New', Courier, monospace;">
						聯絡我們</h5>
					<ul class="list-unstyled mb-0" style="font-size: 16px;">
						<li class="mb-1"><a href="#!">service@ikcare.com</a></li>
						<li class="mb-1"><a href="#!"><img
								src="../img/facebook_logos_PNG19753.png" type="button"
								width="30px"></a> <!-- </li>
                        <li class="mb-1"> --> <a href="#!"><img
								src="../img/instagram.png" type="button" width="30px"></a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="text-center p-3"
			style="background-color: rgba(0, 0, 0, 0.2);">
			<span style="font-size: 16px;">© 2022 Copyright: </span> <a
				class="text-dark" href="IKcare2.html" style="font-size: 16px;">ikcare.com</a>
		</div>
		<!-- Copyright -->
	</footer>


	<!-- script -->

	<script data-cfasync="false"
		src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
	<script type=text/javascript
		src="https://static.tpx.tw/sff/mouggan/static/libs/js/vendors.js?V=20220512v1"></script>

	<!-- <script type="text/javascript" src="https://static.tpx.tw/sff/mouggan/js/register.js?V=20220512v1"></script> -->
	<script type="text/javascript" src="../js/lab_p3.js"></script>


</body>

</html>