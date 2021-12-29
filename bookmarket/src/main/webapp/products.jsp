<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dto.RecentProduct"%>
<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">

<title>booklist></title>
</head>
<body>
<jsp:include page="me.jsp"/>
<div class="jumbotron">
  <div class="container">
     <h1 class="display-3">booklist</h1>
  </div>
</div>
<div class="container">
   <div>
    
   </div>
   <div class="row" align="center">
   	<%--   <%@ include file="dbconn.jsp" %> --%>
    <%--   <% /* DB로부터 상품정보 리스트 얻기 */
      	 PreparedStatement pstmt = null;
      	 ResultSet rs = null;
      	 String sql = "select * from product order by productId";
      	 pstmt = conn.prepareStatement(sql);
      	 rs = pstmt.executeQuery();
      	 while(rs.next()) {
      %> --%>
      <c:forEach  var="book" items="${booklist}">
      <div class="col-md-4">
        <img src="/resources/upload/${book.filename}"  style="width:100%">
        <h3>${book.pname}</h3>
        <p>${book.description}</p>
        <p>${book.unitPrice}원</p>
        <!-- 링크태그 이동은 get방식 이동 -->
        <p><a href="./product.jsp?id=${book.productId}" 
            class="btn btn-success" role="button">상품정보 &raquo;</a>
      </div>
      </c:forEach>
 <%--       <%
         }
       %> --%>
   </div>
   <hr>   
</div>

<jsp:include page="fo.jsp"/>

<%-- 
<div id="recentPanel" 
     class="card bg-light mb-3" 
      style="position:fixed; max-width:18rem; top:55px; right:50px;">
  <h5 class="card-header">최근 본 상품</h5>
  <div>
    <ul>
<%
	ArrayList<RecentProduct> recentProducts 
		= (ArrayList<RecentProduct>)session.getAttribute("recentProducts");
	if(recentProducts != null) {
		for(int i=0;i<recentProducts.size();i++){
			RecentProduct recentProduct = recentProducts.get(i);
			out.print("<li><a href='product.jsp?id=" + recentProduct.getProductId() + "'>"
			           + recentProduct.getPname() + "</a></li>");
		}
	}
%>
    </ul>
  </div>
</div>  --%>
</body>
</html>