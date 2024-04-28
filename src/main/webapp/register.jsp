<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2024/4/26
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>register page</title>
    <link rel="stylesheet" type="text/css" href="static/css/login-style.css" />
    <link rel="stylesheet" href="https://cdn.staticfile.org/font-awesome/4.7.0/css/font-awesome.css">
</head>
<body>
<div id="bigBox">
    <h1>REGISTER</h1>
    <div class="inputBox">
        <form action="checkRegister.jsp" method="post">
            <div class="inputText">
                <i class="fa fa-user-circle" style="color: whitesmoke;"></i>
                <input type="text" placeholder="Username" name="username"/>
            </div>
            <div class="inputText">
                <i class="fa fa-key" style="color: whitesmoke;"></i>
                <input type="password" placeholder="Password" name="password"/>
            </div>
            <input type="submit" class="inputButton" value="REGISTER" />
        </form>
    </div>
</div>
</body>
</html>
