<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
	<head>
    	<meta charset="UTF-8">
    	<title>crane</title>
    	<meta http-equiv="x-ua-compatible" content="ie=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">
    	<link href="/resources/static/css/new.css" rel="stylesheet" />
    	<link rel="icon" href="/resources/static/images/webicon.ico">
    	
	</head>
	<body class="align">
	<div id="flash-message" class="alert alert-success" style="display:none;">
  Registered Successfully, Please Log In
</div>
    	<div class="grid align__item">
        	<div class="register">
        	<svg xmlns="http://www.w3.org/2000/svg" class="site__logo" width="300" height="100">
                <defs>
                    <linearGradient id="a" x1="0%" y1="0%" y2="0%">
                        <stop offset="0%" stop-color="#8ceabb"/>
                        <stop offset="100%" stop-color="#378f7b"/>
                    </linearGradient>
                </defs>
                <image xlink:href="/resources/static/images/crane.png" width="100%" height="100%" preserveAspectRatio="xMidYMid meet" />

            </svg>
           	<form id="loginForm" action="/login" method="post" class="form">
           	<h2>${error}</h2>
           	<h2>${registrationSuccess}</h2>
           	<h2>${registrationError}</h2>
                <div class="form__field">
                    <input type="text" name="mail" placeholder="info@mail.com" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                </div>
                <div class="form__field">
                    <input type="password" name="password" placeholder="***********" onfocus="clearPlaceholder(this)" onblur="restorePlaceholder(this)">
                </div>
                <div class="form__field">
                    <input type="submit" value="Log In" class="submit-button">
                </div>
            </form>
            <p>Don't have an account? <a onClick = "goToRegister()">Sign Up</a></p>
        </div>
    </div>
    <script type="text/javascript">
    function goToRegister(){
        alert("register");
        window.location.href="/register";
        }
    </script>
    <script>
  document.addEventListener("DOMContentLoaded", function () {
    const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.has("registrationSuccess")) {
      document.getElementById("flash-message").style.display = "block";
    }
  });
</script>
</body>
</html>
