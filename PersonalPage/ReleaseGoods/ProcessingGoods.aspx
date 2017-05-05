﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ProcessingGoods.aspx.cs"
    Inherits="ProcessingGoods" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0" />
    <title>我的足迹</title>
    <link href="../../css/admin.css" rel="stylesheet" type="text/css" />
    <link href="../../css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="../../home/css/personal.css" rel="stylesheet" type="text/css" />
    <link href="../../home/css/footstyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <header>
    <article>
        <div class="mt-logo">
            <!--顶部导航条 -->
            <div class="am-container header">
                <ul class="message-l">
                    <div class="topMessage">
                        <div class="menu-hd">
                            <a href="../../Login.aspx" target="_top" class="h">亲，请登录</a>
                            <a href="../../Register.aspx" target="_top">免费注册</a>
                        </div>
                    </div>
                </ul>
                <ul class="message-r">
                    <div class="topMessage home">
                        <div class="menu-hd">你好！
                            <a href="../../Index.aspx" target="_top" class="h"><%=getUserName()%></a></div>
                    </div>
                    <div class="topMessage home">
                        <div class="menu-hd">
                            <a href="../../Login.aspx" target="_top" id="exitLogin" class="h" runat="server" >注销登录</a>
          
                        </div>
                    </div>
                    <div class="topMessage my-shangcheng">
                        <div class="menu-hd MyShangcheng"><a href="../../Person_index.aspx" target="_top">我的二手云购</a></div>
                    </div>
                    <div class="topMessage mini-cart">
                        <div class="menu-hd"><a id="mc-menu-hd" href="#" target="_top"><span>帮助</span><strong id="J_MiniCartNum" class="h"></strong></a></div>
                    </div>
                </ul>
            </div>

            <!--悬浮搜索框-->
            <div class="nav white">
                <div class="logoBig">
                    <li><img alt="search" src="../../home/images/logo4.png" /></li>
                </div>

                <div class="search-bar pr">
                    <a name="index_none_header_sysc" href="#"></a>
                    <form >
                        <input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off" />
                        <input id="ai-topsearch" class="submit am-btn" value="搜索"  type="submit" />
                    </form>
                </div>
            </div>
            <div class="clear"></div>
        </div>
    </article>
</header>
    <div class="nav-table">
        <div class="long-title">
            <span class="all-goods">全部分类</span>
        </div>
        <div class="nav-cont">
            <ul>
                <li class="index"><a href="../../Index.aspx">首页</a></li>
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
                <div class="user-foot">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf">
                            <strong class="am-text-danger am-text-lg">进行中的商品</strong> / <small>Processing&nbsp;Goods</small>
                        </div>
                    </div>
                    <hr />
                    <!--进行中的商品列表 -->
                    <% foreach (var good in goods)
                        {
                    %>
                    <div class="goods" style="padding-top: 10px;">
                        <div class="goods-box first-box">
                            <div class="goods-pic">
                                <div class="goods-pic-box">
                                    <a class="goods-pic-link" target="_blank" href="#" title="<%=good.Goodname %>">
                                        <img src="<%=good.Picurl%>" class="goods-img" style="width: 200px; height: 200px;">
                                    </a>
                                </div>
                                <a class="goods-delete" href="javascript:void(0);">
                                    <img src="../../home/images/jinxingzhong.png" />
                                </a>
                                <div class="goods-status goods-status-show">
                                    <span class="desc">云购进行中</span>
                                </div>
                            </div>
                            <div class="goods-attr">
                                <div class="good-title">
                                    <a class="title" href="#" target="_blank"><%=good.Goodname %></a>
                                </div>
                                <div class="goods-price">
                                    <span class="g_price"><span>价值：¥</span><strong><%=good.Joinpeoplenum%></strong> </span>
                                </div>
                                <div class="clear">
                                </div>
                                <div class="goods-num">
                                    <div class="match-recom">
                                        <progress value="<%=good.JoinPeople%>" max="<%=good.Joinpeoplenum %>" style="width: 150px;"></progress>
                                        <br />
                                        <br />
                                        <p class="s-title">
                                            已参与：<%=good.JoinPeople%>
                                        </p>
                                        <p class="s-title">
                                            剩余：<%=good.RemainPeople%>
                                        </p>
                                        <p class="s-title">
                                            总需人数：<%=good.Joinpeoplenum %>
                                        </p>
                                        <i><em></em><span></span></i>
                                    </div>
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
                        <a href="# ">二手云购</a> <b>|</b> <a href="# ">云购首页</a> <b>|</b> <a href="# ">支付宝</a>
                        <b>|</b> <a href="# ">物流</a>
                    </p>
                </div>
                <div class="footer-bd">
                    <p>
                        <a href="# ">关于二手运购</a> <a href="# ">联系我们</a> <em>2017-2018 CloudMarket.com 版权所有.
                        </em>
                    </p>
                </div>
            </div>
        </div>
        <aside class="menu">
        <ul>
            <li class="person active">
                <a href="index.html"><i class="am-icon-user"></i>个人中心</a>
            </li>
            <li class="person">
                <p><i class="am-icon-newspaper-o"></i>个人资料</p>
                <ul>
                    <li> <a href="information.html">个人信息</a></li>
                    <li> <a href="safety.html">安全设置</a></li>
                    <li> <a href="address.html">地址管理</a></li>
                    <li> <a href="cardlist.html">快捷支付</a></li>
                </ul>
            </li>
            <li class="person">
                <p><i class="am-icon-balance-scale"></i><a href="../PurchaseRecord/AllPurchaseRecord.aspx">云购记录</a></p>
                <ul>
                    <li><a href="../PurchaseRecord/JinxingPurchase.aspx">进行中</a></li>
                    <li> <a href="../PurchaseRecord/AnnouncedPurchase.aspx">已揭晓</a></li>
                    <li> <a href="../PurchaseRecord/ExitPurchase.aspx">已退购</a></li>
                </ul>
            </li>
            <li class="person">
                <p><i class="am-icon-dollar"></i><a href="#">已获得的商品</a></p>
                <ul>
                    <li> <a href="points.html">待确认地址</a></li>
                    <li> <a href="coupon.html">代发货</a></li>
                    <li> <a href="bonus.html">待收获</a></li>
                </ul>
            </li>

            <li class="person">
                <p><i class="am-icon-tags"></i><a href="#">已发布的商品</a></p>
                <ul>
                    <li> <a href="Addgood.aspx">添加商品</a></li>
                    <li> <a href="TradeSuccessGoods.aspx">已成功交易的商品</a></li>	
                    <li> <a href="ProcessingGoods.aspx">进行中的商品</a></li>													
                </ul>
            </li>

            <li class="person">
                <p><i class="am-icon-qq"></i>在线客服</p>
                <ul>
                    <li> <a href="../OnlineService/Suggest.aspx">意见反馈</a></li>							
                </ul>
            </li>
        </ul>
    </aside>
    </div>
</body>
</html>