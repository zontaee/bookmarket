<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="dto.RecentProduct"%><%@page import="dao.ProductRepository"%><%@page import="dto.Product"%><%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>        
<!DOCTYPE html><html><head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<fmt:setLocale value='<%=request.getParameter("language") %>'/>
<fmt:bundle basename="resourceBundle.message">
<title><fmt:message key="listTitle"/></title>
</head>
<body>
<jsp:include page="me.jsp"/>
<div class="jumbotron">
  <div class="container">
     <h1 class="display-3"><fmt:message key="listTitle"/></h1>
  </div>
</div>
<div class="container">
	<div class="text-right">
         <a href="?language=ko">Korean</a>|<a href="?language=en">English</a>
   </div>
   <div class="row" align="center">
    <%@ include file="dbconn.jsp" %>
     <%  /* DB로 부터 상품 정보 리스트 얻기 */
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        String sql = "select * from product";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        while(rs.next()){   
      %>
      <div class="col-md-4">
        <img src="/resources/images/<%=rs.getString("fileName")%>"  style="width:100%">
        <h3><%=rs.getString("pname") %></h3>
        <p><%=rs.getString("descriptoin") %></p>
        <p><%=rs.getInt("unitPrice") %>원</p>
        <!-- 링크태그 이동은 get방식 이동 -->
        <p><a href="./product.jsp?id=<%=rs.getString("productId")%>" 
            class="btn btn-success" role="button"><fmt:message key="productInfo"/> &raquo;</a>
      </div>
       <%
         }
       %>
   </div>
   <hr>   
</div>
</fmt:bundle>
<jsp:include page="fo.jsp"/>
<div id="recentPanel" 
     class="card bg-light mb-3" 
      style="position:fixed; max-width:18rem; top:55px; right:50px;">
  <h5 class="card-header">최근 본 상품1</h5>
  <div>
    <ul>
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
%>
    </ul>
  </div>
</div>
</body>
</html>