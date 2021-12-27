<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>백두도서</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- Bootstrap core CSS -->
<link href="/docs/5.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.1/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.1/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.1/assets/img/favicons/safari-pinned-tab.svg" color="#7952b3">
<link rel="icon" href="/docs/5.1/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#7952b3">
<style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
#category{margin-left:10px;}
#header{margin-top:15px;}

#best_item{border-bottom: 1px solid #C8C8C8;}
#rec_item{border-bottom: 1px solid #C8C8C8;}
#new_item{border-bottom: 1px solid #C8C8C8;}

#body{margin-left: -40px;}
</style>
</head>
<body>
<%@ include file="me.jsp" %>

<!-- Custom styles for this template -->
<header class="navbar navbar-expand navbar-light bg-light" id="header">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3" href="#" id="category">전체 카테고리</a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3 text-dark" href="#">베스트</a>
    </div>
  </div>
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3 text-dark" href="#">신상품</a>
    </div>
  </div>
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3 text-dark" href="#">추천상품</a>
    </div>
  </div>
  <div class="navbar-nav">
    <div class="nav-item text-nowrap">
      <a class="nav-link px-3 text-dark" href="#">도서문의</a>
    </div>
  </div>
</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link active text-dark" aria-current="page" href="#">
              <span data-feather="home"></span>
              게임
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-dark" href="#">
              <span data-feather="file"></span>
              그래픽/디자인/멀티미디어
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-dark" href="#">
              <span data-feather="shopping-cart"></span>
              네트워크/해킹/보안
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-dark" href="#">
              <span data-feather="users"></span>
              모바일 프로그래밍
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-dark" href="#">
              <span data-feather="bar-chart-2"></span>
              프로그래밍 언어
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-dark" href="#">
              <span data-feather="layers"></span>
              오피스 활용
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-dark" href="#">
              <span data-feather="layers"></span>
              OS/데이터베이스
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-dark" href="#">
              <span data-feather="layers"></span>
              웹사이트
            </a>
          </li>
        </ul>
      </div>
    </nav>
    
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    
<div class="container" id="body">
<div class="row">
    <div class="col-sm-11">

<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">

  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>
  
  <!-- The slideshow/carousel -->
  <div class="carousel-inner" align="center" >
    <div class="carousel-item active">
      <img src="/Image/carousel/network.webp" alt="Los Angeles" class="d-block" style="width:100%">
      <div class="carousel-caption">
        <h3>Los Angeles</h3>
        <p>We had such a great time in LA!</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="/Image/carousel/network.webp" alt="Chicago" class="d-block" style="width:100%">
      <div class="carousel-caption">
        <h3>Chicago</h3>
        <p>Thank you, Chicago!</p>
      </div> 
    </div>
    <div class="carousel-item">
      <img src="/Image/carousel/network.webp" alt="New York" class="d-block" style="width:100%">
      <div class="carousel-caption">
        <h3>New York</h3>
        <p>We love the Big Apple!</p>
      </div>  
    </div>
  </div>
  
  <!-- Left and right controls/icons -->
  <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
    <span class="carousel-control-next-icon"></span>
  </button>
</div>

<div class="container mt-5">
  <h1 class="display-6"><b>베스트상품</b></h1>
  <p id="best_item">
</div>

<!-- Three columns of text below the carousel -->
  <div class="container mt-5 mb-5">
    <div class="row" align="center">
      <div class="col-lg-3">
        <a href="#" class="rounded mx-auto"><img src="/Image/1-1.jfif" alt="1-1" width="166px" height="204px" ></a>
        <p><b class="text-center">로블록스 게임 제작 무작정 따라하기</b>
        <p class="text-center"><b>18,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-2.jfif" alt="1-2" width="166px" height="204px" ></a>
        <p><b class="text-center">레트로의 유니티 게임 프로그래밍 에센스</b>
        <p class="text-center"><b>60,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-3.jfif" alt="1-3" width="166px" height="204px" ></a>
        <p><b class="text-center">유니티 교과서</b>
        <p class="text-center"><b>28,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-4.jfif" alt="1-4" width="166px" height="204px" ></a>
        <p><b class="text-center">나만의 로블록스 게임 만들기</b>
        <p class="text-center"><b>14,000</b>원</p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
  </div>

<!-- Three columns of text below the carousel -->
  <div class="container mt-5 mb-5">
    <div class="row" align="center">
      <div class="col-lg-3">
        <a href="#" class="rounded mx-auto"><img src="/Image/1-1.jfif" alt="1-1" width="166px" height="204px" ></a>
        <p><b class="text-center">로블록스 게임 제작 무작정 따라하기</b>
        <p class="text-center"><b>18,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-2.jfif" alt="1-2" width="166px" height="204px" ></a>
        <p><b class="text-center">레트로의 유니티 게임 프로그래밍 에센스</b>
        <p class="text-center"><b>60,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-3.jfif" alt="1-3" width="166px" height="204px" ></a>
        <p><b class="text-center">유니티 교과서</b>
        <p class="text-center"><b>28,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-4.jfif" alt="1-4" width="166px" height="204px" ></a>
        <p><b class="text-center">나만의 로블록스 게임 만들기</b>
        <p class="text-center"><b>14,000</b>원</p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
  </div>

