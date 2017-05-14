<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DepositCard.aspx.cs" Inherits="DepositCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <title>云购充值</title>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid" style="float:right">
        <div class="navbar-header" >
            <div style="float:right" >
                <h4 >&nbsp;&nbsp;&nbsp;您好！<%=getUserName()%></h4>
           
            </div>
            <div style="float:right">
                <a href="Index.aspx"><h4>返回云购首页</h4></a>
            </div>
        </div>
    </div>
</nav>
    <form id="form1" runat="server">
        <div style="padding-top:20px;" class="container" align="center">
            <div>
                <img src="home/images/logo4.png" />
            </div>
            <div style="padding-top:20px;">
                <h1>二手云购充值中心</h1>
            </div>
            <div class="input-group" style="padding-top:30px;">
                <span class="input-group-addon" id="basic-addon3">请输入已充值卡号：</span>
                <input type="text" runat="server" class="form-control" id="cardNumber" aria-describedby="basic-addon3" />
            </div>
            <div style="padding-top:20px;">
                <asp:Button runat="server" type="button" style="width:200px;" Text="确认充值" OnClick="addUserCount" OnClientClick="judgeCount()" class="btn btn-warning btn-lg" />
            </div>
            
            


        </div>
    </form>
    
    <script type="text/javascript">

        function getl(id) {
            //遍历整个dom对象
            return document.getElementById(id);
        }

        function judgeCount() {

            var card_number = getl("cardNumber").value;
            if (card_number == '') {
                alert("亲爱的管理员，请填入充值卡数量");
                getl("cardNumber").focus();
            }

            //window.location.href("AdminAddCard.aspx");


        }
    </script>

    

</body>
</html>
