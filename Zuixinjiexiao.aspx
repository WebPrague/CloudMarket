<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Zuixinjiexiao.aspx.cs" Inherits="Zuixinjiexiao" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>最新揭晓</title>

    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <link href="css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="basic/css/demo.css" rel="stylesheet" type="text/css" />
    <link type="text/css" href="home/css/optstyle.css" rel="stylesheet" />
    <link type="text/css" href="home/css/style.css" rel="stylesheet" />

    <script type="text/javascript" src="basic/js/jquery-1.7.min.js"></script>
    <script type="text/javascript" src="basic/js/quick_links.js"></script>

    <script type="text/javascript" src="assets/js/amazeui.js"></script>
    <script type="text/javascript" src="js/jquery.imagezoom.min.js"></script>
    <script type="text/javascript" src="js/jquery.flexslider.js"></script>
    <script type="text/javascript" src="js/list.js"></script>
    <link href="css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="css/admin.css" rel="stylesheet" type="text/css" />

    <link href="basic/css/demo.css" rel="stylesheet" type="text/css" />

    <link href="home/css/hmstyle.css" rel="stylesheet" type="text/css" />
    <script src="assets/js/jquery.min.js" type="text/javascript"></script>
    <script src="assets/js/amazeui.min.js" type="text/javascript"></script>

</head>

<body>


<!--顶部导航条 -->
<div class="am-container header">
    <ul class="message-l">
        <div class="topMessage">
            <div class="menu-hd">
                <a href="Login.aspx" target="_top" class="h">亲，请登录</a>
                <a href="Register.aspx" target="_top">免费注册</a>
            </div>
        </div>
    </ul>
    <ul class="message-r">
        <div class="topMessage home">
            <div class="menu-hd">你好！
                <a href="Index.aspx" target="_top" class="h"><%=getUserName()%></a></div>
        </div>
        <div class="topMessage home">
            <div class="menu-hd">
                <a href="Login.aspx" target="_top" id="exitLogin" class="h" runat="server" >注销登录</a>
          
            </div>
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
<b class="line"></b>
<div class="listMain">

<!--分类-->
<div class="nav-table">
    <div class="long-title"><span class="all-goods">二手云购</span></div>
    <div class="nav-cont">
        <ul>
            <li class="index"><a href="Index.aspx">首页</a></li>
            <li class="qc"><a href="Zuixinjiexiao.aspx">最新揭晓</a></li>
            <li class="qc"><a href="Rementuijian.aspx">热门推荐</a></li>
            <li class="qc"><a href="Xinpinshangjia.aspx">新品上架</a></li>
        </ul>
        <div class="nav-extra">
            <a href="#">一分钟了解二手云购</a>
        </div>
    </div>
</div>
<div class="shopMainbg">
<div class="shopMain" id="shopmain">

<div class="f1">
    <!--最新揭晓-->
    <div class="am-container " >
        <div class="shopTitle ">
            <h4 class="floor-title">最新揭晓</h4>
            <div class="floor-subtitle"><h3>不要走开，幸运大奖马上揭晓！</h3></div>
        </div>
    </div>

    <div class="am-g am-g-fixed" >
                         
        <% foreach (var announedGood in announedGoods)
           {
        %>

            <div class="am-u-sm-3 sale-item" style="border: solid 1px gray; float: left;">
                <div class="s-img">
                    <a href="#"><img src="<%=announedGood.Picurl %>" style="width: 200px; height: 200px;" /></a>
                </div>
                <div class="s-info">
                    <a href="#"><p class="s-title"><%=announedGood.Goodname %></p></a>
                               
                    <p class="s-title" style="color:#a0a0a0">价值：￥<%=announedGood.Joinpeoplenum %>.00</p>
                    <br />
                    <div class="s-price">
                        <a class="s-buy" href="#" style="position:absolute;right:36px;width:200px; height:37px;display:block; text-align:center;">中奖码：<%=announedGood.LuckyCode %></a>
                    </div>                          	  
                </div>								
            </div>
						
        <%
                            }
                  
        %>
						
    </div>

    <div class="clear "></div>
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
            <a href="# ">关于二手运购</a>
            <a href="# ">联系我们</a>
            <em>2017-2018 CloudMarket.com 版权所有. </em>
        </p>
    </div>
</div>
</div>
</div>


</div>


</body>

</html>
