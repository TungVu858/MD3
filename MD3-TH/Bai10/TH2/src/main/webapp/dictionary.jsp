<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 18/5/2022
  Time: 5:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
    <%!
        Map<String,String> dic = new HashMap<>();
    %>
    <%
        dic.put("hello","Xin chào");
        dic.put("dog","Chó");
        dic.put("bích","Cave");
        dic.put("pig","lợn");
        String sc = request.getParameter("search");
        PrintWriter printWriter = response.getWriter();
        String rl = dic.get(sc);
        if (rl != null){
            printWriter.println("Word : " + sc);
            printWriter.println("Result : " + rl);
        } else printWriter.println("Not Found");
    %>
</body>
</html>
