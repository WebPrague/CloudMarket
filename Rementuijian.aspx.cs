using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Rementuijian : System.Web.UI.Page
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
}