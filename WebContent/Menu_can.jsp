<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
				<div class="row">
					<div class="col-md-3" style="line-height:99px">
											<div class="logo-wrapper ">
							<a href="http://demo.puriwp.com/jobboard" class="header-logo" title="Job Board">
						<img src="img/logo.png"  /></a>							</a>
						</div><!-- /.logo-wrapper -->
					</div><!-- /.col-md-3 -->
					<div class="col-md-9" style="line-height:99px">
						<div id="menu-wrapper">
							<button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target="#main-menu">
    							<span class="sr-only">Toggle navigation</span>
    							<span class="icon-bar"></span>
    							<span class="icon-bar"></span>
    							<span class="icon-bar"></span>
    						</button>
    						<nav id="main-menu" class="clearfix collapse navbar-collapse" role="navigation">
    						<ul id="menu-menu-1" class="nav-menu"><li id="menu-item-224" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-home menu-item-has-children menu-item-224"><a href="main2.jsp">Home</a>

</li>
 

<li id="menu-item-100" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-100"><a href="<%=request.getContextPath()%>/resume?flag=search1">Post A Resume</a></li>
<li id="menu-item-232" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-232"><a href="<%=request.getContextPath()%>/joblisting?flag=search">Job Listing</a></li>
<li id="menu-item-232" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-232"><a href="Complain.jsp">Complain</a></li>

<li id="menu-item-232" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-232"><a href="<%=request.getContextPath()%>/exam?flag=search2">Exam</a></li>	
	
</li>
<li id="menu-item-881" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-168 current_page_item menu-item-881"><a href="contact.jsp">Contact Us</a></li>
</ul>    						</nav><!-- /#main-menu -->
						</div><!-- /#menu-wrapper -->
					</div><!-- /.col-md-9 -->
				</div><!-- /.row -->
			</div><!-- /.container -->

</body>
</html>