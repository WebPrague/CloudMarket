using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class TradeSuccessGoods : System.Web.UI.Page
{
    public string username;
    public List<Good> goods = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        int userid = getUserId();
        goods = GoodService.GetGoodByUserId(userid);
    }
    public string getUserName()
    {
        username = (string)Session["username"];
        return username;

    }

    public int getUserId()
    {
        int userid = UserService.getUserIdByPhone(getUserName());
        if (userid == 0)
        {
            userid = UserService.getUserIdByEmail(getUserName());
        }
        return userid;
    }
}