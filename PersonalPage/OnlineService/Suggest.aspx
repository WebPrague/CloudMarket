<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Suggest.aspx.cs" Inherits="PersonalPage_OnlineService_Suggest" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1.0, user-scalable=0">

		<title>意见反馈</title>

        <link href="../../css/admin.css" rel="stylesheet" type="text/css" />
		<link href="../../css/amazeui.css" rel="stylesheet" type="text/css" />

        		<link href="../../home/css/personal.css" rel="stylesheet" type="text/css" />

		<script src="../../assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="../../assets/js/amazeui.js" type="text/javascript"></script>

	</head>

	<body>
		<!--头 -->
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
							<div class="logoBig">
								<li><img src="../../home/images/logo4.png" /></li>
							</div>

							<div class="search-bar pr">
								<a name="index_none_header_sysc" href="#"></a>
								<form>
									<input id="searchInput" name="index_none_header_sysc" type="text" placeholder="搜索" autocomplete="off">
									<input id="ai-topsearch" class="submit am-btn" value="搜索" index="1" type="submit">
								</form>
							</div>
						</div>

						<div class="clear"></div>
					</div>
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
					<!--标题 -->
					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">意见反馈</strong> / <small>Suggest</small></div>
					</div>
					<hr/>
					<div class="suggestmain">
						<p>请留下您的宝贵意见：</p>
						<div class="suggestlist">
							<select data-am-selected>
								<option value="a" selected>请选择意见类型</option>
								<option value="b">产品问题</option>
								<option value="c">促销问题</option>
								<option value="d">支付问题</option>
								<option value="e">退款问题</option>
								<option value="f">配送问题</option>
								<option value="g">售后问题</option>
								<option value="h">发票问题</option>
								<option value="o">退换货</option>
								<option value="m">其他</option>
							</select>
						</div>
						<div class="suggestDetail">
							<p>描述问题：</p>
							<blockquote class="textArea">
								<textarea name="opinionContent" id="say_some" cols="60" rows="5" autocomplete="off" placeholder="在此描述您的意见具体内容"></textarea>
								<div class="fontTip"><i class="cur">0</i> / <i>200</i></div>
							</blockquote>
						</div>
						<div class="am-btn am-btn-danger anniu">提交</div>
						<p class="suggestTel"><i class="am-icon-phone"></i>客服电话：139-4861-6544</p>
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
							<li> <a href="../ReleaseGoods/Addgood.aspx">添加商品</a></li>
							<li> <a href="../ReleaseGoodsTradeSuccessGoods.aspx">已成功交易的商品</a></li>	
                            <li> <a href="../ReleaseGoodsProcessingGoods.aspx">进行中的商品</a></li>													
						</ul>
					</li>

					<li class="person">
						<p><i class="am-icon-qq"></i>在线客服</p>
						<ul>
							<li> <a href="Suggest.aspx">意见反馈</a></li>
						</ul>
					</li>
				</ul>

			</aside>
		</div>

	</body>

</html>