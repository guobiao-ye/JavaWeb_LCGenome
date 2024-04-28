<%@ page import="dao.LoginService" %>
<%@ page import="dao.Register" %>
<%@ page import="static java.sql.DriverManager.println" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Check</title>
    <script>
        function showError(message) {
            alert(message);
            window.location.href = "register.jsp"; // Redirect back to login page
        }
    </script>
</head>
<body>
<%
    // 获取提交的用户名和密码
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // 创建 LoginService 实例
    Register register = new Register();

    // 调用 LoginService 类的方法进行登录验证
    if (register.RegisterInserted(username, password)) {
        // 验证成功，跳转到 services.jsp 页面
        response.sendRedirect("login.jsp");
    } else {
        // 验证失败，显示错误提示
        out.println("<script>showError('Account already exists, please log in.');</script>");
    }
%>
</body>
</html>
