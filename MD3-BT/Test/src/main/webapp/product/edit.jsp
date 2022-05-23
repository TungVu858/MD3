<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23/5/2022
  Time: 9:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form method="post">
    <table border="2px" style="text-align: center">
        <tr>
            <td width="25%"><input type="number" name="id" value="${spCanSua.id}"></td>
            <td width="25%"><input type="text" name="name" value="${spCanSua.name}"></td>
            <td width="25%"><input type="number" name="price" value="${spCanSua.price}"></td>
            <td width="25%"><button>Sửa</button></td>
        </tr>
    </table>
</form>
</body>
</html>
