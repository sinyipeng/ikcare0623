<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<!DOCTYPE html>
<html lang="en">

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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <!-- SimplePagination 連結 -->
    <script
        src="https://cdnjs.cloudflare.com/ajax/libs/simplePagination.js/1.6/jquery.simplePagination.min.js"></script>

    <link rel="shortcut icon" type="image/x-icon" href="../img/logo.png" />

    <!-- icon css => Font-awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
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
            height: 1000px;
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

        /* #trp:hover, #vitB:hover, #GABA:hover, #K:hover, #Ca:hover, #Mg:hover{
            color:rgb(159, 194, 240);
        } */
        .trpfood {
            display: none;
        }

        #trp:hover .trpfood {
            display: block;
            animation-duration: 1s;
            animation-name: slidein;
        }

        .vitB {
            display: none;
        }

        #vitB:hover .vitB {
            display: block;
            margin-top: -150px;
            animation-duration: 1s;
            animation-name: slidein;
        }

        .GABA {
            display: none;
        }

        #GABA:hover .GABA {
            display: block;
            margin-top: -250px;
            animation-duration: 1s;
            animation-name: slidein;
        }

        .K {
            display: none;
        }

        #K:hover .K {
            display: block;
            margin-top: -320px;
            animation-duration: 1s;
            animation-name: slidein;
        }

        .Ca {
            display: none;
        }

        #Ca:hover .Ca {
            display: block;
            margin-top: -400px;
            animation-duration: 1s;
            animation-name: slidein;
        }

        .Mg {
            display: none;
        }

        #Mg:hover .Mg {
            display: block;
            margin-top: -480px;
            animation-duration: 1s;
            animation-name: slidein;
        }


        @keyframes slidein {
            from {
                margin-left: 100px;
                width: 400px;
                ;
            }

            to {
                margin-right: 100px;
                width: 400px;
            }
        }
        /* 匹茲堡量表 */
        .list-item {
            /* background-color: rgb(212, 214, 192); */
            border-radius: 1rem;
            padding: 10px;
            margin: 10px;
            width: 450px;
            /* 置中 */
            display: block;
            margin-left: auto;
            margin-right: auto;
            font-size: 16px;
        }
        /* 頁面按鈕 */
        .simple-pagination ul {
            list-style: none;
            text-align: center;
            margin-bottom: 50px;
            bottom: 20px;
            left: 50%;
            transform: translate(-50%);
            width: 100%;
            margin-left:230px;
        }

        .simple-pagination li {
            display: inline-block;
            margin-right: 10px;
        }

        .simple-pagination li a {
            font-size: 16px;
            color: black;
            padding: 10px 20px 10px 20px;
            text-decoration: none;
            /* border: 1px solid brown; */
            background-color: rgb(231, 231, 222);
            box-shadow: 1px 1px 1px gray;
        }

        .simple-pagination .current {
            color: rgba(58, 57, 48, 0.681);
            background-color: rgb(231, 231, 222);
            /* border: 1px solid brown; */
            font-size: 14px;
            padding: 10px 20px 10px 20px;
            box-shadow: 1px 1px 1px gray;
            text-decoration: none;
        }

        @media (max-width:600px) {
            .simple-pagination li a {
                font-size: 16px;
                padding: 3px 3px 3px 3px;
            }

            .simple-pagination .current {
                font-size: 16px;
                padding: 3px 3px 3px 3px;
            }
        }
    </style>

</head>

