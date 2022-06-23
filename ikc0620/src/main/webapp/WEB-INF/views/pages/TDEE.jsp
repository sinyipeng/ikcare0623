<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>I K care | 線上營養師</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
    <link rel="shortcut icon" type="image/x-icon" href="../img/logo.png" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
      <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/themify-icons.css">
        <link rel="stylesheet" href="css/gijgo.css">
        <link rel="stylesheet" href="css/nice-select.css">
        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/slicknav.css"> 
    <!-- <link rel="stylesheet" href="css/style.css"> -->

    <style>
        body {
            background-color: rgb(248, 250, 251);
            font-size:18px;
        }

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
            height: 1200px;
        }



        /* 輸入面板 */
        #healthData {
            text-align: center;
            margin-top: 0px !important;

        }

        #inputPanel {
            margin-left: 80px;
            margin-right: 100px;
            background-color: #e8e0cc;
            border-radius: 10px;
            height: 700px;
        }

        .BMRcal {
            margin-top: 20px;
        }

        #TDEE {
            font-size: 14px;
            line-height: 1.5rem;
        }

        #exchangePanel {
            background-color: #ebf1e0f8;
            border-radius: 10px;
            margin-top: 100px;

        }

        #foodExchange {
            background-color: rgb(226, 237, 243);
            height: 250px;
            border-radius: 10px;
        }
    </style>

<script>

    function calBMR(){
    //  var male = document.getElementById('male').value;
    //  var female = document.getElementById('female').value;
     var height = parseInt(document.getElementById('height').value);
     var weight = parseInt(document.getElementById('weight').value);
    
     var now = new Date();
     var year = now.getFullYear();
     console.log(now);
     console.log(year);

     var birth = new Date(document.getElementById('birthday').value);
     var birthday = birth.getFullYear();
     var age = year - birthday;
     console.log(age);

     var gender = $("input:radio[name=gender]:checked").val();
     console.log(gender);

     if(gender == 'male'){
     var BMRmale = 10*weight + 6.25*height - 5*age +5;
        console.log(BMRmale);
        document.getElementById('BMRresult').innerText = `你的基礎代謝率BMR為：${BMRmale}大卡`;
    }else if(gender == 'female'){
    var BMRfemale = 10*weight + 6.25*height - 5*age -161;
        console.log(BMRfemale);
        document.getElementById('BMRresult').innerText =`你的基礎代謝率BMR為：${BMRfemale}大卡`;
     } 
}

function calBMI(){
    var height = parseInt(document.getElementById('height').value);
     var weight = parseInt(document.getElementById('weight').value);

     var heightsquare = (height*0.01)*(height*0.01)
     var BMI = (weight/heightsquare).toFixed(2);
     document.getElementById('BMIresult').innerText =`你的BMI為：${BMI}`;

     var BMIrange = 0;
     if(BMI < 18.5){
        document.getElementById('BMIrange').innerText =`你的體位為過輕體位`;
         console.log('你的體位為體重過輕');
     }else if(BMI >= 18.5 && BMI < 24){
        document.getElementById('BMIrange').innerText =`你的體位為健康體位`;
         console.log('你的體位為健康體位');
     }else if(BMI >= 24 && BMI < 27){
        document.getElementById('BMIrange').innerText =`你的體位為過重體位`;
         console.log('你的體位為過重體位');
     }else if(BMI >= 27 && BMI < 30){
        document.getElementById('BMIrange').innerText =`你的體位為輕度肥胖`;
         console.log('你的體位為輕度肥胖');
     }else if(BMI >= 30 && BMI < 35){
        document.getElementById('BMIrange').innerText =`你的體位為中度肥胖`;
         console.log('你的體位為中度肥胖');
     }else if(BMI >= 35){
        document.getElementById('BMIrange').innerText =`你的體位為重度肥胖`;
         console.log('你的體位為重度肥胖');
     }

}
  function TDEEcal(){
    var height = parseInt(document.getElementById('height').value);
     var weight = parseInt(document.getElementById('weight').value);
    
     var now = new Date();
     var year = now.getFullYear();
     console.log(now);
     console.log(year);

     var birth = new Date(document.getElementById('birthday').value);
     var birthday = birth.getFullYear();
     var age = year - birthday;
     console.log(age);

     var gender = $("input:radio[name=gender]:checked").val();
     console.log(gender);
    var activity = document.getElementById("activity").value;

     var BMRmale = 10*weight + 6.25*height - 5*age +5; 
     var BMRfemale = 10*weight + 6.25*height - 5*age -161;
     var TDEE = 0;
     if(gender == 'male' && activity =='noexercise'){
        BMRmale = 10*weight + 6.25*height - 5*age +5;
        TDEE = (BMRmale * 1.2).toFixed(2);
        document.getElementById('TDEEresult').innerText = `你的每日所需總熱量為：${TDEE}大卡`;
    }else if(gender == 'male' && activity =='exerciseone'){
        BMRmale = 10*weight + 6.25*height - 5*age +5;
        TDEE = (BMRmale * 1.375).toFixed(2);
        document.getElementById('TDEEresult').innerText = `你的每日所需總熱量為：${TDEE}大卡`;
     }else if(gender == 'male' && activity =='exercisethree'){
        BMRmale = 10*weight + 6.25*height - 5*age +5;
         TDEE = (BMRmale * 1.55).toFixed(2);
         document.getElementById('TDEEresult').innerText = `你的每日所需總熱量為：${TDEE}大卡`;
     }else if(gender == 'male' && activity =='exercisesix'){
        BMRmale = 10*weight + 6.25*height - 5*age +5;
         TDEE = (BMRmale * 1.725).toFixed(2);
         document.getElementById('TDEEresult').innerText = `你的每日所需總熱量為：${TDEE}大卡`;
     }else if(gender == 'male' && activity =='alwaysexercise'){
        BMRmale = 10*weight + 6.25*height - 5*age +5;
         TDEE = (BMRmale * 1.9).toFixed(2);
         document.getElementById('TDEEresult').innerText = `你的每日所需總熱量為：${TDEE}大卡`;
     }
}

