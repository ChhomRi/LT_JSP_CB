<%-- 
    Document   : Bai_4
    Created on : Oct 16, 2024, 9:31:33 AM
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
        <h1>Đổi tiền tệ</h1>
        <form action="Bai_4.jsp" method="post">
            Cho biết số tiền: <input type="number" name="sotien" value="" required=""/>
            <br>
            Cho biết loại tệ:
            <select name="loaingoaite">
                <option value="USD">USD - đô la mỹ</option>
                <option value="GBP">GBP - Bảnh Anh</option>
                <option value="EUR">EUR - Euro</option>
                <option value="JPY">JPY - Yên nhật</option>
            </select>
            <input type="submit" value="Đổi tiền" />
             <input type="reset" value="Tiếp tục" />
        </form>
        <%
        // Lấy dữ liệu từ form
        if (request.getParameter("sotien") != null && request.getParameter("loaingoaite") != null) {
            double sotien = Double.parseDouble(request.getParameter("sotien"));
            String loaingoaite = request.getParameter("loaingoaite");
            double tienvnd = 0;

            // Tính số tiền quy đổi
            switch (loaingoaite) {
                case "USD":
                    tienvnd = sotien * 21380;
                    break;
                case "GBP":
                    tienvnd = sotien * 32622.80;
                    break;
                case "EUR":
                    tienvnd = sotien * 23555.67;
                    break;
                case "JPY":
                    tienvnd = sotien * 178.61;
                    break;
                case "AUD":
                    tienvnd = sotien * 16727.44;
                    break;
            }  

            // Hiển thị kết quả
            out.println("<hr>");
            out.println("<h1>Kết quả đổi tiền</h1>");
            out.println(sotien + " " + loaingoaite + " = " + String.format("%,.0f", tienvnd) + " VND");
        }
        %>

    </body>
</html>
