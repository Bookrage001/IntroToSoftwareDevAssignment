<%-- 
    Document   : register
    Created on : Apr 15, 2019, 12:28:31 PM
    Author     : Supercheap Computer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>register</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.jsp">login</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="row">
        <div class="col-md-4">
        </div>
        <div class="col-md-4">

            <form class="form-signin" action="reg-submit.jsp" method="post">
                <div id="info">

                </div>
                <label for="">username</label>
                <input type="text" name="username" id="username" class="form-control" placeholder="please enter user name" required autofocus><br>
                <input type="password" name="password" id="password" class="form-control" placeholder="Please enter your password" required><br>
                <label for="">password</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="Please enter your password" required><br>
                <label for="">password</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="Please enter your password" required><br>
                <label for="">Repeated password</label>
                <input type="password" name="password2" id="password2" class="form-control" placeholder="Please enter your password again" required maxLength="16"><br>
                <button type="submit" class="btn btn-primary" id="btn-reg">register</button>
                <a href="login.jsp" class="btn btn-default" id="btn-reg">return login</a>
            </form>
        </div>
        <div class="col-md-4">
        </div>
    </div>
</body>                    
</html>

