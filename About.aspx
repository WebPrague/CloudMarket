<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0" />

    <title>个人中心</title>

    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <link href="css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="home/css/personal.css" rel="stylesheet" type="text/css" />
    <link href="home/css/vipstyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="assets/js/amazeui.js"></script>
</head>

<body>
<!--头 -->
<header>
    <article>
        <div class="mt-logo">
            <!--顶部导航条 -->
            <div class="am-container header">
                <ul class="message-r">
                    <div class="topMessage home">
                        <div class="menu-hd">
                            <a id="userlogin" href="Index.aspx" target="_top" class="h"><%=getUserName()%></a></div>
                    </div>
                    <div class="topMessage home">
                        <form runat="server">
                            <div class="menu-hd" id="userlogout">
                                <a  runat="server"  class="h" onserverclick="logout">注销登录</a>
                            </div>
                        </form>
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
                <div class="logoBig">
                    <li><img src="home/images/logo4.png" /></li>
                </div>

            </div>

            <div class="clear"></div>
        </div>
			
    </article>
</header>
<div class="nav-table">
    <div class="long-title"><span class="all-goods">二手云购</span></div>
    <div class="nav-cont">
        <ul>
            <li class="index"><a href="Index.aspx">首页</a></li>
            <li class="qc"><a href="Zuixinjiexiao.aspx">最新揭晓</a></li>
            <li class="qc"><a href="Rementuijian.aspx">热门推荐</a></li>
            <li class="qc"><a href="Xinpinshangjia.aspx">新品上架</a></li>
        </ul>
    </div>
</div>
<b class="line"></b>
<div class="center">
    <div class="col-main">

        <div>
            <h2 style="font-size:30px;">1分钟了解二手云购</h2>
        </div>
        <div>
            <div style="padding-top:30px; padding-bottom:30px;">
                <p >
                    二手云购是一个“我为人人、人人为我”的新型互助购物平台。二手云购将用户共同需求的商品分成若干等份，1元即可支持1等份，当1件商品的所有等份都获得支持后，根据平台互助购物协议，此商品将归其中一位支持者所有。
                </p>
                <div style="padding-top:10px;">
                    <h3>规则：</h3>
                    <div class="rule">
                        1、依据市场价将每个商品分成若干等份，每份1元。
                        <p style="height:10px;"></p>
                        2、每个用户可对1件商品支持1份或多份，每支持1份获得1个云购码。
                        <p style="height:10px;"></p>
                        3、当1件商品的所有份额都获得支持后，计算出1个“幸运云购码”，持有“幸运云购码”的支持者即拥有该商品。
                        <p style="height:10px;"></p>
                    </div>
                </div>
                <h3>流程：</h3>
                <div  style="margin-top:10px;">
                    <b>1、挑选商品</b>
                    <p style="margin-bottom:15px; margin-top:5px;">分类浏览或直接搜索商品，点击“立即加入云购”。</p>
                    <b>2、支付1元</b>
                    <p style="margin-bottom:10px; margin-top:5px;">通过在线扫码支付1元即支持1等份，获得1个“云购码”。</p>
                    <b>3、揭晓获得者</b>
                    <p style="margin-bottom:15px; margin-top:5px;">当1件商品的所有等份都获得支持后，计算出1名商品获得者。</p>
                    <h3 style="padding-left:22px; margin-top:0;">注：</h3>
                    <div  style="margin-bottom:15px;">
                        <p style="margin-bottom:10px; margin-top:5px; text-indent:1.6em;">1）商品揭晓后您可登录“我的二手云购”查询详情，未获得商品的用户不会收到通知；</p>
                        <p style="margin-bottom:10px; margin-top:5px; text-indent:1.6em;">2）所有已揭晓商品均不给予退款</p>
                    </div>
                </div>
            </div>

        </div>
        <div class="clear"></div>
		
        <!--底部-->
        <div class="footer">
            <div class="footer-hd">
                <p>
                    <a href="About.aspx">二手云购</a>
                    <b>|</b>
                    <a href="Index.aspx">云购首页</a>
                </p>
            </div>
            <div class="footer-bd">
                <p>
                    <a href="About.aspx">关于二手云购</a>
                    <em>2017-2018 CloudMarket.com 版权所有. </em>
                </p>
            </div>
        </div>

    </div>

</div>

</body>

</html>

