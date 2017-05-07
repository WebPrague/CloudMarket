<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PersonalShopCar.aspx.cs" Inherits="PersonalShopCar" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <title>购物车页面</title>

    <link href="css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="basic/css/demo.css" rel="stylesheet" type="text/css" />
    <link href="home/css/cartstyle.css" rel="stylesheet" type="text/css" />
    <link href="home/css/optstyle.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="js/jquery.js"></script>

</head>

<body>
<form method="post" runat="server">
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

<!--购物车 -->
<div class="concent" style="padding-top:20px;">
<div id="cartTable">
    <div class="cart-table-th">
        <div class="wp">
            <div class="th th-chk">
                <div id="J_SelectAll1" class="select-all J_SelectAll">

                </div>
            </div>
            <div class="th th-item">
                <div class="td-inner">商品信息</div>
            </div>
            <div class="th th-price">
                <div class="td-inner">剩余人次</div>
            </div>

            <div class="th th-sum" >
                <div class="td-inner">金额</div>
            </div>
            <div class="th th-op">
                <div class="td-inner">操作</div>
            </div>
            <div class="th th-amount">
                <div class="td-inner" ></div>
            </div>
        </div>
    </div>
    <div class="clear"></div>

    <tr class="item-list">
        <div class="bundle  bundle-last ">
            <div class="clear"></div>
            <div class="bundle-main">
                <% foreach (var shopcar in shopcars)
                   {
                %>
                <ul class="item-content clearfix">
                    <li class="td td-item">
                        <div class="item-pic">
                            <a href="#" target="_blank" data-title="" class="J_MakePoint" data-point="tbcart.8.12">
                                <img src="<%=shopcar.good.Picurl %>" style="width:80px; height:80px;" class="itempic J_ItemImg"></a>
                        </div>
                        <div class="item-info">
                            <div class="item-basic-info">
                                <a href="#" target="_blank" title="" class="item-title J_MakePoint" data-point="tbcart.8.11"><%=shopcar.good.Goodname %></a>
                            </div>
                        </div>
                    </li>
                    <li class="td td-info">
                        <div class="item-props item-props-can">
                            <span>价值：￥<%=shopcar.good.Joinpeoplenum %>.00</span>
                        </div>
                    </li>
                    <li class="td td-price">
                        <div class="item-price price-promo-promo">
                            <div class="price-content">
                                <div class="price-line">
                                    <em class="J_Price price-now" tabindex="0"><%=shopcar.good.RemainPeople %></em>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="td td-sum">
                        <div class="td-inner">
                            <em tabindex="0" class="J_ItemSum number">￥1.00</em>
                        </div>
                    </li>
                    <li class="td td-op">
                        <div class="td-inner">
                            <a href="DeleteShopCar.aspx?id=<%=shopcar.Id %>" class="delete">删除</a>
                        </div>

                    </li>
                    <li>
                        
                        <div style="padding-top:20px; padding-left:25px;">

                            <div class="btn-area" style="height:40px;">
                                <a href="#" class="submit-btn submit-btn-disabled" onclick="updateShopCar(<%=shopcar.Id%>)">结&nbsp;算</a>
                            
                            </div>
                        </div>

                    </li>
                </ul>
                
                <%
                   }
                %>
                
           

            </div>
        </div>
    </tr>
    <div class="clear"></div>
</div>
<div class="clear"></div>

<div class="footer" style="padding-top:100px;">
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

</div>
    
    <script type="text/javascript">
        function updateShopCar(shopcarId) {

            var url = window.location.href;

            var buytime_temp = '1';
            var shopcarId_temp = shopcarId;

            url = 'shopid=' + shopcarId_temp + '&' + 'time=' + buytime_temp;

            window.location.href = "UpdateShopCar.aspx?" + url;
        }


    </script>
    
    
    
    
</form>

</body>

</html>
