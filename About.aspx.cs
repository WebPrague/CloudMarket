﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class About : System.Web.UI.Page
{

    public string username;
    protected void Page_Load(object sender, EventArgs e)
    {

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