using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Person_index : System.Web.UI.Page
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

        //username_temp = username.ToString();
        username = (string)Session["username"];
        //username  =  username_temp;
        //string username_temp = username.ToString();
        return username;
    }

    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='Index.aspx';</script>");
    }


}