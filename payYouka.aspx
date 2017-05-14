<%@ Page Language="C#" AutoEventWireup="true" CodeFile="payYouka.aspx.cs" Inherits="payYouka" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>云购结算</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />

</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid" style="float:right">
        <div class="navbar-header" >
            <div style="float:right" >
                <h4 >&nbsp;&nbsp;&nbsp;您好！ <%=getUserName()%></h4>
           
            </div>
            <div style="float:right">
                <a href="Index.aspx"><h4>返回云购首页</h4></a>
            </div>
        </div>
    </div>
</nav>
    <form id="form1" runat="server">
    <div style="padding-top:20px;" class="container" align="center">
    <div >
        <img src="home/images/logo4.png" />
    </div>
       <div style="padding-top:20px;">
           <h2>欢迎使用二手云购充值卡支付！</h2>
         
       </div>
        <div style="padding-top:20px;">
              <p style="font-size:25px;">如果您还没有云购充值卡，请选择以下面额的充值卡充值！</p>
        </div>
        <div class="row" style="padding-top:10px;">
            <a href="http://www.youka.la/product/B521303CC940AD9A" target="_blank" type="button" class="btn btn-lg btn-warning">1元充值卡</a>
            <a href="http://www.youka.la/product/B521303CC940AD9A" target="_blank" type="button" class="btn btn-lg btn-warning">5元充值卡</a>
            <a href="http://www.youka.la/product/B521303CC940AD9A" target="_blank" type="button" class="btn btn-lg btn-warning">10元充值卡</a>

        </div>
        
        <div style="padding-top:15px;">
            <p style="font-size:25px;">如果您已购买充值卡，<a href="DepositCard.aspx">点此立即充值！</a></p>
        </div>
        

        <div style="padding-top:50px;">
            <h3 style="color:cadetblue">您的余额：￥<%=getUserCount() %>.00</h3>
            <h3>支付金额：￥<%=getPayMoney() %>.00</h3>
            <asp:Button runat="server" type="button" OnClick="payOder" style="width:150px;" class="btn btn-lg btn-info" Text="确认支付" />
        </div>

    </div>
    </form>
</body>
</html>
