using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Index : System.Web.UI.Page
{
    public string username;
    public List<Good> goods = null;
    public List<Good> announedGoods = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        goods = GoodService.GetProcessingGood();
        announedGoods = GoodService.GetAnnouncedGood();
    }
    public string getUserName()
    {
        username =(string) Session["username"];
        return username;

    }
    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='Index.aspx';</script>");
    }


    protected void addshopcar(object sender, EventArgs e)
    {


        Response.Write("<script>alert('添加购物车成功！');</script>");
        //Good good = new Good();
        //string goodId = (((LinkButton)sender).CommandArgument.ToString());
    }





}