<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SuggestPage.aspx.cs" Inherits="PersonalPage_OnlineService_SuggestPage" %>

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

	    <script type="text/javascript">
    	    function getl(id) {
    	        //遍历整个dom对象
    	        return document.getElementById(id);
    	    }
            function doAddSuggest() {

                var say_problem = getl("sayProblem").value;
    	        //var strPhonePwdRepeat = getl("phonepasswordRepeat").value;
                if ( say_problem == '') {

    	            alert("请输入意见信息！");
                    getl("sayProblem").focus();
    	        } else {

                    getl("addSuggestForm1").submit();

    	        }
    	    }
    	</script>
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
					            
					                <div class="menu-hd" id="userlogout">
					                    <a  runat="server"  class="h" onserverclick="logout">注销登录</a>
					                </div>
					           
					        </div>
					        <div class="topMessage my-shangcheng">
					            <div class="menu-hd MyShangcheng"><a href="../../Index.aspx" target="_top">云购首页</a></div>
					        </div>
					        <div class="topMessage my-shangcheng">
					            <div class="menu-hd MyShangcheng"><a href="../../PersonalShopCar.aspx" target="_top">购物车</a></div>
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
								<li><img src="../../home/images/logo4.png" /></li>
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
					<!--标题 -->
                    
				    <form runat="server" method="POST" id="addSuggestForm1">

					<div class="am-cf am-padding">
						<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">意见反馈</strong> / <small>Suggest</small></div>
					</div>
					<hr/>
					<div class="suggestmain">
						<div class="suggestDetail">
							<p>描述问题：</p>
							<blockquote class="textArea">
								<textarea name="opinionContent" id="sayProblem" runat="server" cols="60" rows="5" autocomplete="off" placeholder="在此描述您的意见具体内容"></textarea>
								<div class="fontTip"><i class="cur">0</i> / <i>200</i></div>
							</blockquote>
						</div>
					
					        <input type="button"  value="提交" class="am-btn am-btn-danger anniu" onclick="doAddSuggest()" />
                        

						<p class="suggestTel"><i class="am-icon-phone"></i>客服电话：139-4861-6544</p>
					</div>
                        
				    </form>
                        

				</div>
				<!--底部-->
				<div class="footer">
					<div class="footer-hd">
                    <p>
                        <a href="#">二手云购</a> <b>|</b> <a href="../../Index.aspx">云购首页</a> 
   
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
		                <a href="../../Person_index.aspx"><i class="am-icon-user"></i>个人中心</a>
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