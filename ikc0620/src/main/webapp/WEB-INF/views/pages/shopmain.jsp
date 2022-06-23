<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-Hant-TW">

<head>
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

    <link rel="canonical" href="#" />
    <!-- <link href="https://static.tpx.tw/sff/mouggan/css/main.css?v=20220518v1" rel="stylesheet"> -->
    <link href="../css/style1.css" rel="stylesheet">
    <link href="https://static.tpx.tw/sff/mouggan/css/rwd-content.css?v=20220518v1" rel="stylesheet">
</head>



<!-- body基礎版面設定 -->

<body id="page-shop" class="style-lang-en">

    <style>
        .mycategory:hover{
            color:#876d5a; 
            line-height: 24px;
        }
        .mycategory{
            line-height: 24px;
            font-weight: bold;
        }
       .nav:hover{
        color:#876d5a; 
        text-decoration: lemonchiffon wavy underline;
       }
       #mysubtitle{
        font-weight: bold;
       }
       #mysubtitle:hover{
        color:#876d5a; 
       }
    
    </style>

    <!-- header -->
    <header class="header" id="one">
        <div class="container-fluid align-items-center justify-content-center position-relative">
            <div class="header-inner">
                <div class="logo">
                    <a href="/ec_p1_main.html"><img class="img-fluid" style="width:150px ;" src="../img/logo2.png" alt=""></a>
                </div>

                <!-- icon-s-logo小logo -->
                <div class="navbar-nav">
                    <ul class="d-md-inline-block d-none align-top">
                        <li class="nav-item s-logo ml-0">
                            <a href="/en-us/"><i class="icon-s-logo"></i></a>
                        </li>
                    </ul>

                    <!-- header右邊 -->
                    <ul class="main-list member-nav">
                        <li class="nav-item search-item" style="width: auto;">
                            <a class="btn-global-search global-search d-md-inline-block d-none" href="">
                                <i class="icon-search hide-search"></i>
                            </a>
                            <a class="btn-global-search-mobile hide-search global-search d-inline-block d-md-none"
                                href="">
                                <i class="icon-search"></i>
                            </a>
                            <span class="close-global-search-m">
                                <a class="close-global-search" href="">
                                    <i class="icon-close"></i>
                                </a>
                            </span>
                            <form class="search-form align-bottom" id="form-global-search" action="">
                                <i class="icon-search2"></i>
                                <input class="input-global-search form-control border-0 d-inline-block mx-2"
                                    id="search-input" type="text" placeholder="SEARCH" style="font-size: 18px;">
                                <a class="close-global-search" href="">
                                    <i class="icon-close"></i>
                                </a>
                            </form>

                        </li>
                        <!-- <li class="nav-item d-md-inline-block d-none hide-search">
                            <a href="/ec_p3_login.html">
                                <div class="text-en" style="margin-left: -18px;">Login</div>
                                <i class="icon-member"></i>
                            </a>
                        </li> -->

                        <!-- 右上會員 -->
                        <li class="nav-item hide-search">
                            <a href="#">
                                <div class="text-en" style="margin-left: -28px;">Member</div><i class="icon-member"></i>
                            </a>
                            <div class="sub-list-block down-left sub-member-list" style="left: -50px;">
                                <!-- 登入前版本 -->
                                <!-- <ol class="sub-list p-4" style="height:110px ;">
                                    <li class="my-3">
                                        <div style="padding: 10px 30px">
                                            <a class="btn btn-outline-primary w-100" style="font-size: 16px;"
                                                href="/ec_p3_login.html" title="登入">登入</a>
                                        </div>
                                    </li>
                                </ol> -->
                                <!-- 登入後版本 -->
                                <ol class="sub-list p-4" style="height:180px ;">
                                    <li><a class="menu-collapse with-plus collapsed" href="/ec_p9_member.html" title="會員中心"
                                            style="text-align: center; font-size: 16px;">會員中心</a></li>
                                    <li><a class="menu-collapse with-plus collapsed" href="/ec_p10_history.html" title="訂單查詢"
                                            style="text-align: center; font-size: 16px;">訂單查詢</a></li>
                                    <li class="my-3">
                                        <div style="padding: 10px 30px">
                                            <a class="btn btn-outline-primary w-100" style="font-size: 16px;"
                                                href="/ec_p1_main.html" title="登出">登出</a>
                                        </div>
                                    </li>
                                </ol>
                            </div>
                        </li>

                        <!-- 購物車邊欄 -->

                        <li class="nav-item hide-search" id="app-mini-cart">
                            <a class="open-sidebar" href="#" data-sidebar="#cart-menu" data-mask="#cart-mask"
                                ref="cartdot" :class="{'show': count !== 0 &amp;&amp; dataisload}">
                                <div class="text-en" style="margin-left: -15px;">Cart</div><i class="icon-cart"></i>
                                <!-- <span v-text=" count "></span> -->
                                <span>1</span>
                                <!-- 範例demo -->
                            </a>
                            <div class="sidebar h5" id="cart-menu">
                                <div class="inner-block p-5">
                                    <a class="close-sidebar float-right" data-sidebar="#cart-menu"
                                        data-mask="#cart-mask" data-btn="" href="#"><i class="icon-close"
                                            style="width: 18px; height: 18px;"></i></a>
                                    <div class="clearfix"></div>
                                    <div class="shopping-cart-list my-5">
                                        <ul>
                                            <!-- 無商品版 -->
                                            <!-- <li class="text-left mb-3" v-if="count !== 0 &amp;&amp; dataisload"
                                                v-for="(item, index) in datas" :index="index"
                                                :key="item.CustomMarketID">
                                                <a class="row m-0" :href="item.Url">
                                                    <div class="col-4 cart-img p-0 pr-4">
                                                        <div class="inner-wrap item-img-box">
                                                            <new-image :url="item.Cover" :size="'_w120_h160'"
                                                                :name="item.Name"></new-image>
                                                        </div>
                                                    </div>
                                                    <div class="col-8 p-0">
                                                        <div class="item-name d-block text-truncate mb-4"
                                                            :href="item.Url">{{item.Name}}</div>
                                                        <div><span>尺寸 </span><span
                                                                class="item-size">{{item.Size}}</span></div>
                                                        <div><span>顏色 </span><span
                                                                class="item-color">{{item.ColorName}}</span></div>
                                                        <div><span>數量 </span><span>{{item.Count}}</span></div>
                                                    </div>
                                                </a>
                                            </li> -->

                                            <!-- demo版 -->
                                            <li index="0" class="text-left mb-3"><a href="/ec_p2_product.html"
                                                    class="row m-0">
                                                    <div class="col-4 cart-img p-0 pr-4">
                                                        <div class="inner-wrap" style="position: absolute; top: 10px;">
                                                            <img
                                                                src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cgn/cgn00932/l/102.jpg"
                                                                alt="" class="img-fluid"></div>
                                                    </div>
                                                    <div class="col-8 p-0">
                                                        <div href="/ec_p2_product.html" 
                                                            class="item-name d-block text-truncate mb-4">
                                                            <span style="font-size: 14px; white-space:normal;">
                                                                California Gold Nutrition, 金 C 粉，維生素 C，1,000 毫克，240 粒素食膠囊</span> 
                                                        </div>
                                                        <div><span>尺寸 </span><span class="item-size">F</span></div>
                                                        <div><span>數量 </span><span>1</span></div>
                                                    </div>
                                                </a>
                                            </li>

                                        </ul>
                                    </div>
                                    <a class="btn-go-cart btn btn-outline-primary btn-lg w-100"
                                        href='<c:url value="../pages/cart" />'></a>
                                </div>
                            </div>

                        </li>
                        <li class="nav-item d-md-none d-inline-block hide-search">
                            <a class="open-sidebar btn-burger" href="#" data-sidebar="#burger-menu"
                                data-mask="#burger-mask">
                                <span></span>
                            </a>
                        </li>
                    </ul>



                    <!-- header欄位 -->
                    <ul class="main-list d-md-inline-block d-none hide-search">
                        <li class="nav-item nav-change">
                            <a class="nav" href="/ec_p1_main.html"
                                style="font-weight: bold; font-size: 18px; font-family: 'Courier New', Courier, monospace;">最新</a>
                        </li>
                        <li class="nav-item nav-change">
                            <a class="nav" href="/ec_p1_main.html"
                                style="font-weight: bold; font-size: 18px; font-family: 'Courier New', Courier, monospace;">熱賣商品</a>
                        </li>
                        <li class="nav-item nav-change">
                            <a class="nav" href="/ec_p1_main.html"
                                style="font-weight: bold; font-size: 18px; font-family: 'Courier New', Courier, monospace;">全部商品</a>
                            <div class="sub-list-block down-left">
                                <ol class="sub-list"
                                    style="font-size: 18px; font-family: 'Courier New', Courier, monospace; width: 180px; height:335px;">
                                    <li>
                                        <a id="mysubtitle" href="#">消化健康</a>
                                    </li>
                                    <li>
                                        <a id="mysubtitle" href="#">能量精力</a>
                                    </li>
                                    <li>
                                        <a id="mysubtitle" href="#">眼與視覺健康</a>
                                    </li>
                                    <li>
                                        <a id="mysubtitle" href="#">免疫健康</a>
                                    </li>
                                    <li>
                                        <a id="mysubtitle" href="#">健康睡眠</a>
                                    </li>
                                    <li>
                                        <a id="mysubtitle" href="#">減重塑形</a>
                                    </li>
                                    <li>
                                        <a id="mysubtitle" href="#">骨與關節健康</a>
                                    </li>
                                </ol>
                            </div>
                        </li>
                        <li class="nav-item nav-change">
                            <a class="nav" href="#"
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
            <ul class="accordion" id="accordionMobileMenu" style="font-size: 18px;">
                <li class="mb-4"><a href="/ec_p1_main.html">最新</a></li>
                <li class="mb-4"><a href="/ec_p1_main.html">熱賣商品</a></li>

                <!-- 縮小後的邊欄event -->
                <li class="mb-4">
                    <a class="menu-collapse with-plus collapsed" href="#" data-toggle="collapse"
                        data-target="#collapse0" aria-expanded="true">優惠活動</a>
                    <div class="collapse menu-collapse-block" id="collapse0" data-parent="#accordionMobileMenu">
                        <ol class="p-4">
                            <li class="py-2">
                                <a href="#"> 歡慶開幕 單件免運</a>
                            </li>

                        </ol>
                    </div>
                </li>

                <!-- 縮小後的邊欄category -->
                <li class="mb-4">
                    <a class="menu-collapse with-plus collapsed" href="/ec_p1_main.html" data-toggle="collapse"
                        data-target="#collapse1" aria-expanded="true">商品分類</a>
                    <div class="collapse menu-collapse-block" id="collapse1" data-parent="#accordionMobileMenu">
                        <ol class="p-4">
                            <li class="py-2">
                                <a href="/ec_p1_main.html">全部商品</a>
                            </li>
                            <li class="py-2">
                                <a href="#">消化健康</a>
                            </li>
                            <li class="py-2">
                                <a href="#">能量精力</a>
                            </li>
                            <li class="py-2">
                                <a href="#">眼與視覺健康</a>
                            </li>
                            <li class="py-2">
                                <a href="#">免疫健康</a>
                            </li>
                            <li class="py-2">
                                <a href="#">健康睡眠</a>
                            </li>
                            <li class="py-2">
                                <a href="#">減重塑形</a>
                            </li>
                            <li class="py-2">
                                <a href="#">骨與關節健康</a>
                            </li>
                        </ol>
                    </div>
                </li>

                <li class="mb-4"><a href="/mainpage.html">線上營養師</a></li>

            </ul>

            <!-- 縮小後的邊欄 會員功能 -->
            <ul class="member-menu w-75" style="font-size: 18px;">
                <!-- 登入前版本 -->
                <!-- <li class="mb-4"><a class="menu-collapse with-plus collapsed" href="/ec_p3_login.html">會員中心</a></li>
                <li class="mb-4"><a class="menu-collapse with-plus collapsed" href="/ec_p3_login.html">訂單查詢</a></li>
                <li class="mb-4"><a class="btn btn-outline-primary btn-lg btn-block" href="/ec_p3_login.html"
                        style="font-size: 18px;">登入</a></li> -->
                <!-- 登入後版本 -->
                <li class="mb-4"><a class="menu-collapse with-plus collapsed" href="/ec_p9_member.html">會員中心</a></li>
                <li class="mb-4"><a class="menu-collapse with-plus collapsed" href="/ec_p10_history.html">訂單查詢</a></li>
                <li class="mb-4"><a class="btn btn-outline-primary btn-lg btn-block" href="/ec_p1_main.html"
                        style="font-size: 18px;">登出</a></li>
            </ul>
        </div>
    </div>

    <!-- 搜尋功能 -->
    <div class="mask close-sidebar" id="burger-mask" data-sidebar="#burger-menu" data-mask="#burger-mask"
        data-btn=".open-sidebar"></div>
    <div class="mobile-search-block" id="search-popup">
        <div class="container-fluid">
            <form class="search-form mt-3" action=""><input class="input-global-search form-control with-search mb-3"
                    id="search-input-m" type="text" placeholder="請輸入關鍵字" style="font-size: 18px;">
                <button class="btn btn-primary btn-block btn-lg" id="btn-global-search-m" style="font-size: 18px; width:300px ;">搜尋</button>
            </form>
        </div>
    </div>

    <!-- 開始顯示側欄 -->
    <div id="main-wrap">
        <div class="container-fluid">
            <div class="float-bar d-md-block d-none" id="category-sidebar">
                <div class="inner h4">
                    <ul>

                        <ul>

                            <li class="mb-4" style="font-size: 20px;">
                                <a class="d-inline-block mb-2" style="color: #9A6852; font-weight: bold;" href="#">
                                    <span class="tag-main-txt">Event</span>
                                    <span class="tag-sub-txt">優惠活動</span>
                                </a>

                                <hr color="#eee6d3">

                                <ol class="ml-3">
                                    <li class="mb-2" style="font-size: 18px;">

                                        <a style="" href="" >
                                            <span class="mycategory">歡慶開幕 單件免運</span>
                                            <!-- <span class="tag-sub-txt">歡慶開幕 單件免運</span> -->
                                        </a>
                                    </li>
                                </ol>
                            </li>

                            <li class="mb-4" >
                                <a class="d-inline-block mb-2" style="color: #9A6852; font-weight: bold; font-size: 18px;" href="#">
                                    <span class="tag-main-txt">Category</span> 
                                    <span class="tag-sub-txt">商品分類</span>
                                </a>

                                <hr color="#eee6d3">

                                <ol class="ml-3">
                                    
                                    <li class="mb-2" style="font-size: 18px;">

                                        <a style="" href="">
                                            <span class="mycategory">消化健康</span>
                                        </a>
                                    </li>
                                    
                                    <li class="mb-2" style="font-size: 18px;">

                                        <a style="" href="">
                                            <span class="mycategory">能量精力</span>
                                        </a>
                                    </li>
                                    <li class="mb-2" style="font-size: 18px;">

                                        <a style="" href="">
                                            <span class="mycategory">眼與視覺健康</span>
                                        </a>
                                    </li>
                                    <li class="mb-2" style="font-size: 18px;">

                                        <a style="" href="">
                                            <span class="mycategory">免疫健康</span>
                                        </a>
                                    </li>
                                    <li class="mb-2" style="font-size: 18px;">

                                        <a style="" href="">
                                            <span class="mycategory">健康睡眠</span>
                                        </a>
                                    </li>
                                    <li class="mb-2" style="font-size: 18px;">

                                        <a style="" href="">
                                            <span class="mycategory">減重塑形</span>
                                        </a>
                                    </li>
                                    <li class="mb-2" style="font-size: 18px;">

                                        <a style="" href="">
                                            <span class="mycategory">骨與關節健康</span>
                                        </a>
                                    </li>
                                </ol>
                            </li>

                        </ul>



                    </ul>
                </div>
            </div>

            <!-- 結束顯示側欄 -->


            <!-- 中間商品區塊 -->

            <div class="shop-content" id="app-shop">
                <grid-mode :largemode="false" v-on:changegrid="swichGridMode"></grid-mode>
                <sort-app :data="sortConditionDatas" :isload="sortConditionIsLoad"></sort-app>
                <div class="item-list item-list-box clearfix" :class="{'large-mode': largeMode}">


                    <div class="item-box">
                        <div class="inner">
                            <div class="item-img-box">
                                <a href="http://127.0.0.1:5500/ec_p2_product.html"><img class="img-fluid"
                                        style="width: 200%; "
                                        src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cgn/cgn00932/l/102.jpg"
                                        alt=""></a>
                            </div>
                        </div>
                        <div class="item-info" style="font-size: 16px;">
                            <a class="item-name" href="http://127.0.0.1:5500/ec_p2_product.html">
                                California Gold Nutrition, 金 C 粉，維生素 C，1,000 毫克，240 粒素食膠囊</a><br>
                            <div class="item-price">
                                <span class="d-inline-block mr-2 origin-price">NT$980</span>
                                <span class="sell-price"style="font-weight: bold;">NT$673</span>
                            </div>

                        </div>
                    </div>

                    <div class="item-box">
                        <div class="inner">
                            <div class="item-img-box">
                                <a
                                    href="https://tw.iherb.com/pr/california-gold-nutrition-lactobif-probiotics-30-billion-cfu-60-veggie-capsules/64009?rec=iherbtest-home"><img
                                        class="img-fluid"
                                        src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cgn/cgn00965/v/68.jpg"
                                        alt=""></a>
                            </div>
                        </div>
                        <div class="item-info" style="font-size: 16px;">
                            <a class="item-name"
                                href="https://tw.iherb.com/pr/california-gold-nutrition-lactobif-probiotics-30-billion-cfu-60-veggie-capsules/64009?rec=iherbtest-home">
                                California Gold Nutrition, LactoBif 益生菌，300 億菌落單位，60 粒素食膠囊</a><br>
                            <div class="item-price">
                                <span class="d-inline-block mr-2 origin-price">NT$1,280</span>
                                <span class="sell-price" style="font-weight: bold;">NT$897</span>
                            </div>

                        </div>
                    </div>

                    <div class="item-box">
                        <div class="inner">
                            <div class="item-img-box">
                                <a
                                    href="https://tw.iherb.com/pr/california-gold-nutrition-collagenup-unflavored-7-26-oz-206-g/64903?rec=iherbtest-home"><img
                                        class="img-fluid"
                                        src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cgn/cgn01033/v/178.jpg"
                                        alt=""></a>
                            </div>
                        </div>
                        <div class="item-info" style="font-size: 16px;">
                            <a class="item-name"
                                href="https://tw.iherb.com/pr/california-gold-nutrition-collagenup-unflavored-7-26-oz-206-g/64903?rec=iherbtest-home">
                                California Gold Nutrition, CollagenUp，海洋水解膠原蛋白 + 透明質酸 + 維生素 C，原味，7.26 盎司（206 克）</a><br>
                                <div class="item-price">
                                <span class="d-inline-block mr-2 origin-price" >NT$980</span>
                                <span class="sell-price"  style="font-weight: bold;">NT$762</span>
                            </div>

                        </div>
                    </div>

                    <div class="item-box">
                        <div class="inner">
                            <div class="item-img-box">
                                <a
                                    href="https://tw.iherb.com/pr/california-gold-nutrition-omega-3-premium-fish-oil-180-epa-120-dha-100-fish-gelatin-softgels/62118?rec=iherbtest-home"><img
                                        class="img-fluid"
                                        src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/mli/mli00952/v/199.jpg"
                                        alt=""></a>
                            </div>
                        </div>
                        <div class="item-info" style="font-size: 16px;">
                            <a class="item-name"
                                href="https://tw.iherb.com/pr/california-gold-nutrition-omega-3-premium-fish-oil-180-epa-120-dha-100-fish-gelatin-softgels/62118?rec=iherbtest-home">
                                California Gold Nutrition, Omega-3 優質魚油，180 EPA/120 DHA，100 粒魚明膠軟凝膠</a><br>
                            <div class="item-price">
                                <span class="d-inline-block mr-2 origin-price">NT$580</span>
                                <span class="sell-price" style="font-weight: bold;">NT$314</span>
                            </div>

                        </div>
                    </div>

                    <div class="item-box">
                        <div class="inner">
                            <div class="item-img-box">
                                <a
                                    href="https://tw.iherb.com/pr/california-gold-nutrition-omega-800-pharmaceutical-grade-fish-oil-80-epa-dha-triglyceride-form-1-000-mg-90-fish-gelatin-softgels/85180?rec=iherbtest-home"><img
                                        class="img-fluid"
                                        src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cgn/cgn01266/v/72.jpg"
                                        alt=""></a>
                            </div>
                        </div>
                        <div class="item-info" style="font-size: 16px;">
                            <a class="item-name"
                                href="https://tw.iherb.com/pr/california-gold-nutrition-omega-800-pharmaceutical-grade-fish-oil-80-epa-dha-triglyceride-form-1-000-mg-90-fish-gelatin-softgels/85180?rec=iherbtest-home">
                                California Gold Nutrition, 歐米伽 800 醫級魚油，含 80% EPA/DHA，甘油三酸酯，1000 毫克，90 粒魚明膠軟凝膠</a><br>
                            <div class="item-price">
                                <span class="d-inline-block mr-2 origin-price">NT$1,480</span>
                                <span class="sell-price" style="font-weight: bold;">NT$951</span>
                            </div>

                        </div>
                    </div>

                    <div class="item-box">
                        <div class="inner">
                            <div class="item-img-box">
                                <a
                                    href="https://tw.iherb.com/pr/eucerin-q10-anti-wrinkle-face-cream-1-7-oz-48-g/59501?rec=iherbtest-home"><img
                                        class="img-fluid"
                                        src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/euc/euc63413/v/30.jpg"
                                        alt=""></a>
                            </div>
                        </div>
                        <div class="item-info" style="font-size: 16px;">
                            <a class="item-name"
                                href="https://tw.iherb.com/pr/eucerin-q10-anti-wrinkle-face-cream-1-7-oz-48-g/59501?rec=iherbtest-home">
                                Eucerin, Q10 抗皺面霜，1.7 盎司（48 克）</a><br>
                            <div class="item-price">
                                <span class="d-inline-block mr-2 origin-price">NT$580</span>
                                <span class="sell-price" style="font-weight: bold;">NT$379</span>
                            </div>

                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <div id="pagination"></div>
    </div>
    </div>
    </div>




    <!-- ikcare footer -->
    <footer style="background-color: #eee6d3;">
        <div class="container p-4">
            <div class="row">
                <div class="col-lg-2 col-md-12 mb-4">

                </div>

                <div class="col-lg-2 col-md-6 mb-4">
                    <h5 class="mb-3" style="color: #9A6852; font-weight: bold; font-size: 16px; 
                    font-family:'Courier New', Courier, monospace;">購物資訊</h5>

                    <ul class="list-unstyled mb-0" style="font-size: 16px;">
                        <li class="mb-1">
                            <a href="/ec_p4_FAQ.html">FAQs</a>
                        </li>
                        <li class="mb-1">
                            <a href="/ec_p4_FAQ.html">How to buy</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-6 mb-4">
                    <h5 class="mb-3" style="color: #9A6852; font-weight: bold; font-size: 16px;">I K Care</h5>
                    <ul class="list-unstyled mb-0"
                        style="font-weight: bold; font-size: 16px; font-family:'Courier New', Courier, monospace;">
                        <li class="mb-1">
                            <a href="/ec_p6_aboutus.html">關於我們</a>
                        </li>
                        <li class="mb-1">
                            <a href="/ec_p5_policy.html">隱私權政策</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-2 col-md-6 mb-4">
                    <h5 class="mb-3"
                        style="color: #9A6852; font-weight: bold; font-size: 16px; font-family:'Courier New', Courier, monospace;">
                        相關網站</h5>
                    <ul class="list-unstyled mb-0"
                        style="font-weight: bold; font-size: 16px; font-family:'Courier New', Courier, monospace;">
                        <li class="mb-1">
                            <a href="#!">國民飲食指標</a>
                        </li>
                        <li class="mb-1">
                            <a href="#!">營養小知識</a>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-6 mb-4">
                    <h5 class="mb-3"
                        style="color: #9A6852; font-weight: bold; font-size: 16px; font-family:'Courier New', Courier, monospace;">
                        聯絡我們</h5>
                    <ul class="list-unstyled mb-0" style="font-size: 16px;">
                        <li class="mb-1">
                            <a href="#!">service@ikcare.com</a>
                        </li>
                        <li class="mb-1">
                            <a href="#!"><img src="../img/facebook_logos_PNG19753.png" type="button" width="30px"></a>
                            <!-- </li>
                        <li class="mb-1"> -->
                            <a href="#!"><img src="../img/instagram.png" type="button" width="30px"></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
            <span style="font-size: 16px;">© 2022 Copyright: </span>
            <a class="text-dark" href="IKcare2.html" style="font-size: 16px;">ikcare.com</a>
        </div>
        <!-- Copyright -->
    </footer>

    <div class="top" id="top-btn">
        <a class="btn-top d-md-inline-block d-none" href="#">
            <div class="icon-btn-top"></div>
        </a><a class="btn-top btn-top-m d-inline-block d-md-none" href="#">
            <div class="icon-btn-top-m"></div>
        </a>
    </div>

    <!-- 邊欄會跟隨畫面 & 下面頁碼  -->
    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script type=text/javascript
        src="https://static.tpx.tw/sff/mouggan/static/libs/js/vendors.js?V=20220512v1"></script>

    <!-- <script>
        window.StaticImgDomain = 'pics.mouggan.com';
        window.PictureContainer = 'mouggan';
    </script> -->

    <!-- 頁碼從...變成箭頭 > -->
    <script>
        window.PageCount = 5;
        window.OrderMode = 1;
    </script>

    <!-- 最重要的部分 -->
    <!-- 出現上方縮小navbar & 頁碼 & 縮小後點三條線出現側欄選單 & 購物車畫面 -->
    <!-- 排序 & 進階篩選 & 商品顯示方式 -->
    <!-- <script type="text/javascript" src="https://static.tpx.tw/sff/mouggan/js/shop.js?V=20220512v1"></script> -->
    <script type="text/javascript" src="../js/lab_p1.js"></script>

</body>

</html>