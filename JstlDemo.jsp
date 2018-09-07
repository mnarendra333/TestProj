<%@page import="java.util.List,java.util.ArrayList"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>


<c:set value="4000" var="salary" scope="session"/>

<c:if test="${salary>2000}">
		
	<c:out value="${salary}"/>
			
</c:if>


<%

	List<String> listOfLap = new ArrayList<String>();
	listOfLap.add("lenovo");
	listOfLap.add("lenovo-t100");
	listOfLap.add("lenovo-t700");
	listOfLap.add("lenovo-t440");
	request.setAttribute("list",listOfLap);
	
	

%>


<c:set value="${listOfLap}" var="list" scope="request"/>



<c:forEach items = "${list}" var="str">

	<c:out value="${str}"/>

</c:forEach>









