<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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


// System.out.println("name_left: " + name_left);
// System.out.println("name_right: " + name_right);
// System.out.println("name_mp3: " + name_mp3);
// System.out.println("name_dir: " + name_dir);
%>

  <div data-role="main" class="ui-content">
	<h3><%=name_left%> <%=name_right%></h3>

	<audio src="./mp3/<%=name_dir%>/<%=name_mp3%>" controls="controls">
		Your browser does not support the audio element.
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
