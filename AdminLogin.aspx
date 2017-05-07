<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head lang="en">
    <meta http-equiv="X-UA-Compatible" content="text/html;charset=utf-8" />
    <title>登录</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="renderer" content="webkit" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="css/amazeui.css" />
    <link href="home/css/dlstyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function getl(id) {
            //遍历整个dom对象
            return document.getElementById(id);
        }
        function doLogin() {
            var domUserName = getl("username");
            var strUserName = domUserName.value;
            var strPwd = getl("password").value;
            if (strUserName == '' || strPwd == '') {

                alert("请输入用户名和密码！");
                getl("username").focus();
            } else {

                getl("loginForm1").submit();

            }
        }

    </script>

</head>
<body>
		<div class="login-boxtitle">
			<a href="Login.aspx"><img alt="" src="home/images/logo4.png" /></a>
		</div>
    <div class="login-banner">
        <div class="login-main">
            <div class="login-banner-bg">
                <span></span>
             
                <img src="home/images/big.jpg" /></div>
            <div class="login-box">
                <h3 class="title">
                    登录商城</h3>
                <div class="clear">
                </div>
                <br />
                <br />
                <br />
                <div class="login-form">
                    <form method="post" id="loginForm1" action="AdminLogin.aspx" runat="server">
                    <div class="user-name">
                    <label for="user"><img src="home/images/user.png"/></label>
                      <input type="text" name="username"  id="username"  placeholder="邮箱/手机/用户名" runat="server" />
                    </div>
                    <div class="user-pass">
                    <label for="user"><img src="home/images/password.png"/></label>
                     <input type="password" name="password" id="password" placeholder="请输入密码" runat="server"/>
                    </div>
                    </form>
                </div>
                <div class="login-links">
                    <label for="remember-me">
                        <input id="remember-me" type="checkbox">记住密码</label>
                    <a href="#" class="am-fr">忘记密码?</a> <a href="Register.aspx" class="zcnext am-fr am-btn-default">
                        注册</a>
                    <br />
                </div>

                <div class="am-cf">
                    <input type="button" name="loginBtn" value="登录" class="am-btn am-btn-primary am-btn-sm" onclick="doLogin()" />
                </div>
            </div>
        </div>
    </div>
</body>
</html>
