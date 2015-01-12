<%-- 
    Document   : logout
    Created on : 01/12/2014, 23:34:52
    Author     : admbruno
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
 session.removeAttribute("loginUser");

%>
<c:redirect url="index.jsp"/>


