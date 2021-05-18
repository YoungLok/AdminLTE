<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email = request.getParameter("email");
	String pw = request.getParameter("password");

	if (email != null && email.equals("hankook@naver.com") && pw.equals("1234")) {
		
		response.sendRedirect("/AdminLTE-2.4.0-rc/resources/index.jsp?email="+email);
	} else {
%>
<script>
alert("로그인 정보를 확인해 주세요");
history.go("-1");
</script>
<%
	}
%>