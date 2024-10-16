<%-- 
    Document   : Bai_3
    Created on : Oct 16, 2024, 9:04:04 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tính diện tích -chu vi hình tròn</title>
    </head>
    <body>
         <h1>Diện tích - Chu vi hình tròn</h1>
         <form action="Bai_3.jsp" method="post">
              <tr>
        <td>Nhập bán kính</td>

        <td><input type="text" name="bk" value=""/></td>
    </tr>
    <tr>
        <td><input type="submit" value="Tính toán"/>
            <input type="reset" value="Tiếp tục"/>
        </td>
    </tr>
    <%
        String bk = request.getParameter("bk");
        double cv, dt;
        if (bk != null) {
            double d = Double.parseDouble(bk);
            cv = d *d*Math.PI;
            dt = 2*d*Math.PI;
            out.println("<hr>");
            out.println("Diện tích: " + dt + "</br>");
             out.println("Chu vi: " + cv + "</br>");
           

    %>
   
    <%
        }
    %>
             
         </form>
   
    </body>
</html>
