<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*" %>                    

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>불교성전</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
	<link rel="stylesheet" type="text/css" href="./css/common.css">
</head>
<body>
<div data-role="page" id="pageone" data-theme="a">

  <div data-role="header">
    <h1 id="header_text">불교성전(제2편 초기경전)</h1>
  </div>

  <div data-role="main" class="ui-content">
    <ul data-role="listview">
    
<%
String main_no = request.getParameter("main_no");

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try{
	String url = "jdbc:mysql://localhost:3306/audiobuddha?autoReconnect=true&useSSL=false";
	String id = "vegansoft";
	String pw = "nkia123";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(url,id,pw);
	
	String sql = "select main_no, no, name from list_sub where main_no = ?";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,main_no);
	
	rs = pstmt.executeQuery();
	
	while(rs.next()){
		String name = rs.getString("name");
%>
	    <li><a href="content.jsp?name=<%=name%>"><%=name%></a></li>
<%
	}
}catch(Exception e){
	e.printStackTrace();
	out.println("테이블 호출에 실패했습니다.");
}finally{                                                            	// 쿼리가 성공 또는 실패에 상관없이 사용한 자원을 해제 한다.  (순서중요)
	if(rs != null) try{rs.close();}catch(SQLException sqle){}        	// Resultset 객체 해제
	if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}  	// PreparedStatement 객체 해제
	if(conn != null) try{conn.close();}catch(SQLException sqle){}   	// Connection 해제
}
%>

    </ul>
  </div>

  <div data-role="footer" data-position="fixed">
    <h1 id="footer_text">동국대학교 역경원</h1>
  </div>
</div> 
</body>
</html>
