<%@ page import="dao.LoginService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Check</title>
    <script>
        function showError(message) {
            alert(message);
            window.location.href = "login.jsp"; // Redirect back to login page
        }
    </script>
</head>
<body>
<%
    // 获取提交的用户名和密码
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // 创建 LoginService 实例
    LoginService loginService = new LoginService();

    // 调用 LoginService 类的方法进行登录验证
    if (loginService.validateLogin(username, password)) {
        // 验证成功，跳转到 services.jsp 页面
        response.sendRedirect("services.jsp");
    } else {
        // 验证失败，显示错误提示
        out.println("<script>showError('Invalid username or password. Please try again.');</script>");
    }
%>
</body>
</html>
