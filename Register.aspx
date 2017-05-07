<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head lang="en">
    <meta charset="UTF-8" />
    <title>注册</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="format-detection" content="telephone=no" />
    <meta name="renderer" content="webkit" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="stylesheet" href="css/amazeui.min.css" />
    <link href="home/css/dlstyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/amazeui.min.js"></script>
    <script type="text/javascript">
        function getl(id) {
            //遍历整个dom对象
            return document.getElementById(id);
        }
        function doPhoneRegister() {
            var strPhoneNumber = getl("phone").value;
            var strPhonePwd = getl("phonepassword").value;
            var strPhonePwdRepeat = getl("phonepasswordRepeat").value;
            if (strPhoneNumber == '' || strPhonePwd == '' || strPhonePwdRepeat == '') {

                alert("请输入注册信息！");
                getl("phone").focus();
            } else {

                getl("RegisterPhoneForm1").submit();

            }
        }
        function doMailRegister() {
            var strEmail = getl("emailnumber").value;
            var strEmailPwd = getl("emailpassword").value;
            var strEmailPwdRepeat = getl("emailpasswordRepeat").value;


            if (strEmail == '' || strEmailPwd == '' || strEmailPwdRepeat == '') {

                alert("请输入注册信息！");
                getl("email").focus();
            } else {

                getl("RegisterEmailForm1").submit();

            }
        }
    </script>
    <script type="text/javascript">
        var countdown = 60;

        function send_sms(val){
            var phone = document.getElementById("phone").value;
            //alert(phone);
            $.ajax({
                url: 'SendSMS.ashx?phone_number=' + phone,
                type: 'GET',
                async: false,
                cache: false,
                contentType: false,
                processData: false,
                success: function (returndata) {
                    var json = eval("(" + returndata + ")");
                    var code = json.code;
                    if (code == 0) {
                        alert(json.msg);
                        settime(val);
                    } else {
                        alert("发送失败：" + json.msg);
                    }

                },
                error: function (returndata) {
                    alert('验证码获取失败');
                }
            });
        }

        function settime(val) {

            

            if (countdown == 0) {
                val.removeAttribute("disabled");
                val.value = "免费获取验证码";
                countdown = 60;
            } else {
                val.setAttribute("disabled", true);
                val.value = "重新发送(" + countdown + ")";
                countdown--;
                setTimeout(function () {
                    settime(val)
                }, 1000)
            }
        }
    </script>
</head>
<body>
    <div class="login-boxtitle">
        <a href="Register.aspx">
            <img alt="" src="home/images/logo4.png" /></a>
    </div>
    <div class="res-banner">
        <div class="res-main">
            <div class="login-banner-bg">
                <span></span>
                <img src="home/images/big.jpg" /></div>
            <form id="Form1" runat="server">
            <div class="login-box">
                <div class="am-tabs" id="doc-my-tabs">
                    <ul class="am-tabs-nav am-nav am-nav-tabs am-nav-justify">
                        <!--<li class="am-active"><a href="">邮箱注册</a></li>-->
                        <li><a href="">手机号注册</a></li>
                    </ul>
                    <div class="am-tabs-bd">
                        

                        <!--<div class="am-tab-panel am-active">
                            <div class="user-email">
                                <label for="email">
                                    <img src="home/images/email.png" /></label>
                                <input type="text" name="username" id="emailnumber" placeholder="请输入邮箱账号" runat="server" />
                            </div>
                            <div class="user-pass">
                                <label for="password">
                                    <img src="home/images/password.png" /></label>
                                <input type="password" name="emailpassword" id="emailpassword" placeholder="设置密码"
                                    runat="server" />
                            </div>
                            <div class="user-pass">
                                <label for="passwordRepeat">
                                    <img src="home/images/passwordRepeat.png" /></label>
                                <input type="password" name="emailpasswordRepeat" id="emailpasswordRepeat" placeholder="确认密码"
                                    runat="server" />
                            </div>
                            <div class="am-cf">
                                <asp:Button runat="server" ID="registerMailBtn" Text="注册" class="am-btn am-btn-primary am-btn-sm am-fl"
                                    OnClientClick="doMailRegister()" OnClick="mailRegister" />
                            </div>
                        </div>-->
                        
                        

                        <div class="am-tab-panel">
                            <div class="user-phone">
                                <label for="phone">
                                    <img src="home/images/phone.png" /></label>
                                <input type="text" name="phone" id="phone" placeholder="请输入手机号" runat="server" />
                            </div>
                            <div class="verification">
                                <label for="code">
                                    <img src="home/images/code.png" /></label>
                                <input type="text" name="code" id="code" placeholder="请输入验证码" runat="server" />
                            </div>
                            <div class="verification">
                                <label for="code">
                                    <img src="home/images/fingerright.png" /></label>
                                <input type="button" id="Button2" value="免费获取验证码" onclick="send_sms(this)" />
                                <input type="text" name="code" id="Text1" placeholder="请输入验证码" runat="server" />
                            </div>
                            <div class="user-pass">
                                <label for="password">
                                    <img src="home/images/password.png" /></label>
                                <input type="password" name="phonepassword" id="phonepassword" placeholder="设置密码"
                                    runat="server" />
                            </div>
                            <div class="user-pass">
                                <label for="passwordRepeat">
                                    <img src="home/images/passwordRepeat.png" /></label>
                                <input type="password" name="phonepasswordRepeat" id="phonepasswordRepeat" placeholder="确认密码"
                                    runat="server" />
                            </div>
                            <div class="am-cf">
                                <asp:Button runat="server" ID="registerPhoneBtn" Text="注册" class="am-btn am-btn-primary am-btn-sm am-fl"
                                    OnClientClick="doPhoneRegister()" OnClick="phoneRegister" />
                            </div>
                            <hr />
                        </div>
                        <script type="text/javascript">
                            $(function () {
                                $('#doc-my-tabs').tabs();
                            })
                        </script>
                    </div>
                </div>
                   </div>
            </form> 
        </div>
    </div>

    <div class="footer ">
        <div class="footer-bd ">
            <p>
                <a href="# ">关于云购</a> <a href="# ">联系我们</a> <em>© 2017-2018 CloudMarket.com 版权所有</em>
            </p>
        </div>
    </div>
</body>
</html>
