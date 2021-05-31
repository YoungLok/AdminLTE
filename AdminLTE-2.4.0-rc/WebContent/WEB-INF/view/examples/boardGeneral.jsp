<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header.jspf" %>




		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					일반 게시판 <small>it all starts here</small>
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
						<h3 class="box-title">Title</h3>

						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool"
								data-widget="collapse" data-toggle="tooltip" title="Collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool"
								data-widget="remove" data-toggle="tooltip" title="Remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
					<div class="box-body">
						<!-- Start creating your amazing application! -->







						<link rel="stylesheet" type="text/css"
							href="css/DataTables/jquery.dataTables.min.css">
						<link rel="stylesheet" type="text/css"
							href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css">

						<script type="text/javascript" language="javascript"
							src="https://code.jquery.com/jquery-1.12.4.js"></script>
						<!-- <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script> -->
						<script type="text/javascript" language="javascript"
							src="js/DataTables/jquery.dataTables.min.js"></script>


						<script type="text/javascript" class="init">
							$(document).ready(function() {

								$('#example').DataTable({
									"language" : {
										"sEmptyTable" : "데이터가 없습니다",
										"sInfo" : "_START_ - _END_ / _TOTAL_",
										"sInfoEmpty" : "0 - 0 / 0",
										"sInfoFiltered" : "(총 _MAX_ 개)",
										"sInfoPostFix" : "",
										"sInfoThousands" : ",",
										"sLengthMenu" : "페이지당 줄수 _MENU_",
										"sLoadingRecords" : "읽는중...",
										"sProcessing" : "처리중...",
										"sSearch" : "검색:",
										"sZeroRecords" : "검색 결과가 없습니다",
										"oPaginate" : {
											"sFirst" : "처음",
											"sLast" : "마지막",
											"sNext" : "다음",
											"sPrevious" : "이전"
										},
										"oAria" : {
											"sSortAscending" : ": 오름차순 정렬",
											"sSortDescending" : ": 내림차순 정렬"
										}
									}
								}); // end of $('#example').DataTable

							}); // end of $(document).ready(function()
						</script>




						<div class="content">
							<table id="example" class="display" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>이름</th>
										<th>직위</th>
										<th>사무실</th>
										<th>나이</th>
										<th>입사일</th>
										<th>급여</th>
									</tr>
								</thead>
								<tfoot>
									<hr>
								</tfoot>
								<tbody>
									<tr>
										<td>Tiger Nixon</td>
										<td>System Architect</td>
										<td>서울</td>
										<td>61</td>
										<td>2011/04/25</td>
										<td>$320,800</td>
									</tr>
									<tr>
										<td>Garrett Winters</td>
										<td>회계사</td>
										<td>Tokyo</td>
										<td>63</td>
										<td>2011/07/25</td>
										<td>$170,750</td>
									</tr>
									<tr>
										<td>Ashton Cox</td>
										<td>Junior Technical Author</td>
										<td>San Francisco</td>
										<td>66</td>
										<td>2009/01/12</td>
										<td>$86,000</td>
									</tr>
									<tr>
										<td>Cedric Kelly</td>
										<td>Senior Javascript Developer</td>
										<td>서울</td>
										<td>22</td>
										<td>2012/03/29</td>
										<td>$433,060</td>
									</tr>
									<tr>
										<td>Airi Satou</td>
										<td>회계사</td>
										<td>Tokyo</td>
										<td>33</td>
										<td>2008/11/28</td>
										<td>$162,700</td>
									</tr>
								</tbody>
							</table>
						</div>









					</div>
					<!-- /.box-body -->
					<div class="box-footer">Footer</div>
					<!-- /.box-footer-->
				</div>
				<!-- /.box -->

			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->




<%@ include file="../include/footer_2.jspf" %>