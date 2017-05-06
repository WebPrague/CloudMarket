using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteShopCar : System.Web.UI.Page
{
    public string username; 
    protected void Page_Load(object sender, EventArgs e)
    {
        deleteShopCar();
    }
    public string getUserName()
    {
        username = (string)Session["username"];
        return username;
    }

    public void deleteShopCar()
    {
        int shopcarid = int.Parse(Request.QueryString["id"].ToString());
        int userid;
        userid = UserService.getUserIdByPhone(getUserName());
        if (userid == 0)
        {
            userid = UserService.getUserIdByEmail(getUserName());
        }

        //添加至购物车表
        ShopCarService.deleteShopCar(shopcarid);
        Response.Write("<script>alert('删除该商品成功！');location.href='PersonalShopCar.aspx';</script>");
    }

}