<body>
    <!-- header導覽列 -->
    <nav id="navbar" class="navbar navbar-expand-lg navbar-light bg-light fixed-top" style="font-size:20px;">
        <!-- navbar justify-content-center  -->
        <div class=" container-fluid">
            <img class="logo" src="../img/logo2.png" height="40">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                    <li class="nav-item mx-auto" style="width: 400px">
                        <a class="nav-link active" aria-current="page" href="/IKcare2.html"></a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href='<c:url value="/" />'>首頁</a>
                    </li>

                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            健康小幫手
                        </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                       
                        <li><a class="dropdown-item" href='<c:url value="/pages/dietRecord" />'>飲食分析</a></li>
                        <li><a class="dropdown-item" href='<c:url value="/pages/sporting" />'>運動分析</a></li>
                        <li><a class="dropdown-item" href='<c:url value="/pages/sleeping" />'>睡眠分析</a></li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li><a class="dropdown-item" href='<c:url value="/pages/calendar" />'>我的健康月曆</a></li>
                    </ul>

                    </li>
                    <li class="nav-item"><a class="nav-link" href='<c:url value="/pages/TDEE" />'>BMR＆TDEE計算</a></li>
                 <li class="nav-item">
                    <a class="nav-link" href="./shop_all/ec_p1_main.html">商城</a>
                </li>
                </ul>
                <!-- <form class="d-flex"> -->
                <!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button> -->

                <a type="button"><img class="search" src="../img/search.png"></a>
                <a type="button"><img class="login" src="../img/login.png"></i></a>
                <a type="button"><img class="cart" src="../img/cart.png"></a>
                </form>
            </div>
        </div>
    </nav>

    <main>
        <div class="container">
            <div class="row" style="display:flex;">
                <div
                    style="z-index:5;position:absolute; margin-top:150px;height:150px; width:500px; background-color:rgb(197, 217, 234); border-radius: 1rem;">
                    <form action='<c:url value="/pages/sleepinginsert"/>'
							method="post">
                    <input class="date" type="date" name="sleepingdate"  style="margin-top:35px;margin-left:20px;">
                    <label>你今天睡幾小時？</label><input name ="sleepinghour" type="text" placeholder="請填入數字"
                        style="width:100px;"><label>&nbsp;小時</label>
                    <input type="submit" value="儲存" style="margin-top:35px;margin-left:20px;" >
                    <a href="/pages/calendar"><input type="button" value="前往月曆"
									style="margin-left: 200px; margin-top: 20px;"></input>
								<br>
								</a>
                    </form>
                </div>

                <div id="sleepsheet" class="container-left col-lg-3"
                    style="color:#59554c;background-color:rgb(219,228,221);width:500px;height:650px;margin-top:270px; border-radius:1rem;">

                    <div id="sleepanalysis">
                        <h5 style="text-align:center;margin-top:50px;">匹茲堡睡眠品質分析</h5>
                        <hr style="width:400px;margin-left:40px;">
                        <!-- <h6
                            style="background-color:rgb(227, 231, 234);padding:20px; margin:20px;width:420px; text-align:center; border-radius: 1rem;">
                            想知道睡眠品質如何嗎？<br>我們可以透過評估量表了解自己的睡眠狀況</h6> -->
                        <!-- <h5 style="text-align:center;"><input type="button" value="開始檢測" onclick="start()"></h5> -->

                        <div id="list-wrapper">
                            <!-- 項目 -->
                            <div class="list-item">
                                <p style="font-size:18px;">1.過去一個月來，通常幾點睡覺? <input type="text" value="請填入數字" id="minute"
                                        style="color:#a3a09b; width:100px;font-size:16px;">&nbsp;點</p>
                                <p style="font-size:18px;">2.過去一個月來，通常多久才能入睡？ <input type="text" value="請填入數字"
                                        id="minute" style="color:#a3a09b; width:100px;font-size:16px;">&nbsp;分鐘</p>
                                <p style="font-size:18px;">3.過去一個月來，早上通常幾點起床？<input type="text" value="請填入數字"
                                        id="minute" style="color:#a3a09b; width:100px;font-size:16px;">&nbsp;點</p>
                                <p style="font-size:18px;">4.過去一個月來，睡眠時間大約幾小時？<input type="text" value="請填入數字"
                                        id="minute" style="color:#a3a09b; width:100px;font-size:16px;">&nbsp;點</p>

                            </div>
                            <div class="list-item">
                                <p>
                                <div style="text-align:left; margin-left:20px; font-size:20px;">
                                    <p style="font-size:18px;">5.過去一個月來，睡眠受到下列干擾因子的次數</p>
                                    <div class="sheet" id="sheet" style="font-size:18px;">
                                        <label style="margin:5px;">a.無法在30分鐘以內入睡</label>
                                        <select style="color:gray;font: size 16px;">
                                            <option>從未發生</option>
                                            <option>每週少於1次</option>
                                            <option>每週1-2次</option>
                                            <option>每週3次</option>
                                        </select><br>
                                        <label style="margin:5px;">b.半夜或清晨醒來</label>
                                        <select style="color:gray;font-size:16px;">
                                            <option>從未發生</option>
                                            <option>每週少於1次</option>
                                            <option>每週1-2次</option>
                                            <option>每週3次</option>
                                        </select><br>
                                        <label style="margin:5px;">c.起床上廁所</label>
                                        <select style="color:gray;font-size:16px;">
                                            <option>從未發生</option>
                                            <option>每週少於1次</option>
                                            <option>每週1-2次</option>
                                            <option>每週3次</option>
                                        </select><br>
                                        <label style="margin:5px;">d.起床上廁所</label>
                                        <select style="color:gray;font-size:16px;">
                                            <option>從未發生</option>
                                            <option>每週少於1次</option>
                                            <option>每週1-2次</option>
                                            <option>每週3次</option>
                                        </select><br>
                                        <label style="margin:5px;">e.咳嗽或打呼</label>
                                        <select style="color:gray;font-size:16px;">
                                            <option>從未發生</option>
                                            <option>每週少於1次</option>
                                            <option>每週1-2次</option>
                                            <option>每週3次</option>
                                        </select><br>
                                        <label style="margin:5px;">f.感覺很冷</label>
                                        <select style="color:gray;font-size:16px;">
                                            <option>從未發生</option>
                                            <option>每週少於1次</option>
                                            <option>每週1-2次</option>
                                            <option>每週3次</option>
                                        </select><br>
                                        <label style="margin:5px;">g.感覺很熱</label>
                                        <select style="color:gray;font-size:16px;">
                                            <option>從未發生</option>
                                            <option>每週少於1次</option>
                                            <option>每週1-2次</option>
                                            <option>每週3次</option>
                                        </select><br>
                                        <label style="margin:5px;">h.做惡夢</label>
                                        <select style="color:gray;font-size:16px;">
                                            <option>從未發生</option>
                                            <option>每週少於1次</option>
                                            <option>每週1-2次</option>
                                            <option>每週3次</option>
                                        </select><br>
                                        <label style="margin:5px;">i.疼痛</label>
                                        <select style="color:gray;font-size:16px;">
                                            <option>從未發生</option>
                                            <option>每週少於1次</option>
                                            <option>每週1-2次</option>
                                            <option style="color:brown">每週3次</option>
                                        </select><br>
                                        <input type="submit" id="next" value="檢測結果" onclick="lastpage()"
                                            style="color:brown; margin-left:300px; margin-top:0px;">
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <!-- 頁數 -->
                    <div id="pagination-container">

                    </div>

                </div>


                <div class="row container-right col-lg-7">
                    <div id="sleepfood" class="sleepfood "
                        style="background-color:rgb(233, 221, 197); width:700px; height:750px; margin-left:50px; margin-top:150px; border-radius: 1rem;">
                        <div>
                            <h4 style="text-align: center; margin-top:50px; color:#59554c">幫助入睡七大營養素</h4><br>
                            <div id="nutrition" style="width:600px;">
                                <div id="trp"
                                    style="display:flex;text-align:center;background-color:aliceblue;margin-left:100px; margin-top:10px; width:100px; height:50px; border-radius: 1rem;">
                                    <h6 style="padding:10px; font-size:20px;">色胺酸</h6>
                                    <div class="trpfood"
                                        style="z-index:3; position:absolute; margin-left:150px; width:400px; height:550px;background-color:rgb(220, 236, 236); border-radius: 1rem;">
                                        <p style="font-size:22px; margin:24px; color:rgb(111, 108, 104);">
                                            富含色胺酸的食物：<br></p><img src="../img/trpfood.png" style="height:400px;">

                                    </div>

                                </div>
                                <img src="../img/sleepwell.png"
                                    style="z-index: 2;position:absolute; margin-top: 100px;margin-left:250px; width:400px;height:300px;">

                                <br>
                                <div id="vitB"
                                    style="text-align:center;background-color:aliceblue; margin-left:100px; margin-bottom:30px; font-size:20px; width:120px; height:50px; border-radius: 1rem;">
                                    <h6 style="padding:10px; font-size:20px;">維生素B群</h6><br>
                                    <div class="vitB"
                                        style="z-index:3; position:absolute; margin-left:150px; width:400px; height:550px;background-color:rgb(220, 236, 236); border-radius: 1rem;">
                                        <p style="font-size:22px; margin:24px; color:rgb(111, 108, 104);">
                                            富含維生素B的食物：<br></p><img src="../img/vitB.jpg" style="height:450px;">
                                    </div>
                                </div>
                                <div id="GABA"
                                    style="text-align:center;background-color:aliceblue; margin-left:100px; margin-bottom:30px; font-size:20px; width:120px; height:50px; border-radius: 1rem;">
                                    <h6 style="padding:10px; font-size:20px;">GABA</h6><br>
                                    <div class="GABA"
                                        style="z-index:3; position:absolute; margin-left:150px; width:400px; height:550px;background-color:rgb(220, 236, 236); border-radius: 1rem;">
                                        <p style="font-size:22px; margin:24px; color:rgb(111, 108, 104);">
                                            富含GABA的食物：<br></p><img src="../img/GABAfood.png" style="height:450px;">
                                    </div>
                                </div>
                                <div id="K"
                                    style="text-align:center;background-color:aliceblue; margin-left:100px; margin-bottom:30px; font-size:20px; width:100px; height:50px; border-radius: 1rem;">
                                    <h6 style="padding:10px; font-size:20px;">鉀</h6><br>
                                    <div class="K"
                                        style="z-index:3; position:absolute; margin-left:150px; width:400px; height:550px;background-color:rgb(220, 236, 236); border-radius: 1rem;">
                                        <p style="font-size:22px; margin:24px; color:rgb(111, 108, 104);">
                                            富含鉀的食物：<br></p><img src="../img/Kfood.png" style="height:450px; width:300px;">
                                    </div>
                                </div>
                                <div id="Ca"
                                    style="text-align:center;background-color:aliceblue; margin-left:100px; margin-bottom:30px; font-size:20px; width:100px; height:50px; border-radius: 1rem;">
                                    <h6 style="padding:10px; font-size:20px;">鈣</h6><br>
                                    <div class="Ca"
                                        style="z-index:3; position:absolute; margin-left:150px; width:400px; height:550px;background-color:rgb(220, 236, 236); border-radius: 1rem;">
                                        <p style="font-size:22px; margin:24px; color:rgb(111, 108, 104);">
                                            富含鈣的食物：<br></p><img src="../img/Cafood.png" style="height:350px;">
                                    </div>
                                </div>
                                <div id="Mg"
                                    style="text-align:center;background-color:aliceblue; margin-left:100px; margin-bottom:30px; font-size:20px; width:100px; height:50px; border-radius: 1rem;">
                                    <h6 style="padding:10px; font-size:20px;">鎂</h6><br>
                                    <div class="Mg"
                                        style="z-index:3; position:absolute; margin-left:150px; width:400px; height:550px;background-color:rgb(220, 236, 236); border-radius: 1rem;">
                                        <p style="font-size:22px; margin:24px; color:rgb(111, 108, 104);">
                                            富含鎂的食物：<br></p><img src="../img/Mgfood.png" style="height:450px;">
                                    </div>
                                </div>
                                <a href="/shop_all/ec_p1_main.html">
                                    <p style="font-size:22px; padding-left:100px; padding-top:60px;">更多助眠相關保健食品<img
                                            src="../img/finger.png" style="width:50px;">歡迎至商城逛逛！</p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>


    </main>

    <!-- js按鈕事件 表單呈現內容 -->

    <script>
        function prevpage() {

        }
        function nextpage() {
            document.getElementById('sleepsheet').style.height = '600px';
          
        }

        //   計算睡眠品質指數
        function lastpage() {
            var x = 2 + 3;
            document.getElementById('sleepsheet').innerHTML =
                `<div><h4 style="text-align:center; margin-top: 30px;">你的睡眠品質分數為<h4 id="result"></h4>分</h4>
                    <p></p><br><br>
                    <input type="button" id="sleepresult" value="結束" onclick="history.go(0);" style="margin-left:200px;">
                    `;
            document.getElementById('result').innerHTML = x;
            document.getElementById('sleepsheet').style.height = '300px';
        }
    </script>

    <!-- JQuery -->
    <script>
        // 每個頁面要顯示幾個項目
        var perPage = 1;
        // 總共有多少個項目
        var numItems = $(".list-item").length;

        $(".list-item").slice(perPage).hide();

        $('#pagination-container').pagination({

            items: numItems,
            itemsOnPage: perPage,
            prevText: "上一頁",
            nextText: "下一頁",
            onPageClick: function (pageNumber) {
                // 計算出 起始 以及結束
                var from = perPage * (pageNumber - 1);
                var to = from + perPage;
                $(".list-item").hide().slice(from, to).show();

            }
        })
    </script>

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
                            <a href="#!" style="color: #4f4f4f;"><img src="../img/facebook_logos_PNG19753.png" type="button"
                                    width="30px"></a>
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
</body>

</html>
</head>
<body>

</body>
</html>