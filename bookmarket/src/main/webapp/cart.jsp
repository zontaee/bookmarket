<%@page import="dto.Product"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html><html><head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>장바구니</title>
<%
  String cartId = session.getId();
%>
</head>
<body>
<jsp:include page="me.jsp" />
<hr>
   <div >
       <h1 align="center"  class="display-3">장바구니</h1>
   </div>

<hr>
<div class="container">
  <div class="row">
   
  </div>
  <div style="padding-top:50px;" >
    <table class="table table-hover">
      <tr>
        <th>상품</th><th>가격</th><th>수량</th><th>소계</th><th>비고</th>
      </tr>
      <%
      	 int sum=0;//합계
      	 ArrayList<Product> cartList 
      	           =(ArrayList<Product>)session.getAttribute("cartlist");
      	 //세션에 장바구니 정보가 없으면 신규 생성
      	 if(cartList ==null){ cartList =new ArrayList<Product>();}
      	 
      	 for(int i=0;i<cartList.size();i++){//상품 정보 하나씩 출력
      		 Product product = cartList.get(i);
      	     int total = product.getUnitPrice() * product.getQuantity();//단가*장바구니등록 수량
      	     sum +=total;//합계 계산
        %>
          <tr>
          <td><%=product.getProductId()%> - <%=product.getPname() %></td>
          <td><%=product.getUnitPrice()%></td>
          <td>
          <form action="updateCartQty.jsp">
            <input type="number" id="qty" name="qty" value="<%=product.getQuantity() %>">
            <input type="hidden" name="id" value="<%=product.getProductId()%>">
              <input type="submit" class="btn btn-primary btn-sm" value="수정">
          </form>    
           </td>
          <td><%=total %></td>
          <td><a href="./removeCart.jsp?id=<%=product.getProductId()%>" 
                   class="badge badge-danger">삭제</a></td>
          </tr>    	 
      	<% }
      %>
      <tr>
        <th></th>
        <th></th>
        <th>총액</th>
        <th><%=sum%></th>
        <th></th>
      </tr>
    </table>
      <table width="100%">
        <tr>
          <td align="right"><a href="./deleteCart.jsp?cartId=<%=cartId%>" 
                             class="btn btn-outline-danger">삭제하기</a></td>
          <td align="left"><a href="./shippingInfo.jsp?cartId=<%=cartId%>" class="btn btn-outline-primary">주문하기</a></td>         
        </tr>
     </table>
    <a href="./products.jsp" class="bbtn btn-outline-primary">&laquo; 쇼핑 계속하기</a>
  </div>
  <hr>
</div>

<jsp:include page="fo.jsp"/>
</body>
</html>