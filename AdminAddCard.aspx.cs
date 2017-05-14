using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminAddCard : System.Web.UI.Page
{

    public List<Card> cards = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        cards = CardService.getAllCardList();
    }


    protected void addCard(object sender, EventArgs e)
    {
        int card_total = int.Parse(cardsum.Value);
        string card_kind = select_card.Value;

        for (int i = 1; i <= card_total; i++)
        {
            DateTime dt = DateTime.Now;

            string card_pwd =dt.ToFileTimeUtc().ToString() + Convert.ToString(i);
            // 0表示没有使用 1表示已使用
            int card_status = 0;
            CardService.addCard(card_kind,card_pwd,card_status);
        }

        Response.Write("<script>alert('成功添加充值卡！');location.href='AdminAddCard.aspx';</script>");

    }
}