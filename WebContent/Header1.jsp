<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div id="header-bar">
		<div class="container">
			<ul class="jobboard-social-media">

				<!-- <li><a href="https://twitter.com/"><i class="fa fa-twitter"></i></a></li>

				<li><a href="https://plus.google.com/"><i
						class="fa fa-google-plus"></i></a></li> -->

				<li><a href="https://www.linkedin.com/"><i
						class="fa fa-linkedin"></i></a></li>

				<!-- <li><a href="https://dribbble.com/"><i
						class="fa fa-dribbble"></i></a></li>

				<li><a href="https://www.facebook.com/"><i
						class="fa fa-facebook"></i></a></li>

				<li><a href="http://www.youtube.com/"><i
						class="fa fa-youtube"></i></a></li>

				<li><a href="https://www.flickr.com/"><i
						class="fa fa-flickr"></i></a></li>

				<li><a href="https://vimeo.com/"><i
						class="fa fa-vimeo-square"></i></a></li> -->

			</ul>
			<!-- /.social-media -->

			<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

			<c:if test="${empty sessionScope.loginID }">
				<div class="jobboard-login-register clearfix">
					<a class="btn btn-header-register" href="register.jsp">REGISTER</a>
					<a class="btn btn-header-login" href="login.jsp">LOG IN</a>

				</div>
				<!-- /.container -->
			</c:if>

			<c:if test="${not empty sessionScope.loginID }">
				<div class="jobboard-login-register clearfix">
					<div class="user_menu dropdown">
					
						<a data-toggle="dropdown" href="#">
						<span>hii,${sessionScope.username}</span><i class="fa fa-caret-down"></i></a>
						
						<div class="dropdown-menu clearfix" role="menu">
						
							<ul>

								<c:if test="${sessionScope.usertype eq 'jobseeker' }">
									<li><a
										href="<%=request.getContextPath()%>/candidate?candidateid=${sessionScope.loginID}&flag=load">Profile</a>

									</li>
									<%-- <li>
							<a href="<%=request.getContextPath()%>/candidate?candidateid=${sessionScope.loginID}&flag=edit">Edit Profile</a>
							
						</li> --%>
									<li><a href="logout">Logout</a></li>
								</c:if>


								<c:if test="${sessionScope.usertype eq 'joblister' }">
									<li><a
										href="<%=request.getContextPath()%>/company?companyid=${sessionScope.loginID}&flag=load">Profile</a>

									</li>
									<%-- <li>
							<a href="<%=request.getContextPath()%>/candidate?candidateid=${sessionScope.loginID}&flag=edit">Edit Profile</a>
							
						</li> --%>
									<li><a href="logout">Logout</a></li>
								</c:if>


							</ul>

						</div>
					</div>
					<img src="<%=request.getContextPath() %>/doc/${sessionScope.path}"
						class='avatar avatar-70 photo' height='35' width='70' />
				</div>
			</c:if>



		</div>
	</div>
</body>
</html>