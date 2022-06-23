<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

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


<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script>
<!-- font-awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
<!-- datatable -->

<!-- <link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">
<script type="text/javascript" charset="utf8"
	src="https:cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>  -->

<style>
#resultandsave #save {
	text-align: center;
	margin-top: 50px;
}

#resultandsave #save p {
	font-weight: 600;
	font-size: 20px;
	margin-bottom: -1.5px;
	border: solid;
	border-radius: 15px;
	border-color: rgb(170, 150, 125);
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
	height: 1000px;
}

a {
	text-decoration: none;
	color: rgba(7, 6, 3, 0.854);
}

a:hover {
	color: rgb(197, 179, 165)
}

.container {
	background-color: rgb(227, 238, 241);
	color: rgb(101, 119, 156);
	width: 800px;
	height: 900px;
	margin-top: 100px;
	margin-left: 50px;
	margin-right: 50px;
	border-radius: 1rem;
	overflow: auto;
}

#table_id {
	width: 500px;
	margin-left: 10px;
	border-radius: 5px;
}

#total, #goal, #remain {
	text-align: right;
}

/* td {
	border: 1px solid rgba(196, 193, 193, 0.888);
} */
thead tr th, tfoot tr th, tbody th {
	text-align: center !important;
}

/* tbody th {
	width: 50px;
	text-align: center;
} */
tbody td {
	width: 50px;
	text-align: center;
	border-color: white;
}

ul #matchresult {
	margin-left: 700px;
	position: absolute;
	z-index: 7;
	margin-top: 100px;
}
</style>

<!-- 計算各欄位總和 -->
<script>
				window.fbAsyncInit = function() {
				    FB.init({
				      appId      : '564008045182710',
				      cookie     : true,
				      xfbml      : true,
				      version    : 'v14.0'
				    });
				      
				    FB.AppEvents.logPageView();   
				      
				  };
				
				$(document).ready(function(){
					FB.getLoginStatus(function(response){
				        if (response.authResponse) {
					          //呼叫FB.api()取得使用者資料
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
					        				  console.log("successFBlogin");
					        				  var fbid = response.id;
					        				  $('#useraccount').val(fbid);
					        				  gethisdate();
					        			  }
					        		  }
					        	  })
					              //這邊就可以判斷取得資料跟網站使用者資料是否一致
					          });
					        //沒授權過應用程式
					        }
					})
				});
					
				function change(){
					$('.result1').each(function(i) {
						$(this).text(0);
						var vTotal = 0;
					    $(this).parent().parent()
						.find('td:nth-child(' + (i+2) +'),th:nth-child(' + (i+2) +')')
						.each(function(i)
						{
							vTotal += parseInt($(this).text());
						});
					    $(this).text(vTotal);
					    $('#empty').text("");
					        
				  });
					pie();
					document.getElementById('reccomendOfnutritions').innerHTML=`<h6>每日建議三大營養素佔總熱量比例分別為：碳水化合物50-60%、蛋白質10-20%、脂肪20-30%。</h6>`
					}
				 
				<!-- 預設日期 -->
				$(document).ready(function(){
					var date = new Date();
					
					var day = date.getDate();
					var month = date.getMonth()+1;
					var year = date.getFullYear();
					if(month<10){month ="0"+month}
					if(day<10){day ="0"+day}
					
					var today = year+"-"+month+"-"+day;
					
					$("#fooddate").prop("value",today);
					gethisdate();
				})
		</script>

<!-- 圓餅圖 -->
<script>
		 function pie(){
		    var totalcalories = $('#resulttotal').children().eq(3).text();
			var carbonhydrate = $('#resulttotal').children().eq(4).text();
           	var protein = $('#resulttotal').children().eq(5).text();
             var fat =$('#resulttotal').children().eq(6).text();
             var percentageOfcho = (carbonhydrate*4)/totalcalories;
             var percentageOfprotein = (protein*4)/totalcalories; 
             var percentageOffat = (fat*9)/totalcalories; 
             /* console.log(totalcalories);
             console.log(carbonhydrate);
             console.log(protein);
             console.log(fat);
             console.log(percentageOfcho);
             console.log(percentageOfprotein);
             console.log(percentageOffat); */
				
                 $('#pie').highcharts({
                     colors: ['#8FBC8F', '#87CEFA', '#EEDC82'],
                     chart: {
                     type: 'pie',
                     fontSize: '50px',
                     //   options3d: {
                     //     enabled: true,
                     //     alpha: 45,
                     //     beta: 0
                     //   }
                   },
                     title: {
                         text: '三大營養素比例圖'
                       
                     },
                     legend: {
                    	  labelFormat: "{name}:{percentage:.2f}",
                    	  enable:true
                    	  
                    	},
                     tooltip: {
                         pointFormat: '{series.name}',
                         //pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        style: {
                        		color:'brown',
            					fontWeight: 'bold',
            					fontSize: '10px' 
        						},
        						enabled:false
                         
                     },
                     credits: {
                    	 enabled:false
                     },
                     plotOptions: {
                         pie: {
                             allowPointSelect: true,
                             cursor: 'pointer',
                             depth: 35,
                             dataLabels: {
                                 enabled: true,
                                 format: '{point.name}:{point.percentage:.2f}%',
                                	 style: {
                                         fontSize: '16px',
                                             color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'                    
                                     }
                             }
                         }
                     },
                     series: [{
                         type: 'pie',
                         name: 'nutrition',
                         data: [
                             ['碳水化合物', percentageOfcho],
                             ['蛋白質', percentageOfprotein],
                             // {
                             //   name: 'Chrome',
                             //   y: 12.8,
                             //   sliced: true,
                             //   selected: true,
                             //   mycustomLabel: 'ithelp-ithelp-ithelp-ithelp'
                             // },

                             ['脂肪', percentageOffat],
                         ],
                         showInLegend: true,
                         colorByPoint: true,
                         
                     }]
                 });
			    }
			    
		</script>

