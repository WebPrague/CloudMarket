<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminAddCard.aspx.cs" Inherits="AdminAddCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    


<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>管理员充卡中心</title>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid" >
        <div class="navbar-header">
            <div >
            <h4 >您好！ Admin</h4>
            </div>
        </div>
    </div>
</nav>
    <form id="form1" runat="server">
    <div align="center">
    <h3>二手云购---管理员充卡中心</h3>
    </div> 
        
       <div class="container" style="padding-top:30px;">
          <div >
              <select id="select_card" runat="server" style="width:150px;height:30px;">
                  <option value="1">1元充值卡</option>
                  <option value="5">5元充值卡</option>
                  <option value="10">10元充值卡</option>
                  <option value="15">15元充值卡</option>
                  <option value="20">20元充值卡</option>
              </select>
           </div>
           <div >

           <div class="input-group"   style="padding-top:10px;">
               <input type="text" id="cardsum" runat="server" style="width:300px;" class="form-control" placeholder="请输入添加充值卡的个数（注：输入为整数）" aria-describedby="basic-addon1" />
           </div>
           </div>
           
           
           <div  >
        <div style="padding-top:10px;">
            <asp:Button type="button" runat="server" class="btn btn-success " Text="点击生成充值卡密列表" OnClick="addCard" OnClientClick="judgeAddCard()" />
        </div>

       </div>
           
         <div style="padding-top:10px;">
             <h4><strong>卡密列表：</strong></h4>
             <table class="table table-bordered">
               <tr>
                   <th>序号</th>
                   <th>面额</th>
                   <th>卡密</th>
                   <th>状态</th>
               </tr>
                 
                 <% foreach (var card in cards)
                    {
                 %>
                 

                 <tr>
                     <td><%= card.Id %></td>
                     <td><%= card.CardName %>元充值卡</td>
                     <td><%= card.CardPwd %></td>
                     <% if (card.Status == 0)
                        {
                     %> <td>未使用</td><% }
                        else
                        { %>
                         <td>已使用</td>
                     <%
                        }
                     %>
                 </tr>
                 
                 <%
                    }
                 %>

             </table>
             
         </div>

           
           
           

       </div>
        

    </form>
<script type="text/javascript" src="bootstrap/js/jquery-3.1.1.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">

    function getl(id) {
        //遍历整个dom对象
        return document.getElementById(id);
    }
    function judgeAddCard() {

        var card_sum = getl("cardsum").value;
        if (card_sum == '') {
            alert("亲爱的管理员，请填入充值卡数量");
            getl("cardsum").focus();
        }

        window.location.href("AdminAddCard.aspx");
    }
</script>
</body>
</html>
  