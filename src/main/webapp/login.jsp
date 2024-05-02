<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>login page</title>
    <link rel="stylesheet" type="text/css" href="static/css/login-style.css" />
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
</head>
<body>
<div id="bigBox">
    <h1>LOGIN</h1>
    <div class="inputBox">
        <form action="check.jsp" method="post">
            <div class="inputText">
                <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                <input type="text" placeholder="Username" name="username"/>
            </div>
            <div class="inputText">
                <i class="fa fa-key" style="color: whitesmoke;"></i>
                <input type="password" placeholder="Password" name="password"/>
            </div>
            <input type="submit" class="inputButton" value="LOGIN" />
            <br>
            <a href="register.jsp" target="_self">Register</a>
        </form>
    </div>
</div>
</body>
</html>
