<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OrderDetail.aspx.cs" Inherits="OrderDetail" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0" />
    <title>订单详情</title>
    <link href="css/admin.css" rel="stylesheet" type="text/css" />
    <link href="css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="home/css/personal.css" rel="stylesheet" type="text/css" />
    <link href="home/css/orstyle.css" rel="stylesheet" type="text/css" />
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
                        <div class="menu-hd MyShangcheng"><a href="Person_index.aspx" target="_top">我的二手云购</a></div>
                    </div>
                    <div class="topMessage mini-cart">
                        <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><span>帮助</span><strong id="J_MiniCartNum" class="h"></strong></a></div>
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
    <div class="long-title">
        <span class="all-goods">全部分类</span></div>
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
<div class="main-wrap">
<div class="user-order">
<!--标题 -->
<div class="am-cf am-padding">
    <div class="am-fl am-cf">
        <strong class="am-text-danger am-text-lg">我的云购记录</strong> / <small>订单详情</small></div>
</div>
<hr />
<div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>
<div class="am-tabs-bd">
<!-- 进行中-->
<div class="am-tab-panel am-fade am-in am-active" id="tab2">
    <div class="order-main">
        <div class="order-list">
            <!--交易成功-->
            <div class="order-status5">
                <div class="order-title">
                    <div class="dd-num">
                        订单编号：<a href="javascript:;"><%=order.OrderId %></a></div>
                    <span>成交时间：<%=order.Addtime %></span>
                </div>
                <div class="order-content">
                    <div class="order-left">
                        <ul class="item-list">
                            <li class="td td-item">
                                <div class="item-pic">
                                    <a href="#" class="J_MakePoint">
                                        <img src="<%=order.good.Picurl %>" class="itempic J_ItemImg" >
                                    </a>
                                </div>
                                <div class="item-info">
                                    <div class="item-basic-info">
                                        <a href="#">
                                            <p>
                                                <%=order.good.Goodname %></p>
                                            <p class="info-little">
                                                价值：¥<%=order.good.Joinpeoplenum %>.00</p>
                                            <p style="padding-top: 5px; padding-bottom: 5px;">商品云购状态：<span style="color: orange;"><%=order.good.Status %></span></p>
                                            <progress  value="<%=order.good.JoinPeople %>" max="<%=order.good.Joinpeoplenum %>" style="width: 150px;"></progress>
                                            <p style="padding-top: 5px;">您已参加<span style="color: orange;"><%=order.OrderSum %></span>人次</p>
                                        </a>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <hr/>
                        <div>
                            <p style="color: grey;">本云商品您总共参与<span style="color: orange;"><%=order.OrderSum %></span>人次&nbsp;&nbsp;拥有<span style="color: orange;"><%=order.OrderSum %></span>个云购码</p>
                        </div>
                        <hr/>
                        <% foreach (Order o in orders)
                           {
                        %>

                        <div style="padding-top: 10px; padding-bottom: 10px; padding-left: 10px;">
                           <p style="padding-bottom: 5px;">
                              <%=o.Addtime %> &nbsp;&nbsp;&nbsp;<span>1</span>人次
                           </p>
                            <p>云购码：<span><%=o.CloudCode %></span></p>                            
                        </div>
                        <hr/>
                        <%       
                           } %>
          

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>
</div>
<!--底部-->
<div class="footer">
    <div class="footer-hd">
        <p>
            <a href="# ">二手云购</a> <b>|</b> <a href="# ">云购首页</a> <b>|</b> <a href="# ">支付宝</a>
            <b>|</b> <a href="# ">物流</a>
        </p>
    </div>
    <div class="footer-bd">
        <p>
            <a href="#">关于二手运购</a> <a href="# ">联系我们</a> <em>2017-2018 CloudMarket.com 版权所有.
            </em>
        </p>
    </div>
</div>
</div>
    <aside class="menu">
        <ul>
            <li class="person active">
                <a href="Person_index.aspx"><i class="am-icon-user"></i>个人中心</a>
            </li>

            <li class="person">
                <p><i class="am-icon-balance-scale"></i><a href="PersonalPage/PurchaseRecord/AllPurchaseRecord.aspx">云购记录</a></p>
                <ul>
                    <li><a href="PersonalPage/PurchaseRecord/JinxingPurchase.aspx">进行中</a></li>
                    <li> <a href="PersonalPage/PurchaseRecord/AnnouncedPurchase.aspx">已揭晓</a></li>
                </ul>
            </li>

            <li class="person">
                <p><i class="am-icon-tags"></i><a href="#">已发布的商品</a></p>
                <ul>
                    <li> <a href="PersonalPage/ReleaseGoods/Addgood.aspx">添加商品</a></li>
                    <li> <a href="PersonalPage/ReleaseGoods/TradeSuccessGoods.aspx">已成功交易的商品</a></li>	
                    <li> <a href="PersonalPage/ReleaseGoods/ProcessingGoods.aspx">进行中的商品</a></li>													
                </ul>
            </li>
                    
            <li class="person">
                <p><i class="am-icon-newspaper-o"></i>个人资料</p>
                <ul>
                    <li> <a href="../../information.html">个人信息</a></li>
                    <li> <a href="../../safety.html">安全设置</a></li>
                    <li> <a href="../../cardlist.html">快捷支付</a></li>
                </ul>
            </li>
            <li class="person">
                <p><i class="am-icon-qq"></i>在线客服</p>
                <ul>
                    <li> <a href="PersonalPage/OnlineService/Suggest.aspx">意见反馈</a></li>							
                </ul>
            </li>
        </ul>

    </aside>
</div>

<!-- Visual Studio Browser Link -->
<script type="application/json" id="__browserLink_initializationData">
    {"appName":"Firefox","requestId":"14f01b04f43c4857857d37866597ec21"}
</script>
<script type="text/javascript" src="http://localhost:17574/e9010e1e872f4029802a6c1bd5288db3/browserLink" async="async"></script>
<!-- End Browser Link -->

</body>
</html>

