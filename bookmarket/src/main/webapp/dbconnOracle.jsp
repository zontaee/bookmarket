<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
 Connection conn=null;
 try{
	 String url="jdbc:oracle:thin:@220.94.153.57:1521:XE";
	 String user="scott";
	 String password="tiger";
	 
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	 conn=DriverManager.getConnection(url,user,password);
	 if(conn==null){
		 Context init = new InitialContext();
		 DataSource ds = 
		     (DataSource)init.lookup("java:comp/env/jdbc/webmarketOracle");
		      conn=ds.getConnection();
	 }
	 //if(conn!=null) out.print("연결성공");
 }catch(Exception e){
	 out.println("데이터베이스 연결이 실패했습니다");
	 out.print("SQLException : " +e.getMessage());
 }
%>