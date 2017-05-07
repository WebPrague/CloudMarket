using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PublishGood : System.Web.UI.Page
{
    public string username;
    public List<Good> goods = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('亲爱的，请先登录！');location.href='Login.aspx';</script>");
        }

        int userid = getUserId();
        //goods = GoodService.GetUserProcessingGood(userid);

        goods = GoodService.GetAllGoodByUserId(userid);
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

    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='Index.aspx';</script>");
    }



}