<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ page import="src.util.Cookies"%>
   
<%
	String email = request.getParameter("email");
	String pw = request.getParameter("password");
	String sid = session.getId();


	if (email != null && email.equals("hankook@naver.com") && pw.equals("1234")) {
		session.setAttribute("email", email);
		response.addCookie(Cookies.createCookie("AUTH", sid, "/", -1));
		response.sendRedirect("/AdminLTE-2.4.0-rc/view/examples/index.jsp");
	} else {
%>
<script>
alert("로그인 정보를 확인해 주세요");
history.go("-1");
</script>
<%
	}
%>