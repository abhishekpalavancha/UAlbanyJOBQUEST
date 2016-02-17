<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insertquesti title here</title>
</head>
<body>
<div class="page-sidebar navbar-collapse collapse">
				<!-- BEGIN SIDEBAR MENU -->
				<ul class="page-sidebar-menu page-sidebar-menu-hover-submenu " data-auto-scroll="true" data-slide-speed="200">
					<li class="start active ">
						<a href="index.html">
						<i class="icon-home"></i>
						<span class="title">Dashboard</span>
						<span class="selected"></span>
						</a>
					</li>
					
					<%-- <li>
						<a href="javascript:;">
						<i class="icon-settings"></i>
						<span class="title">Manage User</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="<%=request.getContextPath() %>/jobtype?flag=search">
								Search User</a>
							</li>
						</ul>
					</li> --%>
					<li>
						<a href="javascript:;">
						<i class="icon-settings"></i>
						<span class="title">Manage Categories</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="../Admin/add_categories.jsp">
						
								Add Category</a>
							</li>
							<li>
								<a href="<%=request.getContextPath() %>/category?flag=load">
							
								Search Category</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-settings"></i>
						<span class="title">Manage Subcategories</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="<%=request.getContextPath() %>/subcategory?flag=load">
								<span class="badge badge-roundless badge-danger"></span>Add Subcategory</a>
							</li>
							
							<li>
								<a href="<%=request.getContextPath() %>/subcategory?flag=search">
								<span class="badge badge-roundless badge-warning"></span>Search SubCategory</a>
							</li>
						
						</ul>
					</li>
					<!-- BEGIN FRONTEND THEME LINKS -->
					
					<!-- END FRONTEND THEME LINKS -->
					<li>
						<a href="javascript:;">
						<i class="icon-settings"></i>
						<span class="title">Manage Question</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="<%=request.getContextPath() %>/question?flag=load">
								Add Question</a>
							</li>
							<li>
								<a href="<%=request.getContextPath() %>/question?flag=search">
								Search Question</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-settings"></i>
						<span class="title">Manage Location</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="../Admin/add_country.jsp">
								Country</a>
							</li>
							<li>
								<a href="<%=request.getContextPath() %>/country?flag=search">
								Search Country</a>
							</li>
							
							<li>
								<a href="<%=request.getContextPath() %>/state?flag=load">
								State</a>
							</li>
							<li>
								<a href="<%=request.getContextPath() %>/state?flag=search">
								Search State</a>
							</li>
							
							<li>
								<a href="<%=request.getContextPath() %>/city?flag=load">
								City</a>
							</li>
							<li>
								<a href="<%=request.getContextPath() %>/city?flag=search">
								Search City</a>
							</li>
							
							
														
							
						</ul>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-settings"></i>
						<span class="title">Manage Test</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="<%=request.getContextPath() %>/exam?flag=load">
									Add Test</a>
							</li>
							<li>
								<a href="<%=request.getContextPath() %>/exam?flag=search">
									Search Test</a>
							</li>
							<li>
								<a href="<%=request.getContextPath() %>/viewresult?flag=load">
									View Result</a>
							</li>
							
						</ul>
						</li>
						<li>
						<a href="javascript:;">
						<i class="icon-settings"></i>
						<span class="title">Manage Education</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="../Admin/add_education.jsp">
									Add Education	</a>
							</li>
							<li>
								<a href="searcheducation.jsp">
									Search Education	</a>
							</li>
							
							<li>
								<a href="../Admin/add_designation.jsp">
									Add Designation</a>
							</li>
							<li>
								<a href="searchdesignation.jsp">
									Search Designation</a>
							</li>
							
							<li>
								<a href="add_jobskill.jsp">
									Add Jobskill</a>
							</li>
							<li>
								<a href="add_jobtype.jsp">
								Add Jobtype</a>
							</li>
							<li>
								<a href="<%=request.getContextPath() %>/stream?flag=load">
								Add Stream</a>
							</li>
							<li>
								<a href="searchstream.jsp">
								Search Stream</a>
							</li>
							
							
						</ul>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-settings"></i>
						<span class="title">Manage Package</span>
						<span class="arrow "></span>
						</a>
						
						<ul class="sub-menu">
							<li>
								<a href="package.jsp">
								Add Package</a>
							</li>
							<li>
								<a href="<%=request.getContextPath() %>/Package?flag=load">
								Search Package</a>
							</li>
							
							
							
							
							
						</ul>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-settings"></i>
						<span class="title">Manage Complaints</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							 <li>
								<a href="complain.jsp">
								Search Complaint</a>
							</li>
				
						</ul>
					</li>
			
							
							
							
							
							
			
						
						<ul class="sub-menu">
							<!-- <li>
								<a href="page_todo.html">
								<i class="icon-hourglass"></i>
								<span class="badge badge-danger">4</span>Todo</a>
							</li>
							<li>
								<a href="extra_profile.html">
								<i class="icon-user-following"></i>
								<span class="badge badge-success badge-roundless">new</span>New User Profile</a>
							</li>
							<li>
								<a href="inbox.html">
								<i class="icon-envelope"></i>
								<span class="badge badge-danger">4</span>Inbox</a>
							</li>
							<li>
								<a href="extra_profile_old.html">
								<i class="icon-user-following"></i>
								Old User Profile</a>
							</li>
							<li>
								<a href="extra_lock.html">
								<i class="icon-lock"></i>
								Lock Screen</a>
							</li>
							<li>
								<a href="extra_faq.html">
								<i class="icon-info"></i>
								FAQ</a>
							</li>
							<li>
								<a href="page_portfolio.html">
								<i class="icon-feed"></i>
								Portfolio</a>
							</li>
							<li>
								<a href="page_timeline.html">
								<i class="icon-clock"></i>
								<span class="badge badge-info">4</span>Timeline</a>
							</li>
							<li>
								<a href="page_coming_soon.html">
								<i class="icon-flag"></i>
								Coming Soon</a>
							</li>
							<li>
								<a href="page_calendar.html">
								<i class="icon-calendar"></i>
								<span class="badge badge-danger">14</span>Calendar</a>
							</li>
							<li>
								<a href="extra_invoice.html">
								<i class="icon-flag"></i>
								Invoice</a>
							</li>
							<li>
								<a href="page_blog.html">
								<i class="icon-speech"></i>
								Blog</a>
							</li>
							<li>
								<a href="page_blog_item.html">
								<i class="icon-link"></i>
								Blog Post</a>
							</li>
							<li>
								<a href="page_news.html">
								<i class="icon-eye"></i>
								<span class="badge badge-success">9</span>News</a>
							</li>
							<li>
								<a href="page_news_item.html">
								<i class="icon-bell"></i>
								News View</a>
							</li>
 -->						</ul>
					</li> 
					<!-- <li>
						<a href="javascript:;">
						<i class="icon-present"></i>
						<span class="title">Extra</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="page_about.html">
								About Us</a>
							</li>
							<li>
								<a href="page_contact.html">
								Contact Us</a>
							</li>
							<li>
								<a href="extra_search.html">
								Search Results</a>
							</li>
							<li>
								<a href="extra_pricing_table.html">
								Pricing Tables</a>
							</li>
							<li>
								<a href="extra_404_option1.html">
								404 Page Option 1</a>
							</li>
							<li>
								<a href="extra_404_option2.html">
								404 Page Option 2</a>
							</li>
							<li>
								<a href="extra_404_option3.html">
								404 Page Option 3</a>
							</li>
							<li>
								<a href="extra_500_option1.html">
								500 Page Option 1</a>
							</li>
							<li>
								<a href="extra_500_option2.html">
								500 Page Option 2</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-folder"></i>
						<span class="title">Multi Level Menu</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="javascript:;">
								<i class="icon-settings"></i> Item 1 <span class="arrow"></span>
								</a>
								<ul class="sub-menu">
									<li>
										<a href="javascript:;">
										<i class="icon-user"></i>
										Sample Link 1 <span class="arrow"></span>
										</a>
										<ul class="sub-menu">
											<li>
												<a href="#"><i class="icon-power"></i> Sample Link 1</a>
											</li>
											<li>
												<a href="#"><i class="icon-paper-plane"></i> Sample Link 1</a>
											</li>
											<li>
												<a href="#"><i class="icon-star"></i> Sample Link 1</a>
											</li>
										</ul>
									</li>
									<li>
										<a href="#"><i class="icon-camera"></i> Sample Link 1</a>
									</li>
									<li>
										<a href="#"><i class="icon-link"></i> Sample Link 2</a>
									</li>
									<li>
										<a href="#"><i class="icon-pointer"></i> Sample Link 3</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="javascript:;">
								<i class="icon-globe"></i> Item 2 <span class="arrow"></span>
								</a>
								<ul class="sub-menu">
									<li>
										<a href="#"><i class="icon-tag"></i> Sample Link 1</a>
									</li>
									<li>
										<a href="#"><i class="icon-pencil"></i> Sample Link 1</a>
									</li>
									<li>
										<a href="#"><i class="icon-graph"></i> Sample Link 1</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">
								<i class="icon-bar-chart"></i>
								Item 3 </a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-user"></i>
						<span class="title">Login Options</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="login.html">
								Login Form 1</a>
							</li>
							<li>
								<a href="login_soft.html">
								Login Form 2</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="javascript:;">
						<i class="icon-envelope-open"></i>
						<span class="title">Email Templates</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="email_newsletter.html">
								Responsive Newsletter<br>
								Email Template</a>
							</li>
							<li>
								<a href="email_system.html">
								Responsive System<br>
								Email Template</a>
							</li>
						</ul>
					</li>
					<li class="last ">
						<a href="javascript:;">
						<i class="icon-pointer"></i>
						<span class="title">Maps</span>
						<span class="arrow "></span>
						</a>
						<ul class="sub-menu">
							<li>
								<a href="maps_google.html">
								Google Maps</a>
							</li>
							<li>
								<a href="maps_vector.html">
								Vector Maps</a>
							</li>
						</ul>
					</li>
				</ul>
 -->				<!-- END SIDEBAR MENU -->
			</div>
</body>
</html>