<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
<%@ include file="../include/loginCheck.jspf" %>


<%@ include file="../include/head.jspf" %>
<%@ include file="../include/dongACss.jspf" %>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

<!-- Site wrapper -->
<%@ include file="../include/header.jspf" %>

  <!-- =============================================== -->

  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        동아 일보
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

      <!-- Default box -->
      <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title"> 뉴스피드 </h3>

          <div class="box-tools pull-right">
            <button type="button" class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip"
                    title="Collapse">
              <i class="fa fa-minus"></i></button>
            <button type="button" class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove">
              <i class="fa fa-times"></i></button>
          </div>
        </div>
        <div class="box-body content">
         <table id="example" class="display" cellspacing="0" width="100%">
			<thead>
				<tr>
					<th>썸네일</th>
					<th>기사제목</th>
					<th>작성자</th>
					<th>등록일자</th>
					
				</tr>
			</thead>

			<tbody id="tbody">
				
  
  
			</tbody>
		</table>
         
        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          Footer
        </div>
        <!-- /.box-footer-->
      </div>
      <!-- /.box -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
<%@ include file="../include/footer.jspf" %>

</div>

<%@ include file="../include/script.jspf" %>
<%@ include file="../include/dongAJs.jspf" %>







</body>
</html>
