<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!DOCTYPE html>
    <html lang="zh-Hant-TW">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>IKcare | 線上營養師</title>
        <meta name="referrer" content="no-referrer-when-downgrade">
        <meta name="description" property="og:description" itemprop="description" content="紀錄飲食，線上營養諮詢。" />
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>

    <link rel="shortcut icon" type="image/x-icon" href="../img/logo.png" />
    
     <!-- icon css => Font-awesome -->
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
    <link href="carousel.css" rel="stylesheet">
   
    

    <style>
        body{background-color: #f4f3efe8;
        }
        p{
            font-size:20px;
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
        #calory{margin-left: 200px;margin-top: 50px; margin-bottom: 50px;}
        #exercise{margin-left: 700px;margin-top: 50px;  margin-bottom: 50px;}
        #sleep{margin-left: 200px;margin-top: 50px;  margin-bottom: 50px;}

        a{text-decoration: none; color: rgba(7, 6, 3, 0.854);}
        a:hover{color:rgb(197, 179, 165)}

        .IKcare{color:rgb(145, 32, 32);}

        main{height: 1800px;}
        .col-md-7{padding-right: 200px;}
        .welcomepicture{width:400px; height:400px;margin-left: 100px;margin-top: 50px;}

        /* 面板CSS */
        h1 {
        text-align: center;
        font-size: 2em;
        color: rgb(86, 81, 81);
        font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
    }

    /* img {
        width: 100%;
        height: 100%;
        margin-top: 10px;
        border-radius: .12em;
        box-shadow: 0 0 0 2px #fff;
    } */

    .align {
        padding-top: 100px;
        width: 100%;
        height: 500px;
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

    .card-vertical,
    .card-horizontal {
        height: 500px;
        width: 400px;
        box-shadow: 0 6px 8px #bbb;
        -moz-transform-style: preserve-3d;
        -webkit-transform-style: preserve-3d;
        transform-style: preserve-3d;

        transition: all .4s ease;
    }

    .card-front,
    .card-back {
        color: #000000;
        height: 100%;
        width: 100%;
        position: absolute;
        background: #d6d7bcef;
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
        background: #a38a81;
    }

    .card-front-content,
    .card-back-content {
        padding: 3em;
        box-sizing: border-box;
        text-align: center;
        line-height: 3em;
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

    #bmi{font-size: 1px;line-height: 1em;};
    #finger{width:30px;height: 15px;};

   

    </style>


<!-- 註冊跳轉 -->
<c:if test="${not empty success}">
	<script type="text/javascript">
		alert('註冊成功，將跳轉首頁');
	</script>
</c:if>
<c:if test="${not empty Lsuccess}">
	<script type="text/javascript">
		alert('登入成功，將跳轉首頁');
	</script>
</c:if>

</head>

<body>
    <!-- header導覽列 -->
     <nav id="navbar" class="navbar navbar-expand-lg navbar-light bg-light fixed-top" style="font-size:20px;">   
        <!-- navbar justify-content-center  -->
         <div class="container-fluid">
        <img class="logo" src="../img/logo2.png" height="40">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                <li class="nav-item mx-auto" style="width: 400px">
                    <a class="nav-link active" aria-current="page" href="/IKcare2.html"></a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href='<c:url value="/"/>'>首頁</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">
                        健康小幫手
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        
                        <li><a class="dropdown-item" href='<c:url value="/pages/dietRecord" />'>飲食分析</a></li>
                        <li><a class="dropdown-item" href='<c:url value="/pages/bodyinformationselect" />'>運動分析</a></li>
                        <li><a class="dropdown-item" href='<c:url value="/pages/sleeping" />'>睡眠分析</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href='<c:url value="/pages/calendar" />'>我的健康月曆</a></li>
                    </ul>

                </li>
                 <li class="nav-item"><a class="nav-link" href='<c:url value="/pages/TDEE" />'>BMR＆TDEE計算</a></li>
                 <li class="nav-item">
                    <a class="nav-link" href='<c:url value="/pages/shopmain" />'>商城</a>
                </li>
            </ul>
            <!-- <form class="d-flex"> -->
                <!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button> -->
           
                <a type="button"><img class="search" src="../img/search.png"></a>
                <a href="<c:url value="/secure/ec_p3_login" />" type="button"><img class="login" src="../img/login.png"></i></a>
            </form>
        </div>
        </div>
    </nav>    

    <!-- 輪播 -->
    <main>
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="../img/mainpage3.png" class="d-block w-100">
                    <!-- <img src="mainpage1.png" class="d-block w-100"> -->
                </div>
                <div class="carousel-item">
                    <img src="../img/goodsnack2.png" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="../img/bodyfit.png" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="../img/prebiotic.png" class="d-block w-100">
                </div>
                <div class="carousel-item">
                    <img src="../img/sleep.png" class="d-block w-100">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>

        <!-- 網頁內容 -->

        <!-- 飲食 運動 睡眠 面板 -->
        <section class="welcome-area section-padding2">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-5 align-self-center">
                        <div class="welcome-img">
                            <img src="../img/welcome.png" class="welcomepicture" alt="welcome">
                        </div>
                    </div>
                    <div class="col-md-7 align-self-center">
                        <div class="welcome-text mt-5 mt-md-0">
                            <h3 ><span class="style-change">welcome</span> to <span class="IKcare">I K care</span></h3>
                            <h5 class="pt-3" style="color:#9A6852;">IKCare線上營養師提供你飲食、運動、睡眠三大營養分析，</h5><br>
                            <h5 style="color:#9A6852;">並將健康分析紀錄至月曆上，讓你能方便查詢！</h5><br>
                            <h5 style="color:#9A6852;">同時結合豐富保健食品商城，讓你缺乏營養素能至商城即時購買相關產品！</h5>
                        </div>
                    </div>
                </div>
            </div>
        </section>

    <div class="align">
        <div class="card-container">
            <div class="card-vertical">
                <div class="card-front rounded">
                    <article class="card-front-content">
                        <br>
                        <h1>飲食分析 </h1>
                        <br>
                        <img src="../img/foodanalysis.png" height="200px">
                        <p></p>
                        <article>
                </div>
                <div class="card-back rounded">
                    <article class="card-back-content">
                        <p style="margin:0px;">民以食為天！<br>
                            研究指出，維持良好的飲食習慣可以延長將近13年壽命！
                            透過基礎代謝率BMR與每日所需總消耗熱量TDEE計算，讓你了解每日所需熱量，
                            並分析每日飲食攝取營養素，為你補足每日所需營養！</p>
                   
                       <a href='<c:url value="/pages/dietRecord" />'><p style="font-size:24px !important;"><img src="../img/finger.png" id="finger" height="15px">&nbsp;點我了解更多飲食分析</p></a>
                       
                        <article>
                </div>
            </div>
        </div>
        <div class="card-container">
            <div class="card-horizontal">
                <div class="card-front rounded">
                    <article class="card-front-content">
                        <br>
                        <h1>運動分析</h1>
                        <br>
                        <img src="../img/running.png" height="200px">
                        <article>
                </div>
                <div class="card-back card-back-hr rounded">
                    <article class="card-back-content">
                        
                        <p>要活就要動！<br>
                            研究發現，相比從來不運動的人，有規律運動習慣的人可延長高達9.7年的壽命！
                            透過運動分析詳細紀錄每日運動項目及時間，在增肌減脂的同時達到體態雕塑，增強體內免疫力！</p>
                        <a href='<c:url value="/pages/bodyinformationselect" />'><p style="font-size:24px !important;"><img src="../img/finger.png" id="finger" height="15px">&nbsp;點我了解更多運動分析</p></a>
                        <article>
                </div>
            </div>
        </div>

        <div class="card-container">
            <div class="card-vertical">
                <div class="card-front rounded">
                    <article class="card-front-content">
                        <br>
                        <h1>睡眠分析</h1>
                        <br>
                       <img src="../img/onbed.png" height="200px">
                        <article>
                </div>
                <div class="card-back rounded">
                    <article class="card-back-content">
                        
                        <p>你每天都有睡飽嗎？<br>
                            研究指出，成人平均睡眠時間需要7～9小時，睡眠除了讓身體機能得到休息以外，
                            同時有助於減重！睡滿8小時可多消耗275大卡！藉由紀錄每日就寢和起床時間，協助您分析更好的睡眠習慣。</p>
                            <a href='<c:url value="/pages/sleeping" />'><p style="font-size:24px !important;"><img src="../img/finger.png" id="finger" height="15px">&nbsp;點我了解更多睡眠分析</p></a>
                        <article>
                </div>
            </div>
        </div>

    </div>

        <!-- End of .container -->
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
                        <li class="mb-1">
                            <a href='<c:url value="/pages/FAQ" />' style="color: #4f4f4f;">FAQs</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-6 mb-4">
                    <h5 class="mb-3 text-dark">I K Care</h5>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-1">
                            <a href='<c:url value="/pages/aboutus" />' style="color: #4f4f4f;">關於我們</a>
                        </li>
                        <li class="mb-1">
                            <a href='<c:url value="/pages/policy" />' style="color: #4f4f4f;">隱私權政策</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-6 mb-4">
                    <h6 class="mb-3 text-dark">相關網站</h6>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-1">
                            <a href="dietaryGuide.html" style="color: #4f4f4f;">國民飲食指標</a>
                        </li>
                        <li class="mb-1">
                            <a href="#!" style="color: #4f4f4f;">營養小知識</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-6 mb-4">
                    <h6 class="mb-3 text-dark">聯絡我們</h6>
                    <ul class="list-unstyled mb-0">
                        <li class="mb-1">
                            <a href="#!" style="color: #4f4f4f;">service@ikcare.com</a>
                        </li>
                        <li class="mb-1">
                            <a href="#!" style="color: #4f4f4f;"><img src="../img/facebook_logos_PNG19753.png"
                                    type="button" width="30px"></a>
                        </li>
                        <li class="mb-1">
                            <a href="#!" style="color: #4f4f4f;"><img src="../img/instagram.png" type="button"
                                    width="30px"></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            © 2022 Copyright:
            <a class="text-dark" href="IKcare2.html">IKcare.com</a>
        </div>
        <!-- Copyright -->
    </footer>


</body>

</html>