<div class="container mt-5">
  <h1 class="display-6"><b>추천상품</b></h1>
  <p id="rec_item">
</div>

<!-- Three columns of text below the carousel -->
  <div class="container mt-5 mb-5">
    <div class="row" align="center">
      <div class="col-lg-3">
        <a href="#" class="rounded mx-auto"><img src="/Image/1-1.jfif" alt="1-1" width="166px" height="204px" ></a>
        <p><b class="text-center">로블록스 게임 제작 무작정 따라하기</b>
        <p class="text-center"><b>18,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-2.jfif" alt="1-2" width="166px" height="204px" ></a>
        <p><b class="text-center">레트로의 유니티 게임 프로그래밍 에센스</b>
        <p class="text-center"><b>60,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-3.jfif" alt="1-3" width="166px" height="204px" ></a>
        <p><b class="text-center">유니티 교과서</b>
        <p class="text-center"><b>28,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-4.jfif" alt="1-4" width="166px" height="204px" ></a>
        <p><b class="text-center">나만의 로블록스 게임 만들기</b>
        <p class="text-center"><b>14,000</b>원</p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
  </div>

<!-- Three columns of text below the carousel -->
  <div class="container mt-5 mb-5">
    <div class="row" align="center">
      <div class="col-lg-3">
        <a href="#" class="rounded mx-auto"><img src="/Image/1-1.jfif" alt="1-1" width="166px" height="204px" ></a>
        <p><b class="text-center">로블록스 게임 제작 무작정 따라하기</b>
        <p class="text-center"><b>18,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-2.jfif" alt="1-2" width="166px" height="204px" ></a>
        <p><b class="text-center">레트로의 유니티 게임 프로그래밍 에센스</b>
        <p class="text-center"><b>60,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-3.jfif" alt="1-3" width="166px" height="204px" ></a>
        <p><b class="text-center">유니티 교과서</b>
        <p class="text-center"><b>28,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-4.jfif" alt="1-4" width="166px" height="204px" ></a>
        <p><b class="text-center">나만의 로블록스 게임 만들기</b>
        <p class="text-center"><b>14,000</b>원</p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
  </div>

<div class="container mt-5">
  <h1 class="display-6"><b>신상품</b></h1>
  <p id="new_item">
</div>

<!-- Three columns of text below the carousel -->
  <div class="container mt-5 mb-5">
    <div class="row" align="center">
      <div class="col-lg-3">
        <a href="#" class="rounded mx-auto"><img src="/Image/1-1.jfif" alt="1-1" width="166px" height="204px" ></a>
        <p><b class="text-center">로블록스 게임 제작 무작정 따라하기</b>
        <p class="text-center"><b>18,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-2.jfif" alt="1-2" width="166px" height="204px" ></a>
        <p><b class="text-center">레트로의 유니티 게임 프로그래밍 에센스</b>
        <p class="text-center"><b>60,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-3.jfif" alt="1-3" width="166px" height="204px" ></a>
        <p><b class="text-center">유니티 교과서</b>
        <p class="text-center"><b>28,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-4.jfif" alt="1-4" width="166px" height="204px" ></a>
        <p><b class="text-center">나만의 로블록스 게임 만들기</b>
        <p class="text-center"><b>14,000</b>원</p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
  </div>

<!-- Three columns of text below the carousel -->
  <div class="container mt-5 mb-5">
    <div class="row" align="center">
      <div class="col-lg-3">
        <a href="#" class="rounded mx-auto"><img src="/Image/1-1.jfif" alt="1-1" width="166px" height="204px" ></a>
        <p><b class="text-center">로블록스 게임 제작 무작정 따라하기</b>
        <p class="text-center"><b>18,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-2.jfif" alt="1-2" width="166px" height="204px" ></a>
        <p><b class="text-center">레트로의 유니티 게임 프로그래밍 에센스</b>
        <p class="text-center"><b>60,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-3.jfif" alt="1-3" width="166px" height="204px" ></a>
        <p><b class="text-center">유니티 교과서</b>
        <p class="text-center"><b>28,000</b>원</p>
      </div><!-- /.col-lg-4 -->
      
      <div class="col-lg-3">
      <a href="#"><img src="/Image/1-4.jfif" alt="1-4" width="166px" height="204px" ></a>
        <p><b class="text-center">나만의 로블록스 게임 만들기</b>
        <p class="text-center"><b>14,000</b>원</p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->
  </div>

 </div>
 <div class="col-sm-1">
 </div>  
</div>  
</div>
 
    </main>
  </div>
</div>


<%@ include file="fo.jsp" %>
<div id="recentPanel" 
     class="card bg-light mb-3" 
      style="position:fixed; max-width:18rem; top:350px; left:1500px;">
  <h5 class="card-header">최근 본 상품</h5>
  <div>
    <ul>
    <%-- 
<%
ArrayList<RecentProduct> recentProducts 
=(ArrayList<RecentProduct>)session.getAttribute("recentProducts");

if(recentProducts!=null) {
	for(int i=0;i<recentProducts.size();i++){
		RecentProduct recentProduct= recentProducts.get(i);
		out.print("<li><a href='product.jsp?id="+recentProduct.getProductId()+"'>"
		           +recentProduct.getPname()+"</a></li>");
	}
}
%>--%>
    </ul>
  </div>
</div>
</body>
</html>