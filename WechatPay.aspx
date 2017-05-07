<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WechatPay.aspx.cs" Inherits="WechatPay" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0 ,minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>结算页面</title>

    <link href="css/amazeui.css" rel="stylesheet" type="text/css" />

    <link href="basic/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="home/css/cartstyle.css" rel="stylesheet" type="text/css" />

    <link href="home/css/jsstyle.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/address.js"></script>

</head>

<body>

<!--顶部导航条 -->
<div class="am-container header">

    <ul class="message-r">  
        
        <div class="topMessage home">
            <div class="menu-hd">
                <a id="userlogin" href="Index.aspx" target="_top" class="h"><%=getUserName()%></a></div>
        </div>
        <div class="topMessage home">
         
            <div class="menu-hd" id="userlogout">
                <a  runat="server"  class="h" onserverclick="logout">注销登录</a>
            </div>
            
        </div>
        <div class="topMessage my-shangcheng">
            <div class="menu-hd MyShangcheng"><a href="Index.aspx" target="_top">云购首页</a></div>
        </div>
        <div class="topMessage my-shangcheng">
            <div class="menu-hd MyShangcheng"><a href="PersonalShopCar.aspx" target="_top">购物车</a></div>
        </div>

        <div class="topMessage my-shangcheng">
            <div class="menu-hd MyShangcheng"><a href="Person_index.aspx" target="_top">我的二手云购</a></div>
        </div>
        <div class="topMessage mini-cart">
            <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><span>帮助</span><strong id="J_MiniCartNum" class="h"></strong></a></div>
        </div>
      
    </ul>
</div>

<!--悬浮搜索框-->

<div class="nav white">
    <div class="logo"><img src="home/images/logo4.png" /></div>
    <div class="logoBig">
        <li><img src="home/images/logo4.png" /></li>
    </div>
</div>
<div class="clear"></div>
    
    
    

<div class="concent">
    <div class="paycont">
        <form method="post" runat="server">
            <div class="clear"></div>
            <div class="logistics" align="center" style="padding-top:15px;">
                <h1 style="font-size:30px;">我们都是好孩子，商家也很辛苦，请自觉扫码支付！</h1>
                
            </div>
            <div align="center">
                <img src="home/images/personZhifubao.jpg" />
                <p></p>
            </div>
            
            <div align="center">
                <p style="font-size:30px;" >支付完成后，请点击下面确认按钮，返回添加订单页面，填写购买人次时请按您的支付金额如实填写！</p>

            </div>
            <div>
                
                <div class="btn-area" style="height:40px;">
                    <asp:Button runat="server" id="J_Go"  OnClick="backAddOrder"  href="success.html"  class="btn-go"  tabindex="0" Text="我已支付完毕！" />        
                </div>
                
                

            </div>

            <!--信息 -->

 
        </form>
    </div>


    <div class="clear"></div>
</div>
    
    
    

<div class="footer ">
    <div class="footer-hd ">
        <p>
            <a href="#">二手云购</a>
            <b>|</b>
            <a href="#">云购首页</a>
            <b>|</b>
            <a href="#">支付宝</a>
            <b>|</b>
            <a href="#">物流</a>
        </p>
    </div>
    <div class="footer-bd ">
        <p>
            <a href="#">关于二手运购</a>
            <a href="#">联系我们</a>
            <em>2017-2018 CloudMarket.com 版权所有. </em>
        </p>
    </div>
</div>
<div class="clear"></div>
    
<script type="text/javascript">
    $('#buytime1').bind('input propertychange', function () {

        var buytime_temp = parseInt(document.getElementById("buytime1").value);

        document.getElementById("buytime2").innerText = buytime_temp;
        function RefreshOnce() {
            if (location.href.indexOf("&xyz=") < 0) {
                location.href = location.href + "&xyz=" + Math.random();
            }
        }
    }); 

    var buytime_temp = document.getElementById("buytime1").value;
    document.getElementById("buytime2").value = buytime_temp;
    document.getElementById("buytime2").innerText = buytime_temp;

    function refresh() {
        window.location.reload();
    }





</script>
</body>
</html>
