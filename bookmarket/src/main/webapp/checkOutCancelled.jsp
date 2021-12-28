<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html><html><head><meta charset="UTF-8">
<title>주문 취소</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="me.jsp"/>
<div class="container mt-5">
<div class="row">
<div class="col-sm-1"></div>
<div class="col-sm-10">
  <h2 id="company"><b>주문 최소</b></h2>
  <hr>
<pre>

</pre>

<div class="container" >
   <h2 class="alert alert-danger">주문이 취소되었습니다.</h2>
</div>
 <div class="container">
  <p><a href="./products.jsp" class="btn btn-outline-secondary">&laquo; 상품 목록</a>
 </div>
</div>
<div class="col-sm-1"></div>
</div>
</div>

<jsp:include page="fo.jsp"/>
</body>
</html>