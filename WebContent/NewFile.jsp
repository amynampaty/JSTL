<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ page import="java.util.Date,java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<c:set var="dummyName" value="dummyValue2" />
<c:out value="${dummyName}"> No Name </c:out>

<c:if test="${dummyName==null}">
Empty
</c:if>
<BR/>
<BR/>
<BR/>
<c:choose>
<c:when test="${dummyName==null}">
Empty
</c:when>

<c:when test="${dummyName=='dummyValue'}">
dummyValue
</c:when>

<c:otherwise>
Something
</c:otherwise>

</c:choose>

<BR/>
<BR/>
<BR/>
<c:forEach var="headerValue" items="${header}">
${headerValue.key},${headerValue.value} <BR/>
</c:forEach>

<BR/>
<BR/>
<BR/>


<c:set var="amt" value="12345688.89123"/>
<BR/>
Default:
<fmt:formatNumber value="${amt}" type="currency"/>
<BR/>
maxIntegerDigits="3":
<fmt:formatNumber type="number" maxIntegerDigits="3"
value="${amt }"/>
<BR/>

groupingUsed="false":
<fmt:formatNumber type="number" groupingUsed="false"
value="${amt }"/>

pattern="###.###E0":
<fmt:formatNumber type="number" pattern="###.###E0"
value="${amt }"/>
<BR/>
<BR/>
<BR/>
<c:set var="today" value="<%=new java.util.Date()%>"/>
<BR/>
type="time"
<fmt:formatDate type="time" value="${today}"/>
<BR/>
type="date"
<fmt:formatDate type="date" value="${today}"/>
<BR/>
type="both"
<fmt:formatDate type="both" value="${today}"/>

