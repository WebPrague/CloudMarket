using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Jump : System.Web.UI.Page
{
    //public string goodId;
    //public User user = null;
    //public Good good = null;
    public string username;
    protected void Page_Load(object sender, EventArgs e)
    {


        if (Session["username"] == null)
        {
            Response.Write("<script>alert('亲爱的，请先登录！');location.href='Login.aspx';</script>");
        }
        addShopCar();
    }

    public string getUserName()
    {
        username = (string)Session["username"];
        return username;

    }

    public void addShopCar()
    {
        int goodid = int.Parse(Request.QueryString["id"].ToString());
       // good = GoodService.GetGoodMsg(id);
        //return good;
        //获取用户id
        int userid;
        userid = UserService.getUserIdByPhone(getUserName());
        if (userid == 0)
        {
            userid = UserService.getUserIdByEmail(getUserName());
        }
        int buytime = 1;
       
        //添加至购物车表
       ShopCarService.addShopCar(userid,goodid,buytime);
       Response.Write("<script>alert('添加购物车成功！');location.href='Index.aspx';</script>");
    }

}