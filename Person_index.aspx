<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Person_index.aspx.cs" Inherits="Person_index" %>

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
			<div class="long-title"><span class="all-goods">全部分类</span></div>
			<div class="nav-cont">
				<ul>
					<li class="index"><a href="#">首页</a></li>
					<li class="qc"><a href="#">最新揭晓</a></li>
					<li class="qc"><a href="#">热门推荐</a></li>
					<li class="qc"><a href="#">新品上架</a></li>
				</ul>
			</div>
		</div>
		<b class="line"></b>
		<div class="center">
			<div class="col-main">
				<div class="main-wrap">
					<div class="wrap-left">
						<div class="wrap-list">
							<div class="m-user">
								<!--个人信息 -->

							</div>

							<!--订单 -->
							<div class="m-order">
								<div class="s-bar">
									<i class="s-icon"></i>我的订单
									<a class="i-load-more-item-shadow" href="PersonalPage/PurchaseRecord/AllPurchaseRecord.aspx">全部订单</a>
								</div>
								<ul>
									<li><a href="order.html"><i><img src="home/images/pay.png"/></i><span>待付款</span></a></li>
									<li><a href="order.html"><i><img src="home/images/send.png"/></i><span>待发货<em class="m-num">1</em></span></a></li>
									<li><a href="order.html"><i><img src="home/images/receive.png"/></i><span>待收货</span></a></li>
									<li><a href="order.html"><i><img src="home/images/comment.png"/></i><span>待评价<em class="m-num">3</em></span></a></li>
									<li><a href="change.html"><i><img src="home/images/refund.png"/></i><span>退换货</span></a></li>
								</ul>
								<div class="orderContentBox">
									<div class="orderContent">
										<div class="orderContentpic">
											<div class="imgBox">
												<a href="orderinfo.html"><img src="home/images/youzi.jpg"></a>
											</div>
										</div>
										<div class="detailContent">
											<a href="orderinfo.html" class="delivery">签收</a>
											<div class="orderID">
												<span class="time">2016-03-09</span>
												<span class="splitBorder">|</span>
												<span class="time">21:52:47</span>
											</div>
											<div class="orderID">
												<span class="num">共1件商品</span>
											</div>
										</div>
										<div class="state">待评价</div>
										<div class="price"><span class="sym">¥</span>23.<span class="sym">80</span></div>

									</div>
									<a href="javascript:void(0);" class="btnPay">再次购买</a>
								</div>

								<div class="orderContentBox">
									<div class="orderContent">
										<div class="orderContentpic">
											<div class="imgBox">
												<a href="orderinfo.html"><img src="home/images/heart.jpg"></a>
											</div>
										</div>
										<div class="detailContent">
											<a href="orderinfo.html" class="delivery">派件</a>
											<div class="orderID">
												<span class="time">2016-03-09</span>
												<span class="splitBorder">|</span>
												<span class="time">21:52:47</span>
											</div>
											<div class="orderID">
												<span class="num">共2件商品</span>
											</div>
										</div>
										<div class="state">已发货</div>
										<div class="price"><span class="sym">¥</span>246.<span class="sym">50</span></div>

									</div>
									<a href="javascript:void(0);" class="btnPay">再次购买</a>
								</div>
							</div>

							<div class="user-suggestion">
								<div class="s-bar">
									<i class="s-icon"></i>会员中心
								</div>
								<div class="s-bar">
									<a href="suggest.html"><i class="s-icon"></i>意见反馈</a>
								</div>
							</div>


						</div>
					</div>
     				<div class="clear"></div>
     				


				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
						<p>
								<a href="# ">二手云购</a>
								<b>|</b>
								<a href="# ">云购首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
						</p>
					</div>
					<div class="footer-bd">
						<p>
								<a href="# ">关于二手运购</a>
								<a href="# ">联系我们</a>
								<em>2017-2018 CloudMarket.com 版权所有. </em>
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
				            <li> <a href="information.html">个人信息</a></li>
				            <li> <a href="safety.html">安全设置</a></li>
				            <li> <a href="cardlist.html">快捷支付</a></li>
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
		<!--引导 -->
		<div class="navCir">
			<li><a href="Index.aspx"><i class="am-icon-home "></i>首页</a></li>
			<li><a href="../home/sort.html"><i class="am-icon-list"></i>分类</a></li>
			<li><a href="../home/shopcart.html"><i class="am-icon-shopping-basket"></i>购物车</a></li>
			<li class="active"><a href="index.html"><i class="am-icon-user"></i>我的</a></li>
		</div>
	</body>

</html>
