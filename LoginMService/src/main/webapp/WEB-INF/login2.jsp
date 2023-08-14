<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    	<meta charset="UTF-8">
    	<title>crane</title>
    	<meta http-equiv="x-ua-compatible" content="ie=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<link href="/resources/static/css/new2.css" rel="stylesheet" />
    	<link rel="icon" href="/resources/static/images/webicon.ico">
</head>
<body>

  <div class="wrapper" id="loginWrapper">
  
  <svg xmlns="http://www.w3.org/2000/svg" class="site__logo" width="300" height="100">
                <defs>
                    <linearGradient id="a" x1="0%" y1="0%" y2="0%">
                        <stop offset="0%" stop-color="#8ceabb"/>
                        <stop offset="100%" stop-color="#378f7b"/>
                    </linearGradient>
                </defs>
                <image xlink:href="/resources/static/images/cranewhite.png" width="100%" height="100%" preserveAspectRatio="xMidYMid meet" />
            </svg>
    <form id="loginForm" action="/login" method="post" class="form">
        <div class="input-field">
        <input type="text" name="mail" placeholder="info@mail.com" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
        <label>E-mail</label>
      </div>
      <div class="input-field">
        <input type="password" name="password" placeholder="***********" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
        <label>Password</label>
      </div>
      <div class="forget">
        <a href="#">Forgot password?</a>
      </div>
      <button type="submit">Log In</button>
      <div class="register">
        <p>Don't have an account? <a onClick = "goToRegister()">Sign Up</a></p>
      </div>
    </form>
  </div>
  <div id="errorMessage" class="error-message"></div>
      <script type="text/javascript">
    function goToRegister(){
        alert("register");
        window.location.href="/register";
        }
    </script>

</body>
</html>