using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Xinpinshangjia : System.Web.UI.Page
{
    public string username;
    public List<Good> goods = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        goods = GoodService.GetProcessingGood();
    }
    public string getUserName()
    {
        username = (string)Session["username"];
        return username;

    }

    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='Index.aspx';</script>");
    }


}