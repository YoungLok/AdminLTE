<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>



<%@ include file="../include/head.jspf" %>
<%@ include file="../include/guestBookHead.jspf" %>

<%@ include file="../include/header.jspf" %>

<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

<!-- Site wrapper -->


  <!-- =============================================== -->

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        방명록
        <small>it all starts here</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
<form action="writeMessage.jsp" method="post">
		이름: <input type="text" name="guestName"> <br> 암호: <input
			type="password" name="password"> <br> 메시지:
		<textarea name="message" cols="30" rows="3"></textarea>
		<br> <input type="submit" value="메시지 남기기" />
	</form>
	<hr>
	<c:if test="${viewData.isEmpty()}">
등록된 메시지가 없습니다.
</c:if>

	<c:if test="${!viewData.isEmpty()}">
		<table border="1">
			<c:forEach var="message" items="${viewData.messageList}">
				<tr>
					<td>메시지 번호: ${message.id} <br /> 손님 이름: ${message.guestName} <br />
						메시지: ${message.message} <br /> <a
						href="confirmDeletion.jsp?messageId=${message.id}">[삭제하기]</a>
					</td>
				</tr>
			</c:forEach>
		</table>

		<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount}">
			<a href="guestBook.jsp?page=${pageNum}">[${pageNum}]</a>
		</c:forEach>

	</c:if>
      <!-- Default box -->
  
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<%@ include file="../include/footer.jspf" %>

</div>

<%@ include file="../include/script.jspf" %>








</body>
</html>
