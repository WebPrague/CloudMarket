using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DepositCard : System.Web.UI.Page
{
    public string username;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('亲爱的，请先登录！');location.href='Login.aspx';</script>");
        }
    }

    public string getUserName()
    {
        username = (string)Session["username"];
        return username;
    }

    protected void addUserCount(object sender, EventArgs e)
    {

       string card_number =  cardNumber.Value;

       //在cardlist中匹配card_number 取到cardname,然后将cardname加到用户表的余额中
        Card card = new Card();
        card = CardService.getCardMsgByCardNumber(card_number);
        //判断一下card_number在列表中且状态为0
        //如果状态为0，则继续

        if (card_number == "")
        {
            Response.Write("<script>location.href='DepositCard.aspx';</script>");
        }
        else
        {
        if (card.Status == 0)
        {
         int card_count = int.Parse(card.CardName);

        int userid = 0;
        username = (string)Session["username"];
        if (UserService.getUserIdByPhone(username) == 0)
        {
            userid = UserService.getUserIdByEmail(username);
        }
        else
        {
            userid = UserService.getUserIdByPhone(username);
        }

        int old_cardCount = 0;
        User user = new User();
         user = UserService.GetUserMsgByUserId(userid);
        old_cardCount = user.Money;

        int new_count = old_cardCount + card_count;

        CardService.UpdateCardStatus(card.Id);

        UserService.updateUserCountByUserId(userid, new_count);

        Response.Write("<script>alert('亲爱的，充值成功！');history.go(-2);</script>");
        }
        else
        {
            //若状态为1，则提示这张卡已充值，请跳转至充值界面重新充值

            Response.Write("<script>alert('亲爱的，这张充值卡已充值，请您重新购置充值卡进行充值！！');history.go(-2);</script>");
        }
        }












    }


}