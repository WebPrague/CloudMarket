<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PublishGood.aspx.cs" Inherits="PublishGood" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">
    <title>我的发布</title>
    <link href="css/admin.css" rel="stylesheet" type="text/css">
    <link href="css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="home/css/personal.css" rel="stylesheet" type="text/css">
    <link href="home/css/footstyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<!--头 -->
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
            <div class="user-foot">
                <!--标题 -->
                <div class="am-cf am-padding">
                    <div class="am-fl am-cf">
                        <strong class="am-text-danger am-text-lg">已发布的所有商品</strong> / <small>Publish&nbsp;Goods</small></div>
                </div>
                <hr />
                <!--成功交易的商品列表 -->
                <%
                    foreach (var good in goods)
                    {
                           
                %>

                    <div class="goods">
                        <div class="goods-box first-box">
                            <div class="goods-pic">
                                <div class="goods-pic-box">
                                    <a class="goods-pic-link" target="_blank" href="#" title="意大利费列罗进口食品巧克力零食24粒  进口巧克力食品">
                                        <img src="<%=good.Picurl %>" style="width: 200px; height: 200px;" class="goods-img"></a>
                                </div>
                            </div>
                            <div class="goods-attr">
                                <div class="good-title">
                                    <a class="title" href="#" target="_blank"><%=good.Goodname %></a>
                                </div>
                                <div class="goods-price">
                                    <span class="g_price"><span>状态：</span><strong><%=good.Status %></strong> </span>
                                </div>
                                
                                <br />
                                <div class="goods-price">
                                    <span class="g_price"><span>价值：¥</span><strong><%=good.Goodvalue %>.00</strong> </span>
                                </div>
                                <div class="clear">
                                </div>
                            </div>
                        </div>
                    </div>
                    
                <%
                        }
                        
                %>
                <div class="clear">
                </div>
         
            </div>
        </div>
        <!--底部-->
        <div class="footer">
            <div class="footer-hd">
                <p>
                    <a href="#">二手云购</a> <b>|</b> <a href="#">云购首页</a> <b>|</b> <a href="# ">支付宝</a>
                    <b>|</b> <a href="# ">物流</a>
                </p>
            </div>
            <div class="footer-bd">
                <p>
                    <a href="#">关于二手运购</a> <a href="#">联系我们</a> <em>2017-2018 CloudMarket.com 版权所有.
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
                    <li> <a href="information.html">个人信息</a></li>
                    <li> <a href="safety.html">安全设置</a></li>
                    <li> <a href="cardlist.html">快捷支付</a></li>
                </ul>
            </li>
            <li class="person">
                <p><i class="am-icon-qq"></i>在线客服</p>
                <ul>
                    <li> <a href="PersonalPage/OnlineService/Suggest.aspx">意见反馈</a></li>							
                </ul>
            </li>
        </ul>

    </aside><aside class="menu">
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
                <p><i class="am-icon-tags"></i><a href="PublishGood.aspx">已发布的商品</a></p>
                <ul>
                    <li> <a href="PersonalPage/ReleaseGoods/Addgood.aspx">添加商品</a></li>
                    <li> <a href="PersonalPage/ReleaseGoods/TradeSuccessGoods.aspx">已成功交易的商品</a></li>	
                    <li> <a href="PersonalPage/ReleaseGoods/ProcessingGoods.aspx">进行中的商品</a></li>													
                </ul>
            </li>
                    
            <li class="person">
                <p><i class="am-icon-newspaper-o"></i>个人资料</p>
                <ul>
                    <li> <a href="ModifyPassword.aspx">个人信息</a></li>

                </ul>
            </li>
            <li class="person">
                <p><i class="am-icon-qq"></i>在线客服</p>
                <ul>
                    <li> <a href="PersonalPage/OnlineService/SuggestPage.aspx">意见反馈</a></li>							
                </ul>
            </li>
        </ul>

    </aside>
</div>
</body>
</html>
