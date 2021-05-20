<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="src.util.Cookies"%>
<%
	response.addCookie(Cookies.createCookie("AUTH", "", "/", 0));
	session.invalidate();
%>

<script>alert("로그아웃 되었습니다");
	window.location="/AdminLTE-2.4.0-rc/view/login/login.jsp";
</script>

