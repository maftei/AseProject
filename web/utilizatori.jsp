<%-- 
    Document   : companii_aeriene
    Created on : Aug 24, 2017, 8:33:30 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Companii aeriene</h1>
        
        <sql:setDataSource
        var="myapp"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost/myapp"
        user="root" password=""
    />
     
    <sql:query var="lista" dataSource="${myDS}">
        SELECT * FROM utilizatori;
    </sql:query>
     
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Lista companii</h2></caption>
            <tr>
                <th>ID</th>
                <th>Nume</th>
                <th>ICAO</th>
                <th>Callsign</th>
            </tr>
            <c:forEach var="utilizatori" items="${lista.rows}">
                <tr>
                    <td><c:out value="${utilzatori.id_utilizator}" /></td>
                    <td><c:out value="${utilizatori.nume}" /></td>
                    <td><c:out value="${utilizatori.parola}" /></td>
                    <td><c:out value="${utilizatori.callsign}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>
    </body>
</html>
