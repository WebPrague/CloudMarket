using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddOrder : System.Web.UI.Page
{
    public string username;
    public Good good = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('亲爱的，请先登录！');location.href='Login.aspx';</script>");
        }
        getGoodId();
    }
    public string getUserName()
    {
        username = (string)Session["username"];
        return username;
    }

    public Good getGoodId()
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        good = GoodService.GetGoodMsg(id);
        return good;
    }


    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='Index.aspx';</script>");
    }

    protected void payOrder(object sender, EventArgs e)
    {
        string buytime = buytime1.Value;
        int id = int.Parse(Request.QueryString["id"].ToString());
        Response.Write("<script>location.href='payYouka.aspx?buy="+buytime+"&id="+id+"';</script>");

    }
}