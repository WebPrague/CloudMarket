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

    }
    public string getUserName()
    {

        //username_temp = username.ToString();
        username = (string)Session["username"];
        //username  =  username_temp;
        //string username_temp = username.ToString();
        return username;
    }
}