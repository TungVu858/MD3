<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18/5/2022
  Time: 1:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Currency Converter</title>
  </head>
  <body>
  <h2>Currency Converter</h2>
  <form action="/convert" method="post">
    <label>Rate :</label> <br>
    <input type="text" name="rate" placeholder="Rate" value="22000"> <br>
    <label>USD : </label> <br>
    <input type="text" name="usd" placeholder="Usd" value="0"> <br>
    <input type="submit" id="submit" value="Converter">
  </form>
  </body>
</html>