function calexchange(){
    var calories = document.getElementById('tdee-nutrition').value;
    console.log(calories);
    if(calories <= 1200){
        document.getElementById('wholeexchange').innerHTML=6;
        document.getElementById('proteinexchange').innerHTML=3;
        document.getElementById('vegetableexchange').innerHTML=3;
        document.getElementById('fruitexchange').innerHTML=2;
        document.getElementById('milkexchange').innerHTML=1.5;
        document.getElementById('oilexchange').innerHTML=4;  
    }else if(calories >1200 && calories <= 1500){
        document.getElementById('wholeexchange').innerHTML=10;
        document.getElementById('proteinexchange').innerHTML=4;
        document.getElementById('vegetableexchange').innerHTML=3;
        document.getElementById('fruitexchange').innerHTML=2;
        document.getElementById('milkexchange').innerHTML=1.5;
        document.getElementById('oilexchange').innerHTML=4; 
    }else if(calories >1500 && calories <= 1800){
        document.getElementById('wholeexchange').innerHTML=12;
        document.getElementById('proteinexchange').innerHTML=5;
        document.getElementById('vegetableexchange').innerHTML=3;
        document.getElementById('fruitexchange').innerHTML=2;
        document.getElementById('milkexchange').innerHTML=1.5;
        document.getElementById('oilexchange').innerHTML=5; 
    }else if(calories >1800 && calories <= 2000){
        document.getElementById('wholeexchange').innerHTML=12;
        document.getElementById('proteinexchange').innerHTML=6;
        document.getElementById('vegetableexchange').innerHTML=4;
        document.getElementById('fruitexchange').innerHTML=3;
        document.getElementById('milkexchange').innerHTML=1.5;
        document.getElementById('oilexchange').innerHTML=6; 
    }else if(calories >2000 && calories <= 2200){
        document.getElementById('wholeexchange').innerHTML=14;
        document.getElementById('proteinexchange').innerHTML=6;
        document.getElementById('vegetableexchange').innerHTML=4;
        document.getElementById('fruitexchange').innerHTML=3.5;
        document.getElementById('milkexchange').innerHTML=1.5;
        document.getElementById('oilexchange').innerHTML=6; 
    }else if(calories >2200 && calories <= 2500){
        document.getElementById('wholeexchange').innerHTML=16;
        document.getElementById('proteinexchange').innerHTML=7;
        document.getElementById('vegetableexchange').innerHTML=5;
        document.getElementById('fruitexchange').innerHTML=4;
        document.getElementById('milkexchange').innerHTML=1.5;
        document.getElementById('oilexchange').innerHTML=7; 
    }else if(calories > 2500){
        document.getElementById('wholeexchange').innerHTML=16;
        document.getElementById('proteinexchange').innerHTML=7;
        document.getElementById('vegetableexchange').innerHTML=5;
        document.getElementById('fruitexchange').innerHTML=4;
        document.getElementById('milkexchange').innerHTML=1.5;
        document.getElementById('oilexchange').innerHTML=7; 
    }
}
 </script>

</head>

