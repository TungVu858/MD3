<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23/5/2022
  Time: 9:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Danh Sách</h1>
<a href="/products?action=create">Tạo mới</a>
<table border="2px" style="text-align: center">
<c:forEach items="${danhSach}" var="sanPham">
        <tr>
            <td width="20%">${sanPham.id}</td>
            <td width="20%">${sanPham.name}</td>
            <td width="20%">${sanPham.price}</td>
            <td width="20%"><a href="/products?action=edit&id=${sanPham.id}">Sửa</a></td>
            <td width="20%"><a href="/products?action=delete&id=${sanPham.id}">Xoá</a></td>
        </tr>
</c:forEach>
</table>
</body>
</html>