</head>

<body>

	<!-- 導覽列 -->
	<input value="${membersbean.useraccount}" style="display: none;" id="useraccount">
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

					<li class="nav-item"><a class="nav-link"
						href='<c:url value="/"/>'>首頁</a></li>

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
                    </ul></li>
					 <li class="nav-item"><a class="nav-link" href='<c:url value="/pages/TDEE" />'>BMR＆TDEE計算</a></li>
                 <li class="nav-item">
                    <a class="nav-link" href="./shop_all/ec_p1_main.html">商城</a>
                </li>
				</ul>
				<form class="d-flex">
					<!-- <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button> -->

					<a type="button" href='<c:url value="/secure/ec_p3_login" />'><img
						class="login" src="../img/login.png"></a>

				</form>
			</div>
		</div>
	</nav>

	<main>


		<div class="container" style="overflow: auto;">

			<div class="container-left">

				<!-- 飲食熱量搜尋 -->
				<div class="searchpanel"
					style="z-index: 3; position: absolute; margin-left: 900px; padding-top: 10px; background-color: rgb(173, 211, 211); width: 300px; height: 50px; border-radius: 5px;">
					<label id="search"
						style="width: 50px; margin-left: 10px; color: #4f4f4f;">搜尋：</label>
					<input type="search" id="foodname" name="foodname"
						class="light-table-filter" data-table="order-table"
						placeholder="請輸入食物名稱" style="width: 150px; height: 30px;">
					<input type="button" id="findfood" value="搜尋">
				</div>
				<!-- 食物搜尋結果 -->
				<div id="resulttable">
					<br>
					<!-- <label id="searchresult"
                            style="z-index:4; position:absolute;margin-top:50px;margin-left:750px;background-color:rgb(218, 180, 188)">搜尋結果</label>
                             -->
					<div
						style="overflow: auto; border-radius: 1rem; z-index: 6; position: absolute; width: 550px; height: 300px; margin-left: 800px; margin-top: 50px; background-color: rgb(224, 239, 210);">
						<div style="text-align: center; margin-top: 20px;">
							<label id="search" style="margin-left: 10px; color: #4f4f4f">份量：&nbsp;
								<input type="number" id="exchange" name="exchangenumber"
								style="width: 50px; height: 25px;" onkeyup="servingsize()"
								value="100">&nbsp; <b id="grams">公克</b> <select
								id="meal" name="meal" onchange="mealexchange()">
									<option style="display: none">新增至哪餐</option>
									<option value="早餐">早餐</option>
									<option value="午餐">午餐</option>
									<option value="晚餐">晚餐</option>
									<option value="點心">點心</option>
							</select> <script type="text/javascript">
								function mealexchange() {
									var x = document.getElementById('meal').value;
								}
								function servingsize() {
									var x = document.getElementById('exchange').value
									}
								
							</script>
						</div>
						<table id="table_id" class="table"
							style="margin-left: 25px; margin-bottom: 50px; margin-top: 50px; background-color: #f8f9fa;">
							<ul id="matching">
								<thead>
									<tr id="resulttitle">
										<th>食物名稱</th>
										<th>熱量</th>
										<th></th>
									</tr>
								</thead>
								<tbody id="SearchedFood">
								</tbody>
							</ul>
						</table>
					</div>
				</div>
				<!-- 圓餅圖 -->
				<div id="pie" name="pie"
					style="z-index: 3; position: absolute; margin-left: 800px; margin-top: 380px;">
				</div>
				<!-- 飲食紀錄表 -->
				<div style="margin-top: 20px;">
					<input type="button" name="same" id="same" value="與前一天相同"
						style="margin-top: 50px; margin-left: 30px; width: 110px;"
						onclick="copy()">
					<h3 style="margin-left: 280px;">
						<i class="fa-solid fa-clipboard-list"></i>&nbsp;&nbsp;我的飲食紀錄
					</h3>
					<input type="date" name="date" id="fooddate"
						style="margin-left: 30px; margin-bottom: 30px; background-color: aliceblue"
						onchange="gethisdate()">

					<!-- 飲食紀錄表欄位 -->
					<div class="table" style="overflow: auto;">
						<table
							style="width: 100%; background-color: white; border-radius: 1rem; overflow: auto;">
							<thead>
								<tr
									style="border-color: rgba(196, 193, 193, 0.888); color: gray;">
									<th id="add"></th>
									<th id="foodname">食物名稱</th>
									<th id="foodname">份量(g)</th>
									<th id="calories">卡路里</th>
									<th id="carbonhydrate">碳水化合物</th>
									<th id="protein">蛋白質</th>
									<th id="fat">脂肪</th>
									<th id="sodium">鈉</th>
									<th id="sugar">糖</th>
								</tr>
							</thead>
							<!-- 資料填入段 -->
							<tbody>
								<tr id='breakfastMealList'
									style="border-color: white; height: 50px;">
									<th id="meal" style="color: gray;">早餐</th>
									<td colspan="8" style="display: none;">0</td>
									<!-- <td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td> -->

								</tr>

								<tr id='lunchMealList'
									style="border-color: white; height: 50px;">
									<th id="meal" style="color: gray;">午餐</th>
									<td colspan="8" style="display: none;">0</td>
									<!-- <td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td> -->

								</tr>


								<tr id='dinnerMealList'
									style="border-color: white; height: 50px;">
									<th id="meal" style="color: gray;">晚餐</th>
									<td colspan="8" style="display: none;">0</td>
									<!-- <td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									 -->
								</tr>


								<tr id='dessertMealList'
									style="border-color: white; height: 50px;">
									<th id="meal" style="color: gray;">點心</th>
									<td colspan="8" style="display: none;">0</td>
									<!-- <td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td>
									<td>0</td> -->

								</tr>

								<tr style="border-color: white;" id="resulttotal">
									<td id="total" style="color: gray;">總計&nbsp;&nbsp;</td>
									<td class="result1" id="empty">&nbsp;</td>
									<td class="result1">0</td>
									<td class="result1" id="totalcalories">0</td>
									<td class="result1" id="carbonhydrate">0</td>
									<td class="result1" id="protein">0</td>
									<td class="result1" id="fat">0</td>
									<td class="result1">0</td>
									<td class="result1">0</td>
								</tr>

								<!-- <tr>
            <td id="goal">你的每日目標&nbsp;&nbsp;</td>
            <td id="result"></td>
            <td id="result"></td>
            <td id="result"></td>
            <td id="result"></td>
            <td id="result"></td>
            <td id="result"></td>
            <td></td>
            <td></td>
        </tr>
        <tr>
            <td id="remain">今日剩餘熱量&nbsp;&nbsp;</td>
            <td id="result"></td>
            <td id="result"></td>
            <td id="result"></td>
            <td id="result"></td>
            <td id="result"></td>
            <td id="result"></td>
            <td></td>
            <td></td>
        </tr> -->

								<!-- <tr>
        <td id="tableFooter" style="border: 0ch;"></td>
        <th></th>
        <th></th>
        <th id="calories">卡路里</th>
        <th id="carbonhydrate">碳水化合物</th>
        <th id="protein">蛋白質</th>
        <th id="fat">脂肪</th>
        <th id="sodium">鈉</th>
        <th id="sugar">糖</th>
        </tr> -->
							</tbody>
						</table>

						<br> <br> 
						<div id="reccomendOfnutritions"  style="margin-left:50px;"></div>
						<div id="resultandsave" style="margin-top: 20px;">
							<input type="button" value="分析" style="margin-left: 300px;"
								onclick="recommend()"> <input type="button" value="儲存"
								style="margin-left: 0px;" onclick="save()">
							<p id="save"></p>
							<!-- <label style="margin-left:200px;font-size: 24px;">今日飲食缺少維生素A</label>
                        <a href="#"><p style="font-size: 24px;"><img src="finger.png" id="finger" name="goshop" height="15px" style="margin-left:200px;">&nbsp;點我至商城</p></a> -->
						</div>
					</div>


				</div>
			</div>

		</div>

		<!-- 儲存button的script -->
		<script>
            function recommend(){
            	var calories = 0;
            	var crudeprotein = 0;
            	var crudefat = 0;
            	var saturatedfats = 0;
            	var carbohydrate = 0;
            	var dietaryfiber = 0;
            	var sugar = 0;
            	var sodium = 0;
            	var potassium = 0;
            	var calcium = 0;
            	var magnesium = 0
            	var vitaminA = 0;
            	var vitaminDIU = 0;
            	var vitaminE = 0;
            	var vitaminK1 = 0;
            	var vitaminB1 = 0;
            	var vitaminB2 = 0;
            	var niacin = 0;
            	var vitaminB6 = 0;
            	var vitaminB12 = 0;
				$(".jinfo").each(function() {
					let information = JSON.parse($(this).text());
					calories +=(information.calories*100*information.serving);
					crudeprotein +=(information.crudeprotein*100*information.serving);
					crudefat +=(information.crudefat*100*information.serving);
					saturatedfats +=(information.saturatedfats*100*information.serving);
					carbohydrate +=(information.carbohydrate*100*information.serving);
					dietaryfiber +=(information.dietaryfiber*100*information.serving);
					sugar +=(((information.glucose*100)+(information.fructose*100)+(information.sucrose)*100)*information.serving);
					sodium +=(information.sodium*100*information.serving);
					potassium +=(information.potassium*100*information.serving);
					magnesium +=(information.magnesium*100*information.serving);
					vitaminA +=(information.vitaminA*100*information.serving);
					vitaminDIU +=(information.vitaminDIU*100*information.serving);
					vitaminE +=(information.vitaminE*100*information.serving);
					vitaminK1 +=(information.vitaminK1*100*information.serving);
					vitaminB1 +=(information.vitaminB1*100*information.serving);
					vitaminB2 +=(information.vitaminB2*100*information.serving);
					niacin +=(information.niacin*100*information.serving);
					vitaminB6 +=(information.vitaminB6*100*information.serving);
					vitaminB12 +=(information.vitaminB12*100*information.serving);
				})
				calories = calories/10000;
            	crudeprotein = crudeprotein/10000;
            	crudefat = crudefat/10000;
            	saturatedfats = saturatedfats/10000;
            	carbohydrate = carbohydrate/10000;
            	dietaryfiber = dietaryfiber/10000;
            	sugar = sugar/10000;
            	sodium = sodium/10000;
            	potassium = potassium/10000;
            	calcium = calcium/10000;
            	magnesium = magnesium/10000;
            	vitaminA = vitaminA/10000;
            	vitaminDIU = vitaminDIU/10000;
            	vitaminE = vitaminE/10000;
            	vitaminK1 = vitaminK1/10000;
            	vitaminB1 = vitaminB1/10000;
            	vitaminB2 = vitaminB2/10000;
            	niacin = niacin/10000;
            	vitaminB6 = vitaminB6/10000;
            	vitaminB12 = vitaminB12/10000;
            	var ana ="";
				if(saturatedfats>20){
					ana+=`<p >今天飽和脂肪酸攝取過量，每日建議20克</p>`;
				}
				if(dietaryfiber<30){
					ana+=`<p >今日膳食纖維攝取不足，每日建議30克</p>`;
				}
				if(sugar>50){
					ana+=`<p >今日精緻糖類攝取過量，每日建議50g</p>`;
				}
				if(potassium<4500){
					ana+=`<p >今日鉀攝取不足，每日建議4500毫克</p>`;
				}
				if(magnesium<350){
					ana+=`<p >今日鎂攝取不足，每日建議350毫克</p>`;
				}
				if(calcium<1000){
					ana+=`<p >今日鈣攝取不足，每日建議1000毫克</p>`;
				}
				if(vitaminA<1665){
					ana+=`<p >今日維生素A攝取不足，每日建議1665IU</p>`;
				}
				if(vitaminDIU<400){
					ana+=`<p >今日維生素D攝取不足，每日建議400毫克</p>`;
				}
				if(vitaminE<20){
					ana+=`<p >今日維生素E攝取不足，每日建議20微克</p>`;
				}
				if(vitaminK1<120){
					ana+=`<p >今日維生素K攝取不足，每日建議120微克</p>`;
				}
				if(vitaminB1<30){
					ana+=`<p >今日維生素B1攝取不足，每日建議30毫克</p>`;
				}
				if(vitaminB2<400){
					ana+=`<p >今日維生素B2攝取不足，每日建議400毫克</p>`;
				}
				if(niacin<100){
					ana+=`<p >今日維生素B3攝取不足，每日建議100毫克</p>`;
				}
				if(vitaminB6<75){
					ana+=`<p >今日維生素B6攝取不足，每日建議75毫克</p>`;
				}
				if(vitaminB12<2000){
					ana+=`<p >今日維生素B12攝取不足，每日建議2毫克</p>`;
				}
            	
            	
            	ana +=`<a href="#"><p style="font-size: 22px;"><img src="../img/finger.png" id="finger" name="goshop" height="15px" ">&nbsp;相關營養保健品歡迎至商城購買！</p></a>`
                document.getElementById('save').innerHTML=ana;
            	
            	
            }
        </script>



		<!-- AJAX 畫面區塊段 -->
		<script type="text/javascript">
							findfood.onclick = function(){
								let searchFoodName = $('#foodname').prop('value');
								$('#SearchedFood').empty();
								$.ajax({
									type:"get",
									url:"/pages/dietfindfood/"+searchFoodName
								}).then(function(e) {
									$.each(e,function(a,b){
								        $('#SearchedFood').append('<tr class="table-acitive"></td><td id="matchresult">'+b.samplename+'</td><td id="matchresult">'+b.calories+'</td><td><button class="thisbutton" onclick="insertfood()" value="'+b.sampleid+'">新增</button></td></tr>');
									})
								})
							};
							
							function insertfood(){
								var insertfood= event.target.value;
								$.ajax({
									type:"get",
									url:"/pages/insertfood/"+insertfood
								}).then(function(e) {
									let mealtime = $('#meal').prop('value');
									let mealserving =  parseInt($('#exchange').prop('value'));
									let sugar = Math.round(((e.glucose+e.fructose+e.sucrose)*mealserving))/100;
									let calories = Math.round((e.calories*mealserving))/100;
									let carbohydrate = Math.round((e.carbohydrate*mealserving))/100;
									let crudeprotein = Math.round((e.crudeprotein*mealserving))/100;
									let crudefat = Math.round((e.crudefat*mealserving))/100;
									let sodium = Math.round((e.sodium*mealserving))/100;
									let mealsdetails = {
											"sampleid":e.sampleid,
											"serving":mealserving
									}
									let mealsinformation = {
											"serving":mealserving,
											"calories":e.calories,
											"crudeprotein":e.crudeprotein,
											"crudefat":e.crudefat,
											"saturatedfats":e.carbohydrate,
											"dietaryfiber":e.dietaryfiber,
											"glucose":e.glucose,
											"fructose":e.fructose,
											"sucrose":e.sucrose,
											"sodium":e.sodium,
											"potassium":e.potassium,
											"calcium":e.calcium,
											"magnesium":e.magnesium,
											"vitaminA":e.vitaminA,
											"vitaminDIU":e.vitaminDIU,
											"vitaminE":e.vitaminE,
											"vitaminK1":e.vitaminK1,
											"vitaminB1":e.vitaminB1,
											"vitaminB2":e.vitaminB2,
											"niacin":e.niacin,
											"vitaminB6":e.vitaminB6,
											"vitaminB12":e.vitaminB12
									}
									
									let jsonmealsinformation = JSON.stringify(mealsinformation);
									let jsonMealdetails = JSON.stringify(mealsdetails);
									
									
									if(mealtime=='早餐'){
										$('#breakfastMealList').after('<tr id="addfood" class="addfood" style="border-color:rgba(196, 193, 193, 0.888);" value="'+e.sampleid+'"><td id="add"><i class="fa-solid fa-circle-minus" onclick="deletefood();"></i><label onclick="deletefood();">&nbsp;刪除&nbsp;</label><b class="addbreakfast" style="display:none;">'+jsonMealdetails+'</b><b class="jinfo" style="display:none;">'+jsonmealsinformation+'</b></td><td>'+e.samplename+'</td><td>'+mealserving+'</td><td>'+calories+'</td><td>'+carbohydrate+'</td><td>'+crudeprotein+'</td><td>'+crudefat+'</td><td>'+sodium+'</td><td>'+sugar+'</td></tr>');
									}else if(mealtime=='午餐'){
										$('#lunchMealList').after('<tr id="addfood" class="addfood" style="border-color:rgba(196, 193, 193, 0.888);" value="'+e.sampleid+'"><td id="add"><i class="fa-solid fa-circle-minus" onclick="deletefood();"></i><label onclick="deletefood();">&nbsp;刪除&nbsp;</label><b class="addlunch" style="display:none;">'+jsonMealdetails+'</b><b class="jinfo" style="display:none;">'+jsonmealsinformation+'</b></td><td>'+e.samplename+'</td><td>'+mealserving+'</td><td>'+calories+'</td><td>'+carbohydrate+'</td><td>'+crudeprotein+'</td><td>'+crudefat+'</td><td>'+sodium+'</td><td>'+sugar+'</td></tr>');
										
									}else if(mealtime=='晚餐') {
										$('#dinnerMealList').after('<tr id="addfood" class="addfood" style="border-color:rgba(196, 193, 193, 0.888);" value="'+e.sampleid+'"><td id="add"><i class="fa-solid fa-circle-minus" onclick="deletefood();"></i><label onclick="deletefood();">&nbsp;刪除&nbsp;</label><b class="adddinner" style="display:none;">'+jsonMealdetails+'</b><b class="jinfo" style="display:none;">'+jsonmealsinformation+'</b></td><td>'+e.samplename+'</td><td>'+mealserving+'</td><td>'+calories+'</td><td>'+carbohydrate+'</td><td>'+crudeprotein+'</td><td>'+crudefat+'</td><td>'+sodium+'</td><td>'+sugar+'</td></tr>');
										
									}else if(mealtime=='點心'){
										$('#dessertMealList').after('<tr id="addfood" class="addfood" style="border-color:rgba(196, 193, 193, 0.888);" value="'+e.sampleid+'"><td id="add"><i class="fa-solid fa-circle-minus" onclick="deletefood();"></i><label onclick="deletefood();">&nbsp;刪除&nbsp;</label><b class="adddessert" style="display:none;">'+jsonMealdetails+'</b><b class="jinfo" style="display:none;">'+jsonmealsinformation+'</b></td><td>'+e.samplename+'</td><td>'+mealserving+'</td><td>'+calories+'</td><td>'+carbohydrate+'</td><td>'+crudeprotein+'</td><td>'+crudefat+'</td><td>'+sodium+'</td><td>'+sugar+'</td></tr>');
										
									}
									change();
								})
							};
							function deletefood() {
								$(event.target).closest(`tr`).empty().remove();
								change();
							}
							function save() {
								let userAcount = $("#useraccount").prop("value");
								if(userAcount!=""){
									let dietDate =$("#fooddate").prop("value");
									let breakfast =[];
									let lunch =[];
									let dinner=[];
									let dessert=[];
									
									$('.addbreakfast').each(function(a,b){
										var mealsdetails = JSON.parse($(this).text());
										breakfast.push(mealsdetails);
									});
									$('.addlunch').each(function(a,b){
										var mealsdetails = JSON.parse($(this).text());
										lunch.push(mealsdetails);
									});
									$('.adddinner').each(function(a,b){
										var mealsdetails = JSON.parse($(this).text());
										dinner.push(mealsdetails);
									});
									$('.adddessert').each(function(a,b){
										var mealsdetails = JSON.parse($(this).text());
										dessert.push(mealsdetails);
									});
									var data = {
										"userAcount":userAcount,
										"dietDate":dietDate,
										"breakfast":breakfast,
										"lunch":lunch,
										"dinner":dinner,
										"dessert":dessert
									}
									$.ajax({
										url: "/pages/insertdiet",
										data:JSON.stringify(data),
										type:"POST",
										contentType:"application/json;charset=utf-8",
										success:function(e){
											alert("成功新增飲食資料")
										},
										error:function(xhr,ajaxOptions,thrownError){
											console.log(xhr.status);
											console.log(thrownError);
											alert("新增失敗，請確定是沒有登記資料的日期")
										}
									})
								}else{
									alert("您還沒有登入喔");
								}
								
							}
							function gethisdate(time) {
								$('.addfood').each(function(index,ele){
									$(this).empty().remove();
								})
								if(time!=undefined){
									var fooddate = time;
								}else{
									var fooddate =$("#fooddate").prop("value");
								}
								var currentUseraccount = $("#useraccount").prop("value");
								console.log(currentUseraccount);
								$.ajax({
									type:"get",
									url:"/pages/getdietdetail/"+currentUseraccount+"/"+fooddate,
								}).then(function(e){
									var jsonobj = JSON.parse(e);
									var breakfast = jsonobj.breakfast;
									var lunch = jsonobj.lunch;
									var dinner = jsonobj.dinner;
									var dessert = jsonobj.dessert;
									
									$.each(breakfast,function(a,b){
										let sugar = Math.round(((b.glucose+b.fructose+b.sucrose)*b.serving))/100;
										let calories = Math.round((b.calories*b.serving))/100;
										let carbohydrate = Math.round((b.carbohydrate*b.serving))/100;
										let crudeprotein = Math.round((b.crudeprotein*b.serving))/100;
										let crudefat = Math.round((b.crudefat*b.serving))/100;
										let sodium = Math.round((b.sodium*b.serving))/100;
										let mealsdetails = {
												"sampleid":b.sampleid,
												"serving": b.serving
										}
										let mealsinformation = {
												"serving":b.serving,
												"calories":b.calories,
												"crudeprotein":b.crudeprotein,
												"crudefat":b.crudefat,
												"saturatedfats":b.carbohydrate,
												"dietaryfiber":b.dietaryfiber,
												"glucose":b.glucose,
												"fructose":b.fructose,
												"sucrose":b.sucrose,
												"sodium":b.sodium,
												"potassium":b.potassium,
												"calcium":b.calcium,
												"magnesium":b.magnesium,
												"vitaminA":b.vitaminA,
												"vitaminDIU":b.vitaminDIU,
												"vitaminE":b.vitaminE,
												"vitaminK1":b.vitaminK1,
												"vitaminB1":b.vitaminB1,
												"vitaminB2":b.vitaminB2,
												"niacin":b.niacin,
												"vitaminB6":b.vitaminB6,
												"vitaminB12":b.vitaminB12
										}
										let jsonmealsinformation = JSON.stringify(mealsinformation);
										let jsonMealdetails = JSON.stringify(mealsdetails);
										
										$('#breakfastMealList').after('<tr id="addfood" class="addfood" style="border-color:rgba(196, 193, 193, 0.888);" value="'+b.sampleid+'"><td id="add"><i class="fa-solid fa-circle-minus" onclick="deletefood();"></i><label onclick="deletefood();">&nbsp;刪除&nbsp;</label><b class="addbreakfast" style="display:none;">'+jsonMealdetails+'</b><b class="jinfo" style="display:none;">'+jsonmealsinformation+'</b></td><td>'+b.samplename+'</td><td>'+b.serving+'</td><td>'+calories+'</td><td>'+carbohydrate+'</td><td>'+crudeprotein+'</td><td>'+crudefat+'</td><td>'+sodium+'</td><td>'+sugar+'</td></tr>');
	
									})
									$.each(lunch,function(a,b){
										let sugar = Math.round(((b.glucose+b.fructose+b.sucrose)*b.serving))/100;
										let calories = Math.round((b.calories*b.serving))/100;
										let carbohydrate = Math.round((b.carbohydrate*b.serving))/100;
										let crudeprotein = Math.round((b.crudeprotein*b.serving))/100;
										let crudefat = Math.round((b.crudefat*b.serving))/100;
										let sodium = Math.round((b.sodium*b.serving))/100;
										let mealsdetails = {
												"sampleid":b.sampleid,
												"serving": b.serving
										}
										let mealsinformation = {
												"serving":b.serving,
												"calories":b.calories,
												"crudeprotein":b.crudeprotein,
												"crudefat":b.crudefat,
												"saturatedfats":b.carbohydrate,
												"dietaryfiber":b.dietaryfiber,
												"glucose":b.glucose,
												"fructose":b.fructose,
												"sucrose":b.sucrose,
												"sodium":b.sodium,
												"potassium":b.potassium,
												"calcium":b.calcium,
												"magnesium":b.magnesium,
												"vitaminA":b.vitaminA,
												"vitaminDIU":b.vitaminDIU,
												"vitaminE":b.vitaminE,
												"vitaminK1":b.vitaminK1,
												"vitaminB1":b.vitaminB1,
												"vitaminB2":b.vitaminB2,
												"niacin":b.niacin,
												"vitaminB6":b.vitaminB6,
												"vitaminB12":b.vitaminB12
										}
										let jsonmealsinformation = JSON.stringify(mealsinformation);
										let jsonMealdetails = JSON.stringify(mealsdetails);
										
										$('#lunchMealList').after('<tr id="addfood" class="addfood" style="border-color:rgba(196, 193, 193, 0.888);" value="'+b.sampleid+'"><td id="add"><i class="fa-solid fa-circle-minus" onclick="deletefood();"></i><label onclick="deletefood();">&nbsp;刪除&nbsp;</label><b class="addlunch" style="display:none;">'+jsonMealdetails+'</b><b class="jinfo" style="display:none;">'+jsonmealsinformation+'</b></td><td>'+b.samplename+'</td><td>'+b.serving+'</td><td>'+calories+'</td><td>'+carbohydrate+'</td><td>'+crudeprotein+'</td><td>'+crudefat+'</td><td>'+sodium+'</td><td>'+sugar+'</td></tr>');
	
									})
									$.each(dinner,function(a,b){
										let sugar = Math.round(((b.glucose+b.fructose+b.sucrose)*b.serving))/100;
										let calories = Math.round((b.calories*b.serving))/100;
										let carbohydrate = Math.round((b.carbohydrate*b.serving))/100;
										let crudeprotein = Math.round((b.crudeprotein*b.serving))/100;
										let crudefat = Math.round((b.crudefat*b.serving))/100;
										let sodium = Math.round((b.sodium*b.serving))/100;
										let mealsdetails = {
												"sampleid":b.sampleid,
												"serving": b.serving
										}
										let mealsinformation = {
												"serving":b.serving,
												"calories":b.calories,
												"crudeprotein":b.crudeprotein,
												"crudefat":b.crudefat,
												"saturatedfats":b.carbohydrate,
												"dietaryfiber":b.dietaryfiber,
												"glucose":b.glucose,
												"fructose":b.fructose,
												"sucrose":b.sucrose,
												"sodium":b.sodium,
												"potassium":b.potassium,
												"calcium":b.calcium,
												"magnesium":b.magnesium,
												"vitaminA":b.vitaminA,
												"vitaminDIU":b.vitaminDIU,
												"vitaminE":b.vitaminE,
												"vitaminK1":b.vitaminK1,
												"vitaminB1":b.vitaminB1,
												"vitaminB2":b.vitaminB2,
												"niacin":b.niacin,
												"vitaminB6":b.vitaminB6,
												"vitaminB12":b.vitaminB12
										}
										let jsonmealsinformation = JSON.stringify(mealsinformation);
										let jsonMealdetails = JSON.stringify(mealsdetails);
										
										$('#dinnerMealList').after('<tr id="addfood" class="addfood" style="border-color:rgba(196, 193, 193, 0.888);" value="'+b.sampleid+'"><td id="add"><i class="fa-solid fa-circle-minus" onclick="deletefood();"></i><label onclick="deletefood();">&nbsp;刪除&nbsp;</label><b class="adddinner" style="display:none;">'+jsonMealdetails+'</b><b class="jinfo" style="display:none;">'+jsonmealsinformation+'</b></td><td>'+b.samplename+'</td><td>'+b.serving+'</td><td>'+calories+'</td><td>'+carbohydrate+'</td><td>'+crudeprotein+'</td><td>'+crudefat+'</td><td>'+sodium+'</td><td>'+sugar+'</td></tr>');
	
									})
									$.each(dessert,function(a,b){
										let sugar = Math.round(((b.glucose+b.fructose+b.sucrose)*b.serving))/100;
										let calories = Math.round((b.calories*b.serving))/100;
										let carbohydrate = Math.round((b.carbohydrate*b.serving))/100;
										let crudeprotein = Math.round((b.crudeprotein*b.serving))/100;
										let crudefat = Math.round((b.crudefat*b.serving))/100;
										let sodium = Math.round((b.sodium*b.serving))/100;
										let mealsdetails = {
												"sampleid":b.sampleid,
												"serving": b.serving
										}
										let mealsinformation = {
												"serving":b.serving,
												"calories":b.calories,
												"crudeprotein":b.crudeprotein,
												"crudefat":b.crudefat,
												"saturatedfats":b.carbohydrate,
												"dietaryfiber":b.dietaryfiber,
												"glucose":b.glucose,
												"fructose":b.fructose,
												"sucrose":b.sucrose,
												"sodium":b.sodium,
												"potassium":b.potassium,
												"calcium":b.calcium,
												"magnesium":b.magnesium,
												"vitaminA":b.vitaminA,
												"vitaminDIU":b.vitaminDIU,
												"vitaminE":b.vitaminE,
												"vitaminK1":b.vitaminK1,
												"vitaminB1":b.vitaminB1,
												"vitaminB2":b.vitaminB2,
												"niacin":b.niacin,
												"vitaminB6":b.vitaminB6,
												"vitaminB12":b.vitaminB12
										}
										let jsonmealsinformation = JSON.stringify(mealsinformation);
										let jsonMealdetails = JSON.stringify(mealsdetails);
										
										$('#dessertMealList').after('<tr id="addfood" class="addfood" style="border-color:rgba(196, 193, 193, 0.888);" value="'+b.sampleid+'"><td id="add"><i class="fa-solid fa-circle-minus" onclick="deletefood();"></i><label onclick="deletefood();">&nbsp;刪除&nbsp;</label><b class="adddessert" style="display:none;">'+jsonMealdetails+'</b><b class="jinfo" style="display:none;">'+jsonmealsinformation+'</b></td><td>'+b.samplename+'</td><td>'+b.serving+'</td><td>'+calories+'</td><td>'+carbohydrate+'</td><td>'+crudeprotein+'</td><td>'+crudefat+'</td><td>'+sodium+'</td><td>'+sugar+'</td></tr>');
	
									})
									change();
								})
							}
							
							function copy() {
								let userAcount = $("#useraccount").prop("value");
								console.log(userAcount);
								if(userAcount!=""){
								var date = new Date();
								
								var day = date.getDate()-1;
								var month = date.getMonth()+1;
								var year = date.getFullYear();
								if(day==0){
									month = month-1;
									if(month==0){
										year = year-1;month = 12;date=31;
									}else if(month<8){
										if(month%2==0){
											if(month==2){
												day = 28;
											}else{
												day = 30;
												}
										}else{
											day = 31;
										}
									}else{
										if(month%2==1){
											day = 30;
										}else{
											day = 31;
										}
									}
								}
								if(month<10){month ="0"+month}
								if(day<10){day ="0"+day}
								
								var today = year+"-"+month+"-"+day;
								gethisdate(today);
								}else{
									alert("您還沒有登入喔");
								}
							}
						</script>
		<!-- pie的script -->
		<!-- <script>
				var totalcalories = parseInt(document.getElementById('totalcalories').value);
				var carbonhydrate = parseInt(document.getElementById('carbonhydrate').value);
                var protein = document.getElementById('protein').value;
                var fat = document.getElementById('fat').value;
                var percentageOfcho = carbonhydrate/totalcalories;
                console.log(totalcalories);
                
                var a = 10;
                var b = 30;
                var c = 60;
				
                    $('#pie').highcharts({
                        colors: ['#8FBC8F', '#87CEFA', '#EEDC82'],
                        // chart: {
                        //   type: 'pie',
                        //   options3d: {
                        //     enabled: true,
                        //     alpha: 45,
                        //     beta: 0
                        //   }
                        // },
                        title: {
                            text: '三大營養素比例圖'
                          
                        },
                        tooltip: {
                            pointFormat: '{series.name}: <b>{point.mycustomLabel}</b>'
                            // pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                        },
                        plotOptions: {
                            pie: {
                                allowPointSelect: true,
                                cursor: 'pointer',
                                depth: 35,
                                dataLabels: {
                                    enabled: true,
                                    format: '{point.name}'
                                }
                            }
                        },
                        series: [{
                            type: 'pie',
                            name: 'nutrition',
                            data: [
                                ['碳水化合物', a],
                                ['蛋白質', b],
                                // {
                                //   name: 'Chrome',
                                //   y: 12.8,
                                //   sliced: true,
                                //   selected: true,
                                //   mycustomLabel: 'ithelp-ithelp-ithelp-ithelp'
                                // },

                                ['脂肪', c],
                            ],
                            colorByPoint: true,
                        }]
                    });

                </script> -->


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