<body>
    <!-- 導覽列 -->
    <nav id="navbar" class="navbar navbar-expand-lg navbar-light bg-light fixed-top" style="font-size:20px;">
        <!-- navbar justify-content-center  -->
        <div class="container-fluid">
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
                    <a class="nav-link" href="./shop_all/ec_p1_main.html">商城</a>
                </li>
                </ul>
                <form class="d-flex">
                    <!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Search</button> -->
                    <!-- <a type="button"><img class="search" src="../img/search.png"></a> -->
                    <a href='<c:url value="/secure/ec_p3_login" />' type="button"><img class="login" src="../img/login.png"></a>
                    <!-- <a type="button"><img class="cart" src="cart.png"></a> -->
                </form>
            </div>
        </div>
    </nav>

    <main>
        <div class="row">
            <div class="col-lg-5">
                <div class="TDEEimg"><img src="https://heho.com.tw/wp-content/uploads/2022/02/1645605629.675-e1646377714335.png"
                        style="padding-left: 150px; padding-top: 100px; width: 400px;height:300px"></div>
                <div id="inputPanel" class="">

                    <div id="healthData" class="healthData p-3">

                        <h3 class="BMRcal">BMR&TDEE計算</h3>

                        <div class="row" >

                            <div class="col-lg-12">
                                <div class="input_field" style="overflow:scroll;">
                                    <form>
                                        <label style="font-size:20px;">性別</label>&nbsp;&nbsp;<input name="gender" id="male" type="radio" value="male"><label
                                            for="male" style="font-size:20px;">&nbsp;男</label>
                                        <input name="gender" id="female" type="radio" value="female"><label
                                            for="female" style="font-size:20px;">&nbsp;女</label><br>
                                        <label style="font-size:20px;">身高&nbsp;</label><input type="text" id="height" name="height"
                                            style="width: 50px; height: 20px;"><br>
                                        <label style="font-size:20px;">體重&nbsp;</label><input type="text" id="weight" name="weight" style="width: 50px; height: 20px;">
                                        <br>
                                        <label style="font-size:20px;">生日&nbsp;</label><input type="date" id="birthday" name="birth"
                                            style="width: 150px; height: 30px;"><br>
                                        <input class="m-2" id="bmi" name="bmr" value="計算BMR" type="button"
                                            style="width: 100px; height: 30px;" onclick="calBMR()">
                                        <input class="m-2" id="bmi" name="bmr" value="計算BMI" type="button"
                                            style="width: 100px; height: 30px;" onclick="calBMI()">
                                            <p id="BMRresult" style="color:brown;"></p>
                                            <p id="BMIresult" style="color:brown;"></p>
                                            <p id="BMIrange" style="color:brown;"></p>
                                    </form>
                                    <br>
                                    <p id="TDEE" style="text-align:center; font-size: 22px;">每日總熱量消耗(TDEE)</p>
                                    <p>TDEE是身體一整天下來，包括基礎代謝、活動量、吃東西需要消耗的熱量。</p>
                                    <select id="activity" name="activityselect" style="width:150px">
                                        <option style="display: none; width:100px;">請選擇活動型態</option>
                                        <option value="noexercise">幾乎不運動</option>
                                        <option value="exerciseone">每週運動1-3天</option>
                                        <option value="exercisethree">每週運動3-5天</option>
                                        <option value="exercisesix">每週運動6-7天</option>
                                        <option value="alwaysexercise">長時間運動或體力勞動工作</option>
                                    </select><br>

                                    <input class="m-2" id="bmi" name="tdee" value="計算TDEE" type="button"
                                            style="width: 100px; height: 30px;" onclick="TDEEcal()">
                                    <p id="TDEEresult" style="color:brown;"></p>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>

            <div id="exchangePanel" class="col-lg-6">
                <div id="exchange" class="p-5">
                    <h2 style="margin: 20px;">今日所需六大類食物份數</h2><br>
                    <div class="food-content" style="margin:10px">
                        <div class="food-title" style="margin:10px;">💡 我想知道一天的飲食攝取該如何分配！</div>
                        <p class="food-input-label" id="TDEEinput">請輸入你的TDEE：</p>
                        <input type="number" id="tdee-nutrition" name="tdeevalue" placeholder="填入左方計算出來的TDEE數值"
                            onfocusout="tdeeNutrition()" style="width:270px;">
                        <div class="btn btn-success btn-sm" name="exchangecal" style="display: inline-block;" onclick="calexchange()">計算</div>

                        <div class="food-result-box p-4">
                            <div id="foodExchange" class="row food-result-content" style="padding-top:20px">
                                <div class="col-12 col-lg-6 text-left food-item pl-3 mobile-bottom">
                                    <div class="font-weight-bold"><img src="../img/rice.png"
                                            style="height:30px;">
                                        <span class="food-number" name="riceexchange" id="nutrition1" style="font-size:20px;">&nbsp;&nbsp;全榖雜糧類</span>
                                        <sapn id="wholeexchange"></sapn> (份)
                                    </div>
                                    <!-- <div class="food-subtitle">➤ 未精緻 <span class="food-number-1"
                                            id="nutrition1-1"></span> (份)</div>
                                    <div class="food-subtitle">➤ 其他 <span class="food-number-1"
                                            id="nutrition1-2"></span> (份)</div> -->
                                </div>

                                <div class="col-12 col-lg-6 text-center food-item food-border-left">
                                    <div class="row">
                                        <div class="col-12 food-border-bottom pb-11 pl-3 food-border-top">
                                            <div class="text-left food-item font-weight-bold"><img src="../img/protein.png"
                                                    style="height: 30px"><span class="food-number" name="meatexchange"
                                                    id="nutrition2"  style="font-size:20px;">豆魚蛋肉類</span> 
                                                    <sapn id="proteinexchange"></sapn>(份)</div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12 col-lg-6 text-left food-item pl-3 mobile-bottom">
                                    <div class="font-weight-bold"><img src="../img/vegetable.png"
                                            style="height:30px;">
                                        <span class="food-number" name="vegetableexchange" id="nutrition1" style="font-size:20px;">&nbsp;&nbsp;蔬菜類</span> 
                                        <sapn id="vegetableexchange"></sapn>(份)
                                    </div>
                                    <!-- <div class="food-subtitle">➤ 未精緻 <span class="food-number-1"
                                            id="nutrition1-1"></span> (份)</div>
                                    <div class="food-subtitle">➤ 其他 <span class="food-number-1"
                                            id="nutrition1-2"></span> (份)</div> -->
                                </div>

                                <div class="col-12 col-lg-6 text-center food-item food-border-left">
                                    <div class="row">
                                        <div class="col-12 food-border-bottom pb-11 pl-3 food-border-top">
                                            <div class="text-left food-item font-weight-bold"><img src="../img/fruit.png"
                                                    style="height: 30px"> <span class="food-number" name="fruitexchange"
                                                    id="nutrition2" style="font-size:20px;">水果類 </span> 
                                                    <sapn id="fruitexchange"></sapn>(份)</div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-12 col-lg-6 text-left food-item pl-3 mobile-bottom">
                                    <div class="font-weight-bold"><img src="../img/milk.png"
                                            style="height:30px;">
                                        <span class="food-number" name="milkexchange" id="nutrition1" style="font-size:20px;">&nbsp;&nbsp;乳品類</span> 
                                        <sapn id="milkexchange"></sapn>(份)
                                    </div>
                                    <!-- <div class="food-subtitle">➤ 未精緻 <span class="food-number-1"
                                            id="nutrition1-1"></span> (份)</div>
                                    <div class="food-subtitle">➤ 其他 <span class="food-number-1"
                                            id="nutrition1-2"></span> (份)</div> -->
                                </div>

                                <div class="col-12 col-lg-6 text-center food-item food-border-left">
                                    <div class="row">
                                        <div class="col-12 food-border-bottom pb-11 pl-3 food-border-top">
                                            <div class="text-left food-item font-weight-bold"><img src="../img/oilAndnut.png"
                                                    style="height: 30px"> <span class="food-number" name="oilexchange"
                                                    id="nutrition2" style="font-size:20px;">油脂與堅果類 </span> 
                                                    <sapn id="oilexchange"></sapn>(份)</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-lg-12 text-center" >
                            <a href='<c:url value="/pages/exchangeList" />' name="howtocount"><input type="button" value="如何換算份數？" style="margin:10px"></a>
                            <a href="#" name="foodexchange"><input type="button" value="食物份量表" style="margin:10px"></a>
                            <a href='<c:url value="/pages/dietRecord" />' name="dietrecord"><input type="button" value="記錄每日飲食" style="margin:10px"></a>
                            <a href='<c:url value="/pages/calendar" />' name="mycalendar"><input type="button" value="我的健康月曆" style="margin:10px"></a>
                        </div>

                        <!-- <div class="text-right mt-3" style="width: 100%;display:none;">想知道六大類怎麼吃？ <a
                                href="https://heho.com.tw/?page_id=212509&preview=1&_ppp=0825a67861"
                                class="btn btn-success " style="background-color:#28a745; ">▸▸ 認識六大類 🍚</a></div> -->
                        <p class="mt-4 small">* 計算結果僅適用於一般成人，糖尿病、腎臟病等特殊狀況者請諮詢營養師、專業醫事人員。</p>
                    </div>

                </div>
            </div>
        </div>
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