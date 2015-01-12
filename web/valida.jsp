<%-- 
    Document   : valida
    Created on : 01/12/2014, 22:45:48
    Author     : admbruno
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Authentication page</title>
  </head>
  <body>
    <c:if test="${ empty param.username or empty param.password}">
      <c:redirect url="index.jsp" >
              <c:param name="errMsg" value="Please Enter UserName and Password" />
      </c:redirect>
       
    </c:if>
     
    <c:if test="${not empty param.username and not empty param.password}">
      <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/atv_jstl_login"
                       user="root" password=""/>
 
      <s:query dataSource="${ds}" var="selectQ">
        select count(*) as kount from users
        where username = ?
        and password = ?
        <s:param value="${param.username}"/>
        <s:param value="${param.password}"/>
      </s:query>
 
      <c:forEach items="${selectQ.rows}" var="r">
        <c:choose>
          <c:when test="${r.kount gt 0}">
            <c:set scope="session"
                   var="loginUser"
                   value="${param.username}"/>
            <c:redirect url="main.jsp"/>
          </c:when>
          <c:otherwise>
            <c:redirect url="index.jsp" >
              <c:param name="errMsg" value="Usuario/senha invalido" />
            </c:redirect>
          </c:otherwise>
        </c:choose>
 
      </c:forEach>
 
    </c:if>
 
  </body>
</html>


