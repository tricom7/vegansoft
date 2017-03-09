<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import = "java.sql.*" %>

<%!
public static int ordinalIndexOf(String str, String substr, int n) {
    int pos = str.indexOf(substr);
    while (--n > 0 && pos != -1)
        pos = str.indexOf(substr, pos + 1);
    return pos;
}
%>
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

	<%
	String name = request.getParameter("name");
	int position_3rd = ordinalIndexOf(name, ".", 3);
	int position_2nd = ordinalIndexOf(name, ".", 2);
	
	String name_left = name.substring(0, position_3rd);
	String name_right = name.substring(position_3rd+1);
	String name_mp3 = name_left+".mp3";
	String name_dir = name.substring(0, position_2nd);
	%>

<%
String remote_addr = request.getRemoteAddr();
String remote_host = request.getRemoteHost();
String rlnclientipaddr = request.getHeader("rlnclientipaddr");
String x_forwarded_for = request.getHeader("x-forwarded-for");
%>

<%
Connection conn = null;
PreparedStatement pstmt = null;

try{
	String url = "jdbc:mysql://localhost:3306/audiobuddha?autoReconnect=true&useSSL=false";
	String id = "vegansoft";
	String pw = "nkia123";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn=DriverManager.getConnection(url,id,pw);
	
	String sql = "insert into access_log (timestamp, remote_addr, remote_host, rlnclientipaddr, x_forwarded_for, page_id) values (now(), ?, ?, ?, ?, ?)";
	pstmt = conn.prepareStatement(sql);
	pstmt.setString(1,remote_addr);
	pstmt.setString(2,remote_host);
	pstmt.setString(3,rlnclientipaddr);
	pstmt.setString(4,x_forwarded_for);
	pstmt.setString(5,name_left);
	
	pstmt.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
	out.println("테이블 호출에 실패했습니다.");
}finally{                                                            	// 쿼리가 성공 또는 실패에 상관없이 사용한 자원을 해제 한다.  (순서중요)
	if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}  	// PreparedStatement 객체 해제
	if(conn != null) try{conn.close();}catch(SQLException sqle){}   	// Connection 해제
}

%>


  <div data-role="main" class="ui-content">
	<h3><%=name_left%> <%=name_right%></h3>
	<audio id="warp" preload="auto" controls loop>
	    <source src="./mp3/<%=name_dir%>/<%=name_mp3%>" type="audio/mp3">
	    Your browser does not support HTML5 audio element.
	</audio>

	</br></br>
	이 오디오는 동국대학교 역경원에서 간행된 '불교성전'의 일부분에 대해 비 상용으로 오디오 파일 제작 및 배포를 허락해 주셔서 만들어진 것입니다.</br>
	전체 5편으로 구성된 책의 내용 중 제2편에 해당하는 초기경전만을 오디오 파일로 만들었습니다.</br>
	허락해 주신 동국대 역경원에 깊이 감사드립니다.</br>
	</br>
	MP3 파일은 http://cafe.naver.com/audiobuddha에서 PC로 다운로드 받으실 수도 있습니다.</br>
	<div data-role="controlgroup">
	  <a href="http://www.tripitaka.or.kr" class="ui-btn">동국대 역경원</a>
	  <a href="http://book.naver.com/bookdb/book_detail.nhn?bid=199219" class="ui-btn">불교성전 도서 안내</a>
	  <a href="http://cafe.naver.com/audiobuddha" class="ui-btn">오디오 붓다</a>
	</div>
  </div>
  
  <div data-role="footer" data-position="fixed">
    <h1 id="footer_text">동국대학교 역경원</h1>
  </div>
</div> 
</body>
</html>
