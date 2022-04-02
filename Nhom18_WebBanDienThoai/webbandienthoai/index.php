<?php
    session_start();
    require "cauhinh/ketnoi.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Vietpro Mobile Shop - Website Bán Hàng Trực Tuyến</title>
<link rel="stylesheet" type="text/css" href="css/trangchu.css" />

<link rel="stylesheet" type="text/css" href="css/slideshow.css" />

<script type="text/javascript" src="js/jquery-1.2.6.min.js"></script>

<script type="text/javascript">

/*** 
    Simple jQuery Slideshow Script
    Released by Jon Raasch (jonraasch.com) under FreeBSD license: free to use or modify, not responsible for anything, etc.  Please link out to me if you like it :)
***/

function slideSwitch() {
    var $active = $('#slideshow IMG.active');

    if ( $active.length == 0 ) $active = $('#slideshow IMG:last');

    // use this to pull the anh in the order they appear in the markup
    var $next =  $active.next().length ? $active.next()
        : $('#slideshow IMG:first');

    // uncomment the 3 lines below to pull the anh in random order
    
    // var $sibs  = $active.siblings();
    // var rndNum = Math.floor(Math.random() * $sibs.length );
    // var $next  = $( $sibs[ rndNum ] );


    $active.addClass('last-active');

    $next.css({opacity: 0.0})
        .addClass('active')
        .animate({opacity: 1.0}, 1000, function() {
            $active.removeClass('active last-active');
        });
}

$(function() {
    setInterval( "slideSwitch()", 2000 );
});

</script>

</head>
<body>

<!-- Wrapper -->
<div id="wrapper">
	<!-- Header -->
    <div id="header">
    	<div id="search-bar">
        	<!--Tìm kiếm-->
            <?php
                
                require "chucnang/timkiem/timkiem.php";
            ?>
            <!--Giỏ hàng-->
            <?php
                
                require "chucnang/giohang/giohangcuaban.php";
            ?>
        </div>
        <div id="main-bar">
        	<div id="logo"><a href="index.php"><img src="anh/logo.png" /></a></div>
            <div id="banner"></div>
        </div>
        <div id="navbar">
        	<ul>
            	<li id="menu-home"><a href="index.php">Trang chủ</a></li>
                <li><a href="index.php?page_layout=gioithieu">Giới thiệu</a></li>
                <li><a href="index.php?page_layout=dichvu">Dịch vụ</a></li>
                <li><a href="index.php?page_layout=lienhe">Liên hệ</a></li>
            </ul>
        </div>
    </div>
    <!-- End Header -->
    <!-- Body -->
    <div id="body">
    	<!-- Left Column -->
    	<div id="l-col">
        	<!--Tư vấn-->
            <?php
                
                require "chucnang/tuvan/tuvan.php";
            ?>
            <!--Danh mục-->
            <?php
                
                require "chucnang/sanpham/danhmucsp.php";
            ?>
            <!--Quảng cáo-->
            <?php
                
                require "chucnang/quangcao/quangcao.php";
            ?>
            <!--Thống kê-->
            <?php
                
                require "chucnang/thongke/thongke.php";
            ?>
            <!-- <div class="l-sidebar"></div> -->
        </div>
        <!-- End Left Column -->
        
        <!-- Right Column -->
        <div id="r-col">
        	<!--slideshow-->
            <?php
                
                require "chucnang/slideshow/slideshow.php";
            ?>
            <div id="main">
            	<?php
                if(isset($_GET['page_layout'])){
                    switch($_GET['page_layout']){
                        case 'gioithieu':require_once('chucnang/menungang/gioithieu.php');break;
                        case 'dichvu':require_once('chucnang/menungang/dichvu.php');break;
                        case 'lienhe':require_once('chucnang/menungang/lienhe.php');break;
                        case 'chitietsp':require_once('chucnang/sanpham/chitietsp.php');break;
                        case 'danhsachsp':require_once('chucnang/sanpham/danhsachsp.php');break;
                        case 'danhsachtimkiem':require_once('chucnang/timkiem/danhsachtimkiem.php');break;
                        case 'giohang':require_once('chucnang/giohang/giohang.php');break;
                        case 'muahang':require_once('chucnang/giohang/muahang.php');break;
                        default:
                            require_once('chucnang/sanpham/sanphamdacbiet.php');
                            require_once('chucnang/sanpham/sanphammoi.php');
                    }
                }else{
                    
                    require "chucnang/sanpham/sanphamdacbiet.php";
                    
                    require "chucnang/sanpham/sanphammoi.php";
                }
                ?>
            </div>
        </div>
        <!-- End Right Column -->
    	    
        <div id="brand"></div>
    </div>
    <!-- End Body -->
    <!-- Footer -->
    <div id="footer">
    	<div id="footer-info">
        	<h4>Trung tâm tin học & công nghệ vietpro</h4>
            <p><span>Địa chỉ:</span> Tầng 5, Tòa nhà A4, Ngõ 120 Hoàng Quốc Việt - Cầu Giấy - Hà Nội | <span>Phone</span> (04) 3537 6697</p>
            <p><span>Trụ sở 2:</span> Số 25/178/71 Tây Sơn - Đống Đa - Hà Nội | <span>Hotline</span> 0968 511 155</p>
            <p>Bản quyền thuộc Vietpro Education</p>
        </div>
    </div>
    <!-- End Footer -->
</div>
<!-- End Wrapper -->

</body>
</html>
