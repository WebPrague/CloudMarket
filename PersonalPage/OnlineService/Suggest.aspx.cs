using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PersonalPage_OnlineService_Suggest : System.Web.UI.Page
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
}