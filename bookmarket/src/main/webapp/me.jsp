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

<style>
#banner{margin-left: 310px;}
#search{margin-top: 60px;}
#mynavbar{margin-right: 260px;}
</style>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-light justify-content-end">
      <ul class="navbar-nav" id="mynavbar">
        <li class="nav-item">
          <a class="nav-link text-dark" href="javascript:void(0)">로그인</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark">|</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="javascript:void(0)">회원가입</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark">|</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle text-dark" href="#" role="button" data-bs-toggle="dropdown">마이페이지</a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">내정보수정</a></li>
            <li><a class="dropdown-item" href="#">주문조회</a></li>
            <li><a class="dropdown-item" href="#">1:1 문의</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark">|</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark" href="javascript:void(0)">장바구니<span class="badge bg-secondary">0</span>
          </a>
        </li>
      </ul>
</nav>

<div class="container mt-2 mb-2" id="banner">
 <div class="row" align="left">
  <div class="col-sm-3">
   <a href="http://localhost:8080/WebMarket/wel.jsp"><img src="Image/carousel/baekdoo_full.PNG" alt="home" width="100%" height="100%" ></a>
  </div>
  <div class="col-sm-4">
    <form class="d-flex" align="center" id="search">
       <input class="form-control" type="text" placeholder="Search">
       <button class="btn btn-outline-light text-dark" type="button"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/></svg>
       </button>
      </form>
  </div>
  <div class="col-sm-5"></div>
 </div>
</div>
</body>
</html>