<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.2.0
Version: 3.3.1
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>Metronic | Form Stuff - Form Validation</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta http-equiv="Content-type" content="text/html; charset=utf-8">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/Admin/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/Admin/css/simple-line-icons.min.css" rel="stylesheet"
	type="text/css">
<link href="${pageContext.request.contextPath}/Admin/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/Admin/css/uniform.default.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/Adminc/ss/bootstrap-switch.min.css" rel="stylesheet"
	type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Admin/css/select2.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Admin/css/bootstrap-wysihtml5.css" />
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/Admin/css/bootstrap-markdown.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Admin/css/datepicker.css" />
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="${pageContext.request.contextPath}/Admin/css/components.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/Admin/css/plugins.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/Admin/css/layout.css" rel="stylesheet" type="text/css" />
<link id="style_color" href="${pageContext.request.contextPath}/Admin/css/default.css" rel="stylesheet"
	type="text/css" />
<link href="${pageContext.request.contextPath}/Admin/css/custom.css" rel="stylesheet" type="text/css" />
<!-- END THEME STYLES -->
<link rel="shortcut icon" href="favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body
	class="page-boxed page-header-fixed page-container-bg-solid page-sidebar-closed-hide-logo ">
	<!-- BEGIN HEADER -->
	<div class="page-header navbar navbar-fixed-top">
		<!-- BEGIN HEADER INNER -->
		<jsp:include page="Header.jsp"></jsp:include>
				<!-- END HEADER INNER -->
	</div>
	<!-- END HEADER -->
	<div class="clearfix"></div>
	<div class="container">
		<!-- BEGIN CONTAINER -->
		<div class="page-container">
			<!-- BEGIN SIDEBAR -->
			<div class="page-sidebar-wrapper">
				<!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
				<!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
				<div class="page-sidebar navbar-collapse collapse">
					<!-- BEGIN SIDEBAR MENU -->
					<jsp:include page="Menu.jsp"></jsp:include>
					<!-- END SIDEBAR MENU -->
				</div>
			</div>
			<!-- END SIDEBAR -->
			<!-- BEGIN CONTENT -->
			<div class="page-content-wrapper">
				<div class="page-content">
					<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
					<div class="modal fade" id="portlet-config" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true"></button>
									<h4 class="modal-title">Modal title</h4>
								</div>
								<div class="modal-body">Widget settings form goes here</div>
								<div class="modal-footer">
									<button type="button" class="btn blue">Save changes</button>
									<button type="button" class="btn default" data-dismiss="modal">Close</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
					<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
					<!-- BEGIN STYLE CUSTOMIZER -->
					<div class="theme-panel">
						<div class="toggler tooltips" data-container="body"
							data-placement="left" data-html="true"
							data-original-title="Click to open advance theme customizer panel">
							<i class="icon-settings"></i>
						</div>
						<div class="toggler-close">
							<i class="icon-close"></i>
						</div>
						<div class="theme-options">
							<div class="theme-option theme-colors clearfix">
								<span> THEME COLOR </span>
								<ul>
									<li class="color-default current tooltips" data-style="default"
										data-container="body" data-original-title="Default"></li>
									<li class="color-grey tooltips" data-style="grey"
										data-container="body" data-original-title="Grey"></li>
									<li class="color-blue tooltips" data-style="blue"
										data-container="body" data-original-title="Blue"></li>
									<li class="color-dark tooltips" data-style="dark"
										data-container="body" data-original-title="Dark"></li>
									<li class="color-light tooltips" data-style="light"
										data-container="body" data-original-title="Light"></li>
								</ul>
							</div>
							<div class="theme-option">
								<span> Layout </span> <select
									class="layout-option form-control input-small">
									<option value="fluid" selected="selected">Fluid</option>
									<option value="boxed">Boxed</option>
								</select>
							</div>
							<div class="theme-option">
								<span> Header </span> <select
									class="page-header-option form-control input-small">
									<option value="fixed" selected="selected">Fixed</option>
									<option value="default">Default</option>
								</select>
							</div>
							<div class="theme-option">
								<span> Sidebar Mode</span> <select
									class="sidebar-option form-control input-small">
									<option value="fixed">Fixed</option>
									<option value="default" selected="selected">Default</option>
								</select>
							</div>
							<div class="theme-option">
								<span> Sidebar Style</span> <select
									class="sidebar-style-option form-control input-small">
									<option value="default" selected="selected">Default</option>
									<option value="compact">Compact</option>
								</select>
							</div>
							<div class="theme-option">
								<span> Sidebar Menu </span> <select
									class="sidebar-menu-option form-control input-small">
									<option value="accordion" selected="selected">Accordion</option>
									<option value="hover">Hover</option>
								</select>
							</div>
							<div class="theme-option">
								<span> Sidebar Position </span> <select
									class="sidebar-pos-option form-control input-small">
									<option value="left" selected="selected">Left</option>
									<option value="right">Right</option>
								</select>
							</div>
							<div class="theme-option">
								<span> Footer </span> <select
									class="page-footer-option form-control input-small">
									<option value="fixed">Fixed</option>
									<option value="default" selected="selected">Default</option>
								</select>
							</div>
						</div>
					</div>
					<!-- END STYLE CUSTOMIZER -->
					<!-- BEGIN PAGE HEADER-->
					<h3 class="page-title">
						Form Validation <small></small>
					</h3>
					<div class="page-bar">
						<ul class="page-breadcrumb">
							<li><i class="fa fa-home"></i> <a href="index.html">Home</a>
								<i class="fa fa-angle-right"></i></li>
							<li><a href="#">Form Stuff</a> <i class="fa fa-angle-right"></i>
							</li>
							<li><a href="#">Form Validation</a></li>
						</ul>
						<div class="page-toolbar">
							<div class="btn-group pull-right">
								<button type="button"
									class="btn btn-fit-height grey-salt dropdown-toggle"
									data-toggle="dropdown" data-hover="dropdown" data-delay="1000"
									data-close-others="true">
									Actions <i class="fa fa-angle-down"></i>
								</button>
								<ul class="dropdown-menu pull-right" role="menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- END PAGE HEADER-->
					<!-- BEGIN PAGE CONTENT-->
					<div class="row">
						<div class="col-md-12">
							<!-- BEGIN VALIDATION STATES-->
							<div class="portlet box purple">
								<div class="portlet-title">
									<div class="caption">
										<i class="fa fa-gift"></i>Add Categories
									</div>
									<div class="tools">
										<a href="javascript:;" class="collapse"> </a> <a
											href="#portlet-config" data-toggle="modal" class="config">
										</a> <a href="javascript:;" class="reload"> </a> <a
											href="javascript:;" class="remove"> </a>
									</div>
								</div>
								<div class="portlet-body form">
									<!-- BEGIN FORM-->
									
									<form action="<%=request.getContextPath() %>/category" method="post" class="form-horizontal">
										<input type="hidden" name="flag" value="f">
										<div class="form-body">
											<div class="form-group">
												<label class="control-label col-md-3">Category Name<span
													class="required"> * </span> </label>
												<div class="col-md-4">
													<input type="text" name="categoryname" data-required="1"
														class="form-control" required="required"/>
												</div>
												
											</div>
											
											
											<div class="form-group">
												<label class="control-label col-md-3">Category Description<span
													class="required"> * </span> </label>
												<div class="col-md-4">
													<textarea type="text" name="categorydescription" data-required="1"
														class="form-control" required="required "></textarea>
												</div>
											</div>
											
											
											
											<div class="form-actions">
											<div class="row">
												<div class="col-md-offset-3 col-md-9">
													<button type="submit" class="btn green">Submit</button>
													<button type="reset" class="btn default">Cancel</button>
												</div>
											</div>
										</div>
									
									</form>
									
									<!-- END FORM-->
								</div>
							</div>
							<!-- END VALIDATION STATES-->
						</div>
					</div>

					
					<!-- END PAGE CONTENT-->
				</div>
			</div>
			<!-- END CONTENT -->
			<!-- BEGIN QUICK SIDEBAR -->
			<!--Cooming Soon...-->
			<!-- END QUICK SIDEBAR -->
		</div>
		<!-- END CONTAINER -->
		<!-- BEGIN FOOTER -->
		<jsp:include page="Footer.jsp"></jsp:include>
		<!-- END FOOTER -->
	</div>
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/Admin/js/respond.min.js"></script>
<script src="${pageContext.request.contextPath}/Admin/js/excanvas.min.js"></script> 
<![endif]-->
	<script src="${pageContext.request.contextPath}/Admin/js/jquery.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/jquery-migrate.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="${pageContext.request.contextPath}/Admin/js/jquery-ui-1.10.3.custom.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/jquery.cokie.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/jquery.uniform.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/bootstrap-switch.min.js" type="text/javascript"></script>
	<!-- END CORE PLUGINS -->
	<!-- BEGIN PAGE LEVEL PLUGINS -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/jquery.validate.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/additional-methods.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/select2.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/bootstrap-datepicker.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/wysihtml5-0.3.0.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/bootstrap-wysihtml5.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/ckeditor.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/bootstrap-markdown.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/Admin/js/markdown.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL STYLES -->
	<script src="${pageContext.request.contextPath}/Admin/js/metronic.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/layout.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/demo.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/Admin/js/form-validation.js"></script>
	<!-- END PAGE LEVEL STYLES -->
	<script>
		jQuery(document).ready(function() {
			// initiate layout and plugins
			Metronic.init(); // init metronic core components
			Layout.init(); // init current layout
			Demo.init(); // init demo features
			FormValidation.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
	<script>
		(function(i, s, o, g, r, a, m) {
			i['GoogleAnalyticsObject'] = r;
			i[r] = i[r] || function() {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date();
			a = s.createElement(o), m = s.getElementsByTagName(o)[0];
			a.async = 1;
			a.src = g;
			m.parentNode.insertBefore(a, m)
		})(window, document, 'script',
				'//www.google-analytics.com/analytics.js', 'ga');
		ga('create', 'UA-37564768-1', 'keenthemes.com');
		ga('send', 'pageview');
	</script>
</body>

<!-- END BODY -->
</html>