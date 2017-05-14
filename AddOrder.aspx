<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddOrder.aspx.cs" Inherits="AddOrder" %>

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
            <div class="menu-hd MyShangcheng"><a href="PersonalPage/PurchaseRecord/AllPurchaseRecord.aspx" target="_top">我的二手云购</a></div>
        </div>
        <div class="topMessage mini-cart">
            <div class="menu-hd"><a id="mc-menu-hd" href="About.aspx" target="_top"><span>帮助</span><strong id="J_MiniCartNum" class="h"></strong></a></div>
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

        <div class="clear"></div>

        <!--订单 -->
        <div class="concent">
            <div id="payTable">
                <h3>请确认订单信息</h3>
                <div class="cart-table-th">
                    <div class="wp">
                        <div class="th th-item">
                            <div class="td-inner">商品信息</div>
                        </div>
                        <div class="th th-amount">
                            <div class="td-inner">购买人次</div>
                        </div>
                        <div class="th th-sum">
                            <div class="td-inner">金额</div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>

                <tr class="item-list">
                    <div class="bundle  bundle-last">
                    <div class="bundle-main">
                        <ul class="item-content clearfix">
                            <div class="pay-phone">
                                <li class="td td-item">
                                    <div class="item-pic">
                                        <a href="#" class="J_MakePoint">
                                            <img src="<%=good.Picurl%>" class="itempic J_ItemImg" style="height: 80px; width: 80px;"></a>
                                    </div>
                                    <div class="item-info">
                                        <div class="item-basic-info">
                                            <a href="#" class="item-title J_MakePoint" data-point="tbcart.8.11"><%=good.Goodname%></a>
                                        </div>
                                    </div>
                                </li>
                                <li class="td td-info">
                                    <div class="item-props">
                                        <span class="sku-line">价值：￥<%=good.Joinpeoplenum%>.00</span>
                                        <br/>
                                        <span class="sku-line">剩余：<%=good.RemainPeople%></span>
                                    </div>
                                </li>
                            </div>
                            <li class="td td-amount">
                                <div class="amount-wrapper ">
                                    <div class="item-amount ">
                                        <span class="phone-title">购买人次</span>
                                        <div class="sl">
                                            <input onclick="refresh()" class="min am-btn" name="" type="button" value="-" />
                                            <input id="buytime1" onclick="RefreshOnce()"  class="text_box" name="" type="text" value="1" style="width:30px;" runat="server" />
                                            <input onclick="refresh()" class="add am-btn" name="" type="button" value="+" />
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-sum">
                                <div class="td-inner">
                                    <em tabindex="0" class="J_ItemSum number">1.00</em>
                                </div>
                            </li>

                        </ul>
                        <div class="clear"></div>
                    </div>
                       </div>
                </tr>
                <div class="clear"></div>
            </div>
        </div>
        <div class="clear"></div>
        <div class="pay-total">
            <div class="clear"></div>
        </div>
        <!--含运费小计 -->
        <div style="padding-top: 15px;">
            <p class="price g_price " >
                合计 <span>¥</span><em class="pay-sum"><span id="buytime2" runat="server">0</span>.00</em>
            </p>
        </div>

        <!--信息 -->

        <div class="order-go clearfix">
            <div class="pay-confirm clearfix">
                <div id="holyshit269" class="submitOrder">
                    <div class="go-btn-wrap">
                        <asp:Button runat="server" id="J_Go"  OnClick="payOrder"    class="btn-go"  tabindex="0" Text="立即结算" />
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>   
        </form>
    </div>


    <div class="clear"></div>
</div>
<div class="footer ">
    <div class="footer-hd ">
        <p>
            <a href="About.aspx">二手云购</a>
            <b>|</b>
            <a href="Index.aspx">云购首页</a>
        </p>
    </div>
    <div class="footer-bd ">
        <p>
            <a href="About.aspx">关于二手云购</a>
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
