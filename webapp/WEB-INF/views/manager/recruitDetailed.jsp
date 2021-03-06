<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
	<head>
		 <jsp:include page="commons/commons-header.jsp"></jsp:include>
	</head>

	<body class="no-skin">
	    <!-- 导航栏 start		-->
		  <jsp:include page="commons/commons-navbar.jsp"></jsp:include>
		<!-- 导航栏 end -->

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>
            <!--- 左边栏-菜单 start -->
		         <jsp:include page="commons/commons-sidebar.jsp"></jsp:include>
			<!--- 左边栏-菜单 end -->

			<!--- 内容主体 start -->
			<div class="main-content">
				<div class="main-content-inner">
				    <!-- 向导栏 start-->
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
								<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">首页</a>
							</li>

							<li>
								<a href="#">招聘管理</a>
							</li>
							<li class="active">职位发布管理</li>
						</ul><!-- /.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>
					<!-- 向导栏 end-->

					<!-- 内容页 start -->
					<div class="page-content">
				          			<div class="widget-box transparent" id="widget-box-13">
												<div class="widget-header">
													<h4 class="widget-title lighter">职位发布明细</h4>

													<div class="widget-toolbar no-border">
														<ul class="nav nav-tabs" id="myTab2">
															<li  class="active">
																<a data-toggle="tab" href="#recruitJobAdd">明细</a>
															</li>

													

															<li>
																<a data-toggle="tab" href="javascript:void(0)" onclick="window.location.href='${pageContext.request.contextPath }/recruit/toRecruitList.gkd'">列表</a>
															</li>
														</ul>
													</div>
												</div>

												<div class="widget-body">
													<div class="widget-main padding-12 no-padding-left no-padding-right">
														<div class="tab-content padding-4">
														<p style="color: red;">${requestScope.recruit_detailed_msg }</p>
															<div id="recruitJobAdd" class="tab-pane in active ">
																<div class="scrollable-horizontal" data-size="800">
																	<form action="javascript:void(0)" method="post" class="form-horizontal" role="form">
																	    <table style="margin-left: 100px">
					 												    	<%-- 第一行 --%>
																	    	<tr>
																	    		<td style="width:400px;">
																	    			<div class="form-group">
																						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 部门:</label>
			
																						<div class="col-sm-9">
																							<select  name="dept_id" >
																							  	<option value="${requestScope.recruit.job.dept.dept_id }" selected="selected">${requestScope.recruit.job.dept.dept_name }</option>
																							</select>
																						</div>
																					</div>
																	    		</td>
																	    		
																	    		<td style="width:400px;">
																	    			<div class="form-group">
																						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 招聘类型:</label>
			
																						<div class="col-sm-9">
																							<select  name="recruit_sort" >
																								<c:choose>
																									<c:when test="${recruit.recruit_sort==0 }">
																										
																							  			 <option value="0" selected="selected">校园招聘</option>
																							   			<option value="1">社会招聘</option>
																									</c:when>
																									<c:otherwise>
																										
																							  	 		<option value="0">校园招聘</option>
																							   			<option value="1" selected="selected">社会招聘</option>
																									</c:otherwise>
																								</c:choose>
																							</select>
																						</div>
																					</div>
																	    		</td>
																	    		<td style="width:400px;">
																	    			<div class="form-group">
																						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 招聘人数:</label>
			
																						<div class="col-sm-9">
																							<input readonly="readonly"  name="recruit_num" type="text" id="form-field-1" value="${recruit.recruit_num }" placeholder=" 招聘人数 " class="col-xs-10 col-sm-5" />
																						</div>
																					</div>
																	    		</td>
																	    	</tr>
																	    	<%-- 第二行 --%>
																	    	<tr>
																	    		<td style="width:400px">
																	    			<div class="form-group">
																						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 职位名称:</label>
			
																						<div class="col-sm-9">
																							<select  name="job_id" >
																							  	<option value="${requestScope.recruit.job.job_id }" selected="selected">${requestScope.recruit.job.job_name }</option>
																							</select>
																						</div>
																					</div>
																	    		</td>
																	    		<td style="width:400px">
																	    			<div class="form-group">
																						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 职位编码:</label>
			
																						<div class="col-sm-9">
																							<input readonly="readonly"  name="job_code" type="text" value="${requestScope.recruit.job.job_code }" id="form-field-1" placeholder=" 职位编码 " class="col-xs-10 col-sm-5" />
																						</div>
																					</div>
																	    		</td>
																	    		<td style="width:400px">
																	    			<div class="form-group">
																						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 职位分类:</label>
			
																						<div class="col-sm-9">
																							<select  name="classify_id" >
																							  	<option value="${requestScope.recruit.job.classify.classify_id }" selected="selected">${requestScope.recruit.job.classify.classify_name }</option>
																							</select>
																						</div>
																					</div>
																	    		</td>
																	    	</tr>
																	    	<%-- 第三行 --%>
																	    	<tr>
																	    		<td style="width:400px">
																	    			<div class="form-group">
																						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 登记人:</label>
			
																						<div class="col-sm-9">
																							<input readonly="readonly" name="admin_account" value="${requestScope.recruit.admin.admin_account }" type="text" id="form-field-1" placeholder=" 登记人 " class="col-xs-10 col-sm-5" />
																						</div>
																					</div>
																	    		</td>
																	    		<td style="width:400px">
																	    			<div class="form-group">
																						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 登记时间:</label>
			
																						<div class="col-sm-9">
																							<input readonly="readonly"  name="recruit_start" type="text" id="form-field-1" value="${requestScope.recruit.recruit_start }" placeholder=" 登记时间 " class="col-xs-10 col-sm-5" />
																						</div>
																					</div>
																	    		</td>
																	    		<td style="width:400px">
																	    			<div class="form-group">
																						<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 截至日期:</label>
			
																						<div class="col-sm-9">
																							<input readonly="readonly"  name="recruit_end" type="text" id="form-field-1" value="${recruit.recruit_end }" placeholder=" 截至日期 " class="col-xs-10 col-sm-5" />
																						</div>
																					</div>
																	    		</td>
																	    	</tr>
																	    	<%-- 第四行 --%>
																	    	<tr>
																	    		<td style="width:500px" colspan="3">
																	    			<div class="form-group">
																						<label class="col-sm-3 control-label no-padding-right" for="form-field-1" style="width:100px"> 职位描述:</label>
			
																						<div class="col-sm-9">
																							<textarea readonly="readonly"  style="width:1000px;height: 100px;left: 10px"  name="job_description">${requestScope.recruit.job.job_description }</textarea>
																						</div>
																					</div>
																	    		</td>
																	    	</tr>
																	    	<%-- 第五行 --%>
																	    	<tr>
																	    		<td style="width:500px" colspan="3">
																	    			<div class="form-group">
																						<label  class="col-sm-3 control-label no-padding-right" for="form-field-1" style="width:100px"> 招聘要求:</label>
			
																						<div class="col-sm-9">
																							<textarea readonly="readonly"  style="width:1000px;height: 100px;left: 10px"  name="recruit_req">${requestScope.recruit.recruit_req }</textarea>
																						</div>
																					</div>
																	    		</td>
																	    		<td style="width:400px">
																	    			
																	    		</td>
																	    		<td style="width:400px">
																	    			
																	    		</td>
																	    	</tr>
																	    </table>
																		<div class="form-group">
																			
																			<div class="col-sm-7 text-right">
																				<button type="button" class="btn btn-primary" onclick="window.location.href='${pageContext.request.contextPath }/recruit/toRecruitList.gkd'">返回</button>
																			</div>
																		</div>
																	</form>

																</div>
															</div>

												
														</div>
													</div>
												</div>
											</div>
					</div><!-- /.page-content -->
					<!-- 内容页 end -->
				</div>
			</div><!-- /.main-content -->
			<!--- 内容主体 end -->

			 <!--页尾 start -->
			<jsp:include page="commons/commons-footer.jsp"></jsp:include>

		
			 <!--页尾 end -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="${pageContext.request.contextPath }/lib/assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="${pageContext.request.contextPath }/lib/assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath }/lib/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath }/lib/assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->
		<script src="${pageContext.request.contextPath }/lib/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath }/lib/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
	</body>
</html>
