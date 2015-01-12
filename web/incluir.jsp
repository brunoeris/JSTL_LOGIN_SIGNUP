<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>

    <s:setDataSource var="ds" driver="com.mysql.jdbc.Driver"
                       url="jdbc:mysql://localhost/atv_jstl_login"
                       user="root" password=""/>
    
    <s:update dataSource="${ds}" sql="INSERT INTO users (username,password) VALUES (?,?);">
        <s:param value="${param.email}"></s:param>
        <s:param value="${param.pass}"></s:param>
    </s:update>

<c:out value="Cadastrado com sucesso!"/>
<a href="index.jsp"> Voltar </a>