<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18/5/2022
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Product Discount Calculator</title>
  </head>
  <body>
  <h2>Product Discount Calculator</h2> <br>
  <form action="result" method="post">
    <input type="text" name="description"> Product Description <br>
    <input type="text" name="list"> List Price<br>
    <input type="text" name="discount"> Discount Percent <br>
    <input type="submit" value="Calculate Discount">

  </form>

  </body>
</html>
