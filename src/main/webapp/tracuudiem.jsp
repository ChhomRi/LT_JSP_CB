<%-- 
    Document   : tracuudiem
    Created on : Oct 16, 2024, 10:58:12 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Tra cứu điểm</h1>
        <form action="tracuudiem.jsp" method="POST">
            Số báo danh: <input type="text" name="sobd" value=""/>
            Họ tên:     <input type="text" name="hoten" value=""/>
            <button type="sumbit">Tra cứu</button>
            <%
                request.setCharacterEncoding("UTF-8");
                s
            %>
            
        </form>
    </body>
</html>
