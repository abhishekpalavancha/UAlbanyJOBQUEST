<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<c:if test="${sessionScope.usertype eq 'jobseeker'}">
  	<jsp:include page="Menu_can.jsp"></jsp:include>
</c:if>
<c:if test="${sessionScope.usertype eq 'joblister'}">
  	<jsp:include page="menu_com.jsp"></jsp:include>
</c:if>
<%-- <c:if test="${sessionScope.usertype eq 'admin'}">
  	<jsp:include page="../Admin/index.jsp"></jsp:include>
</c:if> --%> --%>