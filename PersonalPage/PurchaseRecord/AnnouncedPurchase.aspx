<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AnnouncedPurchase.aspx.cs" Inherits="PersonalPage_PurchaseRecord_AnnouncedPurchase" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0" />
    <title>订单管理</title>
    <link href="../../css/admin.css" rel="stylesheet" type="text/css" />
    <link href="../../css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="../../home/css/personal.css" rel="stylesheet" type="text/css" />
    <link href="../../home/css/orstyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="../../assets/js/jquery.min.js"></script>
    <script type="text/javascript" src="../../assets/js/amazeui.js"></script>
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
                            <a id="userlogin" href="../../Index.aspx" target="_top" class="h"><%=getUserName()%></a></div>
                    </div>
                    <div class="topMessage home">
                        <form runat="server">
                            <div class="menu-hd" id="userlogout">
                                <a  runat="server"  class="h" onserverclick="logout">注销登录</a>
                            </div>
                        </form>
                    </div>
                    <div class="topMessage my-shangcheng">
                        <div class="menu-hd MyShangcheng"><a href="../../Index.aspx" target="_top">云购首页</a></div>
                    </div>
                    <div class="topMessage my-shangcheng">
                        <div class="menu-hd MyShangcheng"><a href="../../PersonalShopCar.aspx" target="_top">购物车</a></div>
                    </div>

                    <div class="topMessage my-shangcheng">
                        <div class="menu-hd MyShangcheng"><a href="../../PersonalPage/PurchaseRecord/AllPurchaseRecord.aspx" target="_top">我的二手云购</a></div>
                    </div>
                    <div class="topMessage mini-cart">
                        <div class="menu-hd"><a id="mc-menu-hd" href="../../About.aspx" target="_top"><span>帮助</span><strong id="J_MiniCartNum" class="h"></strong></a></div>
                    </div>
                </ul>
            </div>

            <!--悬浮搜索框-->

            <div class="nav white">
                <div class="logoBig">
                    <li><img src="../../home/images/logo4.png" /></li>
                </div>
            </div>

            <div class="clear"></div>
        </div>
    </article>
</header>
<div class="nav-table">
    <div class="long-title">
        <span class="all-goods">全部分类</span></div>
    <div class="nav-cont">
        <ul>
            <li class=""><a href="../../Index.aspx">首页</a></li>
            <li class="qc"><a href="../../Zuixinjiexiao.aspx">最新揭晓</a></li>
            <li class="qc"><a href="../../Rementuijian.aspx">热门推荐</a></li>
            <li class="qc"><a href="../../Xinpinshangjia.aspx">新品上架</a></li>
        </ul>
    </div>
</div>
<b class="line"></b>
<div class="center">
    <div class="col-main">
        <div class="main-wrap">
            <div class="user-order">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf">
                        <strong class="am-text-danger am-text-lg">我的云购记录</strong> / <small>已揭晓</small></div>
                </div>
                <hr />
                <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>
                    <div class="am-tabs-bd">
                        <!-- 已揭晓-->
                        <div class="am-tab-panel am-fade am-in am-active" id="tab3">
                            <div class="order-top">
                                <div class="th th-item">
                                    <td class="td-inner">
                                        商品
                                    </td>
                                </div>
                                <div class="th th-number" style="margin-left: 80px;">
                                    <td class="td-inner">
                                        状态
                                    </td>
                                </div>
                                <div class="th th-amount" style="margin-left: 140px;">
                                    <td class="td-inner">
                                        期间参与人数
                                    </td>
                                </div>
                                <div class="th th-change" style="margin-left: 80px;">
                                    <td class="td-inner">
                                        操作
                                    </td>
                                </div>
                            </div>
                            <div class="order-main">
                                
                                <% foreach (var order in Orders)
                                   {
                                %>
                                <div class="order-list">
                                    <!--不同状态订单-->
                                    <div class="order-status3">
                                        <div class="order-title">
                                            <div class="dd-num">
                                                订单编号：<a href="javascript:;"><%=order.OrderId %></a></div>
                                            <span>成交时间：<%=order.Addtime %></span>
                                            <!--    <em>店铺：小桔灯</em>-->
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img src="<%=order.good.Picurl %>" class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info">
                                                                <a href="#">
                                                                    <p>
                                                                        <%=order.good.Goodname %></p>
                                                                    <p class="info-little">
                                                                        价值：¥<%=order.good.Joinpeoplenum %>.00</p>
                                                        
                                                                    <p class="info-little" >中奖云购码：<span><%=order.good.LuckyCode %></span></p>
                                                                    <p class="info-little">
                                                                        中奖请联系发布者：<%=order.good.user.Phonenumber %></p>
                                                                    

                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-number" style="margin-left: 80px;">
                                                        <div class="item-number">
                                                            <span><%=order.good.Status %></span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="item-number" style="top: 23px; position: relative; left: 150px;">
                                                            <span><%=order.OrderSum%>人次</span>
                                                        </div>
                                                    </li>
                                                    <li>
                                                        <div class="item-number" style="position: relative; left: 320px;">
                                                            <a href="../../OrderDetail.aspx?orderid=<%=order.OrderId%>&ordersum=<%=order.OrderSum%>">查看所有云购码</a>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                
                                <%
                                   }
                                    %>

                            </div>
                        </div>
                        <!-- 已揭晓-->

                    </div>
                </div>
            </div>
        </div>
        <!--底部-->
        <div class="footer">
            <div class="footer-hd">
                <p>
                    <a href="../../About.aspx">二手云购</a> <b>|</b> <a href="../../Index.aspx">云购首页</a> 
                </p>
            </div>
            <div class="footer-bd">
                <p>
                    <a href="../../About.aspx">关于二手云购</a><em>2017-2018 CloudMarket.com 版权所有.
                    </em>
                </p>
            </div>
        </div>
    </div>
    <aside class="menu">
        <ul>
            <li class="person active">
                <a href="#"><i class="am-icon-user"></i>个人中心</a>
            </li>

            <li class="person">
                <p><i class="am-icon-balance-scale"></i><a href="../../PersonalPage/PurchaseRecord/AllPurchaseRecord.aspx">云购记录</a></p>
                <ul>
                    <li><a href="../../PersonalPage/PurchaseRecord/JinxingPurchase.aspx">进行中</a></li>
                    <li> <a href="../../PersonalPage/PurchaseRecord/AnnouncedPurchase.aspx">已揭晓</a></li>
                </ul>
            </li>

            <li class="person">
                <p><i class="am-icon-tags"></i><a href="#">已发布的商品</a></p>
                <ul>
                    <li> <a href="../../PersonalPage/ReleaseGoods/Addgood.aspx">添加商品</a></li>
                    <li> <a href="../../PersonalPage/ReleaseGoods/TradeSuccessGoods.aspx">已成功交易的商品</a></li>	
                    <li> <a href="../../PersonalPage/ReleaseGoods/ProcessingGoods.aspx">进行中的商品</a></li>													
                </ul>
            </li>
                    
            <li class="person">
                <p><i class="am-icon-newspaper-o"></i>个人资料</p>
                <ul>
                    <li> <a href="../../ModifyPassword.aspx">个人信息</a></li>
                </ul>
            </li>
            <li class="person">
                <p><i class="am-icon-qq"></i>在线客服</p>
                <ul>
                    <li> <a href="../../PersonalPage/OnlineService/SuggestPage.aspx">意见反馈</a></li>							
                </ul>
            </li>
        </ul>

    </aside>
</div>
</body>
</html>
