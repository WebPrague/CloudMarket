using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WechatPay : System.Web.UI.Page
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



    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='Index.aspx';</script>");
    }


    protected void backAddOrder(object sender, EventArgs e)
    {
        int id = int.Parse(Request.QueryString["id"].ToString());
        Response.Write("<script>location.href='AddOrder.aspx?id='" + id + ";</script>");

    }



}