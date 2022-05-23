<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 23/5/2022
  Time: 9:52 AM
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
            <td colspan="4">
                Thông tin sản phẩm cần xoá
            </td>
        </tr>
        <tr>
            <td width="25%">${spCanXoa.id}
            <td width="25%">${spCanXoa.name}</td>
            <td width="25%">${spCanXoa.price}</td>
            <td width="25%"><button>Xoá</button></td></td>

        </tr>
    </table>

</form>
</body>
</html>
