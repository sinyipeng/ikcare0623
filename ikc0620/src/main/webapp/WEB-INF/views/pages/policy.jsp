<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                                        href="/ec_p7_cart.html" style="font-size: 14px;"></a>
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

    <div id="main-wrap" >
        <div class="container-fluid">
            <div class="qa-block">
                <div class="page-title">Privacy Policy</div>
                <div id="accordion-policy">
                    <ul class="static-list">
                        <li class="mb-4">
                            <a class="list-collapse with-plus collapsed" href="#" data-toggle="collapse" data-target="#collapse-policy-1"
                            style="color: #9A6852; font-weight: bold; font-size: 20px;">隱私權保護</a>
                            <div class="collapse list-collapse-block" 
                            id="collapse-policy-1" data-parent="#accordion-policy"style="font-size: 16px;">
                                <div class="list-collapse-inner"><br>
                                    本公司十分重視您的隱私權保護，將依個人資料保護法及本隱私權政策蒐集、處理及利用您的個人資料，並提供您對個人資料權利之行使與保護。<br><br>
                                    <span class="font-w7" style="font-weight: bold;">本隱私權政策適用之範圍</span><br>
                                    本隱私權政策及其所包含之告知事項，僅適用於本網站。本網站內可能包含許多連結、或其他合作夥伴所提供的服務，各連結網站或合作夥伴網站的隱私權聲明及與個人資料保護有關之告知事項，請參閱該連結網站或合作夥伴網站。<br><br>
                                    <span class="font-w7" style="font-weight: bold;">個人資料保護法應告知事項</span><br>
                                    蒐集單位：IK CARE有限公司<br>
                                    蒐集目的：提供本公司相關服務、行銷、契約、類似契約或其他法律關係事務、客戶管理與服務、網路購物及其他電子商務服務、廣告和商業行為管理業務、以及經營合於營業登記項目或組織章程所定之業務。<br>
                                    溫馨提醒：網際網路並不是一個安全的資訊傳輸環境，請您在使用本網站時，切勿公開透露您個人資料，因該資料有可能會被他人蒐集和使用，特別是網路上公開的發言場合，如聊天室、留言版，更應避免發表個人身份、密碼或電子郵件等相關個人資料。<br><br>
                                    <span class="font-w7" style="font-weight: bold;">個人資料蒐集</span><br>
                                    當您瀏覽本公司經營之相關網站時，不會主動要求輸入個人資料。<br>
                                    當您完成購物流程或參加其他活動時，網站會要求您登錄個人資料，以便完成交易與相關服務。<br>
                                    為了保障各位會員權益，第一次光臨本網站消費的顧客，只要確認完成交易後，即會自動升級為會員。<br>
                                    請確認您所提供的個人資料真實準確，本公司不會承擔您資料中所提供不準確或不完整資訊所造成之損害或錯誤，將須自行負責。<br>
                                    如果您拒絕提供個人資料，可能無法充分利用本網站某些服務。<br>
                                    請妥善保管您的會員帳號及密碼，不要將上述資料提供給任何人或允許任何人以您的個人資料申請或使用帳號、密碼，本公司不會承擔任何不當使用密碼之責任。<br>
                                    如果您與他人共用電腦或使用公共電腦，請記得關閉瀏覽器，以防他人看到上述資料取得您帳號的方法。<br>
                                    <br>
                                    <span class="font-w7" style="font-weight: bold;">個人資料類別</span><br>
                                    識別類（姓名、地址、聯絡電話、電子郵件信箱）、特徵類（年齡、性別、出生年月日等）、社會情況類（興趣、休閒、生活格調、消費模式等）、教育、技術或其他專業類（學歷）、受僱情形類（任職公司、職務等）、
                                    其他（為完成收款或付款所需之資料、往來電子郵件、網站留言、系統自動紀錄之軌跡資訊及其他得以直接或間接識別，使用者身分之個人資料等），惟將以實際本公司取得之個人資料為限。
                                    <br><br><span class="font-w7" style="font-weight: bold;">個人資料利用</span><br>
                                    本網站所蒐集足以識別使用者身分的個人資料，均僅供本網站於其內部、依照蒐集之目的進行處理和利用，除非事先說明、或為完成提供服務或履行合約義務之必要、或依照相關法令規定或有權主管機關之命令或要求，
                                    否則本網站不會將足以識別使用者身分的個人資料提供給第三人（包括境內及境外）、或移作蒐集目的以外之使用。
                                    本公司之員工，僅於其為您提供產品或服務之需求範圍內，對於您的個人資料得為有限之接觸。本公司及本公司委外之協力廠商（例如：商品供應商、提供物流、金流或活動贈品、展示品之廠商）；如為本公司與其他廠商共同蒐集者，將於該共同蒐集之活動中載明。
                                    在會員有效期間內，以及法令所定應保存之期間內，本網站會持續保管、處理及利用<br><br>
                                    <span class="font-w7" style="font-weight: bold;">行使個人資料權利方式</span><br>
                                    依個人資料保護法第條規定，您就您的個人資料享有查詢或請求閱覽、請求製給複製本、請求補充或更正、請求停止蒐集、處理或利用、請求刪除之權利。您可以透過寄送電子郵件至（service@ikcare.com）
                                    （為避免電子郵件系統漏信或其他原因無法收悉，以本公司回覆收悉為準）方式行使上開權利，本公司將於收悉您的請求後，儘速處理。但因本網站執行職務、業務所必須，以及依相關法令規定，必須存檔備查之交易資料，不在此限。<br><br>
                                    <span class="font-w7" style="font-weight: bold;">個人資料蒐集、處理及利用說明</span><br>
                                    本公司可能透過Facebook或類似社群服務系統，於取得您的同意後，將部分本網站的資訊發布於您的社群活動資訊頁面，若您不同意該等訊息之發布，請您勿點選同意鍵，或於事後透過各該社群服務之會員機制移除該等資訊或拒絕本網站繼續發布相關訊息。
                                    若有任何問題，仍可與本公司聯絡，本公司將協助您確認、處理相關問題。若您所填寫之送貨地址、聯絡人、聯絡方式等非您本人之個人資料，您同意已取得各該當事人之同意提供予本公司，並已代本公司就前開法定告知事項予以告知。除依法應提供予司法、檢調機關、相關主管機關，或與本公司協力廠商為執行相關活動必要範圍之利用外，本公司將不會任意將您的個人資料提供予第三人。
                                    當本公司或本網站全部或部分分割、獨立子公司經營、被其他第三者購併或收購資產，導致經營權轉換時，本公司會於事前將相關細節公告於本網站，且本公司或本網站所擁有之全部或部分使用者資訊亦可能在經營權轉換的狀況下移轉給第三人。惟限於與該經營權轉換服務相關之個人資料。若本公司或本網站部分營運移轉予第三人，您仍為本公司會員，若您不希望本公司後續利用您的個人資料，您可以依本隱私權政策向本公司行使權利。<br><br>
                                    <span class="font-w7" style="font-weight: bold;">Cookie</span><br>
                                    為便於日後的辨識，當您使用本網站服務時，本公司可能會在您的電腦上設定與存取Cookie。您可以透過設定您的個人電腦或上網設備，決定是否允許Cookie技術的使用，若您關閉Cookie時，可能會造成您使用本網站服務時之不便利或部分功能限制。<br><br>
                                    <span class="font-w7">隱私權政策之修改</span><br>
                                    本公司有權隨時修改本隱私政策及本網站各項內容之權利，將於網站同一位置公告更改聲明外，不會再對會員進行個別通知。若您對本隱私權保護政策有任何問題或不同意該等變更或修改，
                                    可利用電子郵件（service@ikcare.com）直接與本公司聯繫或停止使用本網站服務。</div>
                            </div>
                        </li>
                        <li>
                            
                            <a class="list-collapse with-plus .collapse.show" href="#" data-toggle="collapse" data-target="#collapse-policy-2"
                            style="color: #9A6852; font-weight: bold;font-size: 20px;">服務條款</a>
                            <div class=".collapse.show list-collapse-block" id="collapse-policy-2" data-parent="#accordion-policy">
                                <div class="list-collapse-inner"style="font-size: 16px;"><br>
                                    當您成為IK CARE網站的會員時，即表示您已詳細閱讀、明確瞭解並同意接受本服務條款之所有內容。<br>
                                    此外，當您使用IK CARE官網的特定服務時，可能會依據該特定服務之性質，而須遵守IK CARE官網所另行公告之服務條款或相關規定。若您為未滿二十歲，應於您的家長（或監護人）閱讀、瞭解並同意本服務條款之所有內容，方得使用本服務。當您使用或繼續使用本服務時，即推定您的家長（或監護人）已閱讀、瞭解並同意接受本服務條款之所有內容及其後修改變更。<br><br>
                                    <span class="font-w7" style="font-weight: bold;">下列情況發生時本網站無須負擔任何責任：</span>
                                    <ol class="list-decimal">
                                        <li>IK CARE官網服務之風險會由您個人承擔，會員同意使用IK CARE官網各項服務基於會員的個人意願並同意自付任何風險。</li>
                                        <li>會員在IK CARE官網填寫的物件資料、個人資料、上傳圖片等行為，純屬會員個人行為，官網對其內容之真實性或完整不負任何責任。</li>
                                        <li>任何由於電腦病毒侵入或發作、因政府管制而造成暫時性關閉等影響網路正常經營之不可抗力而造成的資料毀損、丟失、被盜與用或被竄改等官網無關。</li>
                                        <li>IK CARE官網就各項服務不負任何明示或默示之擔保責任。IK CARE官網不保證各項服務之穩定、安全、無誤及不中斷；會員明示承擔使用官網服務之所有風險極可能發生之任何損害。</li>
                                        <li>維持並更新您個人會員資料，確保其為正確、最新及完整。若您提供任何錯誤、不實或不完整的資料，IK CARE有權暫停或終止您的帳號，並拒絕您使用本服務之全部或部分。</li>
                                        <li>對於會員透過IK CARE官網刊登或發布虛假、違法資訊、侵害他人權益及欺騙、敲詐行為者，純屬會員個人行為，IK CARE官網對此而產生的一切糾紛不負任何責任！</li>
                                    </ol><br>特此聲明
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
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


    <!-- script -->
    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script type=text/javascript
        src="https://static.tpx.tw/sff/mouggan/static/libs/js/vendors.js?V=20220512v1"></script>

    <script type="text/javascript" src="https://static.tpx.tw/sff/mouggan/js/howtobuy.js?V=20220512v1"></script>

</body>

</html>