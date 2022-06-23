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
    <link href="../css/style.css" rel="stylesheet">
    <link href="https://static.tpx.tw/sff/mouggan/css/rwd-content.css?v=20220518v1" rel="stylesheet">



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
                                    <li><a class="menu-collapse with-plus collapsed" href="/ec_p9_member.html"
                                            title="會員中心" style="text-align: center; font-size: 16px;">會員中心</a></li>
                                    <li><a class="menu-collapse with-plus collapsed" href="/ec_p10_history.html"
                                            title="訂單查詢" style="text-align: center; font-size: 16px;">訂單查詢</a></li>
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
                                                            <img src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cgn/cgn00932/l/102.jpg"
                                                                alt="" class="img-fluid">
                                                        </div>
                                                    </div>
                                                    <div class="col-8 p-0">
                                                        <div href="/ec_p2_product.html"
                                                            class="item-name d-block text-truncate mb-4">
                                                            <span style="font-size: 14px; white-space:normal;">
                                                                California Gold Nutrition, 金 C 粉，維生素 C，1,000 毫克，240
                                                                粒素食膠囊</span>
                                                        </div>
                                                        <div><span>尺寸 </span><span class="item-size">F</span></div>
                                                        <div><span>數量 </span><span>1</span></div>
                                                    </div>
                                                </a>
                                            </li>

                                        </ul>
                                    </div>
                                    <a class="btn-go-cart btn btn-outline-primary btn-lg w-100" href="/ec_p7_cart.html"
                                        style="font-size: 14px;"></a>
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
                    id="search-input-m" type="text" placeholder="請輸入關鍵字">
                <button class="btn btn-primary btn-block btn-lg" id="btn-global-search-m">搜尋</button>
            </form>
        </div>
    </div>


    <!-- 中間頁面 -->

    <div id="main-wrap" style="font-size: 16px;">
        <div class="container-fluid">
            <div class="content-block content-md">
                <div class="cart-content">
                    <div class="row">
                        <div class="col-12">
                            <div class="tab-btn-wrap tab-style-w font-w3 clearfix">
                                <div href="#" class="tab-btn tab-cart float-left active">
                                    <div class="d-inline-block"><span>購物車</span></div><span> (1)</span>
                                </div>
                            </div>
                            <!---->
                            <!---->
                            <form id="form-shopping-cart" method="POST" action="/zh-tw/checkout/step2"
                                novalidate="novalidate">
                                <div><input name="__RequestVerificationToken" type="hidden"
                                        value="gIjZ0L2qek-xNa_Kuhuh90-h_P7oKeFuz9tsxUmwNOrBZ7o65YlCsALinm_xVDL4MDRt_V4XwgkEIG6fu42W6BYafgox1Kqbr3wVkOW_Zog1">
                                </div>
                                <div>
                                    <div class="shopping-wrap form-style">
                                        <div class="shopping-list-wrap">
                                            <div class="row">
                                                <div class="col-12">
                                                    <div id="cart-table" class="shopping-table table-cart">
                                                        <div>
                                                            <!---->
                                                            <div>
                                                                <table
                                                                    class="table table-borderless border-primary border-bottom border-top  position-relative">
                                                                    <thead class="show-pc border-primary border-bottom">
                                                                        <tr class="font-w3">
                                                                            <td>
                                                                                <div class="d-inline-block">
                                                                                    <span>商品資訊</span>
                                                                                </div>
                                                                            </td>
                                                                            <td width="100" class="show-pc"style="text-align: center;">
                                                                                <div class="d-inline-block">
                                                                                    <span>數量</span>
                                                                                </div>
                                                                            </td>
                                                                            <td width="100" class="show-pc"style="text-align: center;">
                                                                                <div class="d-inline-block" >
                                                                                    <span >折扣價</span>
                                                                                </div>
                                                                            </td>
                                                                            <td width="100" class="show-pc">
                                                                                <div class="d-inline-block">
                                                                                    <span>小計</span>
                                                                                </div>
                                                                            </td>
                                                                            <td class="show-pc"></td>
                                                                            <td class="show-pc"></td>
                                                                        </tr>
                                                                    </thead>
                                                                    <tbody>
                                                                        <!---->
                                                                        <tr class="item-row lh-2" index="0">
                                                                            <td>
                                                                                <div class="item-img"><a
                                                                                        href="/zh-tw/market/n/1135?c=2328">
                                                                                        <div class="inner-wrap"><img
                                                                                                src="https://cloudinary.images-iherb.com/image/upload/f_auto,q_auto:eco/images/cgn/cgn00932/l/102.jpg"
                                                                                                alt="California Gold Nutrition, 金 C 粉，維生素 C，1,000 毫克，240 粒素食膠囊"
                                                                                                class="img-fluid"></div>
                                                                                    </a></div>
                                                                                <div
                                                                                    class="item-info position-relative mb-2"style="font-size: 15px;">
                                                                                    <div class="show-pc" >
                                                                                        <a href="/ec_p2_product.html"
                                                                                            class="item-name d-block">
                                                                                            California Gold Nutrition, 金
                                                                                            C 粉，維生素 C，1,000 毫克，240 粒素食膠囊
                                                                                        </a>
                                                                                    </div>
                                                                                    <div class="item-order">
                                                                                        <div class="show-mobile"><a
                                                                                                href="/ec_p2_product.html"
                                                                                                class="item-name d-block" id="itemname">
                                                                                                California
                                                                                                Gold Nutrition, 金 C
                                                                                                粉，維生素 C，1,000 毫克，240
                                                                                                粒素食膠囊</a>
                                                                                        </div>
                                                                                        <br>
                                                                                        <div class="item-id">
                                                                                            <div class="d-inline-block">
                                                                                                <span>商品編號</span>
                                                                                            </div>： W0001
                                                                                        </div>
                                                                                        <div class="item-size">
                                                                                            <div class="d-inline-block">
                                                                                                <span>尺寸</span>
                                                                                            </div>： F
                                                                                        </div>
                                                                                        <div class="item-size">
                                                                                            <div class="d-inline-block">
                                                                                                <span>單價</span>
                                                                                            </div>：
                                                                                          NT.  <span id="price"> 980</span>
                                                                                        </div>
                                                                                        <div class="show-mobile">
                                                                                            <div class="row my-2">
                                                                                                <div class="col-4">
                                                                                                    <div
                                                                                                        class="d-inline-block">
                                                                                                        <span>數量</span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-6">
                                                                                                    <select name=""
                                                                                                        class="item-counter form-control with-selector custom-ui" id="number" onchange="change()">
                                                                                                        <option
                                                                                                            value="1">1
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="2">2
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="3">3
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="4">4
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="5">5
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="6">6
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="7">7
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="8">8
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="9">9
                                                                                                        </option>
                                                                                                        <option
                                                                                                            value="10">
                                                                                                            10
                                                                                                        </option>
                                                                                                    </select>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="row">
                                                                                                <div class="col-4">
                                                                                                    <div
                                                                                                        class="d-inline-block">
                                                                                                        <span>折扣價</span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-6">673
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="row">
                                                                                                <div class="col-4">
                                                                                                    <div
                                                                                                        class="d-inline-block">
                                                                                                        <span>小計</span>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-6">673
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="row my-2">
                                                                                                <div class="col-4"><a
                                                                                                        href="#"
                                                                                                        class="btn-delete-item btn-delete"><i
                                                                                                            class="icon-close"></i></a>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div
                                                                                            class="reminder text-info lh-1 pt-3">
                                                                                            <div class="coupon-inline">
                                                                                                <!----> <span>
                                                                                                    <div
                                                                                                        class="d-inline-block">
                                                                                                        <span
                                                                                                            style="font-size: 16px">已符合</span>
                                                                                                    </div>：
                                                                                                </span> <a
                                                                                                    href="ec_p1_main.html"
                                                                                                    class="text-info"><span
                                                                                                        class="event-name"
                                                                                                        style="font-size: 16px;">歡慶開幕
                                                                                                        全館免運優惠中</span></a>
                                                                                            </div>
                                                                                            <!---->
                                                                                            <!---->
                                                                                            <!---->
                                                                                        </div>
                                                                                        <!---->
                                                                                        <!---->
                                                                                        <!---->
                                                                                        <!---->
                                                                                        <!---->
                                                                                        <!---->
                                                                                        <!---->
                                                                                        <div class="clearfix"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </td>
                                                                            <td class="show-pc"><select name=""
                                                                                    class="item-counter form-control w-100 custom-ui with-selector" 
                                                                                    style="font-weight: bold; font-size: 16px;">
                                                                                    <option value="1">1</option>
                                                                                    <option value="2">2</option>
                                                                                    <option value="3">3</option>
                                                                                    <option value="4">4</option>
                                                                                    <option value="5">5</option>
                                                                                    <option value="6">6</option>
                                                                                    <option value="7">7</option>
                                                                                    <option value="8">8</option>
                                                                                    <option value="9">9</option>
                                                                                    <option value="10">10</option>
                                                                                </select></td>
                                                                            <td class="show-pc">
                                                                                <div class="item-price pt-1"style="text-align: center;"><span
                                                                                        class="sell-price" >673</span>
                                                                                </div>
                                                                            </td>
                                                                            <td class="show-pc">
                                                                                <div class="item-price pt-1"><span
                                                                                        class="sell-price">673</span>
                                                                                </div>
                                                                            </td>
                                                                            <td class="show-pc">
                                                                                <div><a href="#"
                                                                                        class="btn-delete-item btn-delete"><i
                                                                                            class="icon-close"></i></a>
                                                                                </div>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                                <!---->
                                                            </div>
                                                            <!---->
                                                        </div>
                                                    </div>
                                                    <!---->
                                                    <!-- 線下 -->
                                                    <div>
                                                        <div class="counting-block">
                                                            <div>
                                                                <!---->
                                                                <div class="border-bottom border-primary ">

                                                                    <!-- 折價券 -->
                                                                    <!-- <div class="border-bottom border-primary ">
                                                                        <div class="row lh-2 py-3 ">
                                                                            <div class="col-md-8 col-12 mb-5">
                                                                                <div class="row">
                                                                                    <div class="col-12 col-md-3">
                                                                                        <div class="d-inline-block">
                                                                                            <span>請輸入折價券代碼</span>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="col-12 col-md-6">
                                                                                        <div
                                                                                            class="form-control coupon-code-txt pl-2">
                                                                                            <div class="d-inline-block">
                                                                                                <span>折價券</span>
                                                                                            </div>
                                                                                            <span></span>
                                                                                            
                                                                                        </div> <input id="input-coupon"
                                                                                            name="coupon" type="hidden"
                                                                                            placeholder="折價券代號"
                                                                                            readonly="readonly">
                                                                                    </div>
                                                                                    <div
                                                                                        class="col-md-3 col-12 text-center mt-lg-0 mt-4">
                                                                                        <a href="#"
                                                                                            class="btn-get-coupon btn btn-outline-primary">My Coupon</a>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="text-info col-12">
                                                                                <div class="d-inline-block">
                                                                                    <span>單筆訂單限抵一張折價券。</span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="text-info col-12">
                                                                                <div class="d-inline-block">
                                                                                    <span>取消訂單、辦理整筆退貨或退貨後之保留商品未符合折價券使用條件時，若折價券能仍在使用期限內，將歸還至帳戶中。</span>
                                                                                </div>
                                                                            </div>
                                                                            <div class="clearfix"></div>
                                                                        </div>
                                                                    </div> -->

                                                                    <div class="py-4">

                                                                        <div class="row">
                                                                            <div class="col">
                                                                                <div class="form-g row">
                                                                                    <div class="col-md-2 col-3"><label
                                                                                            class="title">
                                                                                            <div class="d-inline-block">
                                                                                                <span>配送地區</span>
                                                                                            </div>
                                                                                        </label></div>
                                                                                    <div class="col-md-5 col-9"><select
                                                                                            id="select-region"
                                                                                            name="ShippingRegion"
                                                                                            required="required"
                                                                                            class="form-control custom-ui with-selector"
                                                                                            style="font-size: 16px; font-weight: bold;">
                                                                                            <option value="1">台灣及離島
                                                                                            </option>
                                                                                        </select></div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <!---->
                                                                        <div class="row">
                                                                            <div class="col">
                                                                                <div class="form-g row">
                                                                                    <div class="col-md-2 col-3"><label
                                                                                            class="title">
                                                                                            <div class="d-inline-block">
                                                                                                <span>付款方式</span>
                                                                                            </div>
                                                                                        </label></div>
                                                                                    <div class="col-md-5 col-9">
                                                                                        <div
                                                                                            class="controls-item custom-ui lh-1 mb-2">
                                                                                            <input id="paytype0"
                                                                                                type="radio"
                                                                                                name="PayType"
                                                                                                class="radio align-top"
                                                                                                value="1"> <label
                                                                                                for="paytype0"
                                                                                                class="m-0">
                                                                                                <div>信用卡線上刷卡</div>
                                                                                            </label>
                                                                                        </div>
                                                                                        <div
                                                                                            class="controls-item custom-ui lh-1 mb-2">
                                                                                            <input id="paytype1"
                                                                                                type="radio"
                                                                                                name="PayType"
                                                                                                class="radio align-top"
                                                                                                value="2"> <label
                                                                                                for="paytype1"
                                                                                                class="m-0">
                                                                                                <div>貨到付款(宅配)</div>
                                                                                            </label>
                                                                                        </div>
                                                                                        <div
                                                                                            class="controls-item custom-ui lh-1 mb-2">
                                                                                            <input id="paytype2"
                                                                                                type="radio"
                                                                                                name="PayType"
                                                                                                class="radio align-top"
                                                                                                value="3"> <label
                                                                                                for="paytype2"
                                                                                                class="m-0">
                                                                                                <div>貨到付款(超商)</div>
                                                                                            </label>
                                                                                        </div>
                                                                                        <!---->
                                                                                    </div>
                                                                                    <!---->
                                                                                    <!---->
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <div class="row">
                                                                            <div class="col">
                                                                                <div class="form-g row">
                                                                                    <div class="col-md-2 col-3"><label
                                                                                            class="title">
                                                                                            <div class="d-inline-block">
                                                                                                <span>運送方式</span>
                                                                                            </div>
                                                                                        </label></div>
                                                                                    <div class="col-md-5 col-9"><select
                                                                                            id="select-transfer-type"
                                                                                            name="DeliveryType"
                                                                                            required="required"
                                                                                            class="form-control custom-ui with-selector"
                                                                                            style="font-size: 16px; font-weight: bold;">
                                                                                            <!---->
                                                                                            <option value="1">宅配
                                                                                            </option>
                                                                                            <option value="2">7-11超商取貨
                                                                                            </option>
                                                                                        </select></div>
                                                                                    <!---->
                                                                                </div>
                                                                                <div>
                                                                                    <div id="store-info" class="row">
                                                                                        <div
                                                                                            class="cvs-txt-block col-md-5 col-8 p-2 pl-3">
                                                                                            <div id="shopname">181244 明興門市 :</div>
                                                                                            <div id="shopaddress">台中市南區忠明南路929號</div>
                                                                                        </div>
                                                                                        <div class="col-md-2 col-4">
                                                                                        <a
                                                                                                href='<c:url value="/pages/ezship" />'
                                                                                                class="btn btn-outline-primary btn-block">
                                                                                                <div
                                                                                                    class="d-inline-block">
                                                                                                    <span
                                                                                                        style="font-size: 16px;">選擇門市</span>
                                                                                                </div>
                                                                                            </a></div>
                                                                                        <div class="col-12 mt-4">
                                                                                            ※ 提醒您：<br>
                                                                                            當包裹送達您指定之7-11門市時，隔日將會發送簡訊到貨通知，<br>
                                                                                            請攜帶訂單內填寫與身分證上相符的姓名證件，前往領取包裹。<br>
                                                                                        </div>
                                                                                    </div> <input name="cvsCode"
                                                                                        type="hidden" value="181244">
                                                                                    <input name="cvsName" type="hidden"
                                                                                        value="明興門市"> <input
                                                                                        name="cvsAddress" type="hidden"
                                                                                        value="台中市南區忠明南路929號">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>



                                                            <!-- 結帳 -->

                                                        </div>
                                                        <div class="total-block mb-5">
                                                            <div class="title with-underline"></div>
                                                            <div class="row py-4">
                                                                <div
                                                                    class="reminder mb-3 offset-md-7 col-md-5 offset-4 col-8 text-info">
                                                                    <span class="free-label"
                                                                        style="font-size: 16px;">Free Shipping</span>
                                                                    <br><span style="font-size: 16px;">商品金額已達免運門檻</span>
                                                                    <div class="d-inline-block align-middle">
                                                                        <!-- <span>商品金額只差 NT$ 20 可享滿 NT$ 1500免運</span> -->


                                                                        <!---->
                                                                        <!---->
                                                                        <!---->
                                                                    </div>

                                                                </div>
                                                                <div class="offset-md-7 col-md-5 offset-4 col-8">
                                                                    <div class="row">
                                                                        <div class="col">
                                                                            <div class="d-inline-block"><span>小計</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col text-right">
                                                                            NT$ 673
                                                                        </div>
                                                                    </div>
                                                                    <div class="row">
                                                                        <div class="col">
                                                                            <div class="d-inline-block"><span>運費</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col text-right">
                                                                            NT$ 0
                                                                        </div>
                                                                    </div>
                                                                    <!-- <div class="row">
                                                                        <div class="col">
                                                                            <div class="d-inline-block"><span>折價券</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col text-right">
                                                                            - NT$ 0
                                                                        </div>
                                                                    </div> -->

                                                                    <div class="border-bottom border-primary"></div>
                                                                    <div class="row mt-4">
                                                                        <div class="col">
                                                                            <div class="d-inline-block"><span>總金額</span>
                                                                            </div>
                                                                        </div>
                                                                        <div class="col text-right">
                                                                            NT$ 673
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <!-- 折價券 -->
                                                        <!-- <div id="lb-my-coupon" tabindex="-1" class="modal fade">
                                                            <div role="document" class="modal-dialog">
                                                                <div class="modal-content">
                                                                    <div class="modal-header">
                                                                        <h4 class="modal-title pt-2">
                                                                            <div class="d-inline-block"><span>折價券</span>
                                                                            </div>
                                                                        </h4> <a href="#" data-dismiss="modal"
                                                                            class="modal-close"><i
                                                                                class="icon-close"></i></a>
                                                                    </div>
                                                                    <div class="modal-body px-5 h5">
                                                                        <div class="controls-item custom-ui lh-1 mb-4">
                                                                            <input id="coupon-default"
                                                                                name="coupon-selected" type="radio"
                                                                                class="radio" value=""> <label
                                                                                for="coupon-default"><span
                                                                                    class="controls-float"><input
                                                                                        type="text" name="coupon"
                                                                                        placeholder="enter promo code"
                                                                                        class="form-control w-auto ml-1 text d-inline-block"
                                                                                        style="margin-top: -10px;"></span></label>
                                                                        </div>
                                                                    </div>
                                                                    <div class="modal-footer">
                                                                        <div class="pb-2 w-50 mx-auto"><a
                                                                                id="btn-coupon-discount" href="#"
                                                                                class="btn btn-block btn-outline-primary">Submit</a>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div> -->

                                                        <div class="text-center" style="margin: 115px 0px;">

                                                            <!-- 正規 -->
                                                            <!-- <input id="btn-go-checkout" type="submit"
                                                                class="btn btn-outline-primary btn-lg" value="下一步"> -->

                                                            <!-- 測試 -->
                                                            <a href="/ec_p8_final.html"><input id="btn-go-checkout"
                                                                    type="button" class="btn btn-outline-primary btn-lg"
                                                                    value="下一步" style="font-size: 16px;"></a>



                                                            <!---->
                                                            <!---->
                                                            <!---->
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!---->
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <script>
        
    </script>
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


    <!--  -->
    <div class="top" id="top-btn">
        <a class="btn-top d-md-inline-block d-none" href="#">
            <div class="icon-btn-top"></div>
        </a><a class="btn-top btn-top-m d-inline-block d-md-none" href="#">
            <div class="icon-btn-top-m"></div>
        </a>
    </div>
    <!--  -->

    <!-- 從資料庫抓出來 -->
    <script>
        window.cvsCode = '181244'
        window.cvsName = '明興門市'
        window.cvsAddress = '台中市南區忠明南路929號'
        window.payType = '1'            // 信用卡付款
        window.deliveryType = '2'       // 7-11超商取貨
        window.shipRegionType = '1'     // 台灣及離島

        window.account = '';
        window.VerificationTokenValue = '<input name="__RequestVerificationToken" type="hidden" value="hStF1Rn7XOsX2uOy3M9mTid5_OJX-KWkCK7yq_WkIr2X-kfTstr8BJaOCKJlJ9q5P8My1Ghrl8kB8Zb7gryC9Wj5jtjVRbHDFdeLAoHZPf81" />';
        window.shippingRegion = '[{"ID":1,"ChineseName":"台灣及離島","EnglishName":"Taiwan","Sort":1,"Province":null}]'
    </script>
    
    <script>
    	let itemname = document.getElementById('itemname').text;
    	console.log(itemname);
    	let price = document.getElementById('price').innerText;
    	console.log(price);
    	
    	function change(){
    	let number = document.getElementById('number');
    	let selectednumber = number.selectedIndex;
    	let itemnumber = number[selectednumber].innerHTML;
    	console.log(itemnumber);
    	}
    	
    	var url = window.location.href;
    	var b = new URLSearchParams('a=itemname&b=price')
    	console.log(b);
    </script>

    <!-- script -->
    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script type=text/javascript
        src="https://static.tpx.tw/sff/mouggan/static/libs/js/vendors.js?V=20220512v1"></script>

    <!-- <script type="text/javascript" src="https://static.tpx.tw/sff/mouggan/js/cart.js?v=20220512v1"></script> -->
    <script type="text/javascript" src="../js/lab_p7.js"></script>

</body>

</html>