using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderDetail : System.Web.UI.Page
{
    public string username;
    public Order order = null;
    public List<Order> orders = null;
    


    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('亲爱的，请先登录！');location.href='Login.aspx';</script>");
        }
        getOrderId();
        orders = OrderService.GetOrdersByOrderId(int.Parse(order.OrderId));
    }
    public string getUserName()
    {
        username = (string)Session["username"];
        return username;
    }
    public Order getOrderId()
    {
        int id = int.Parse(Request.QueryString["orderid"].ToString());
        int ordersum = int.Parse(Request.Params["ordersum"]);
        order = OrderService.GetOrderByRealOrderId(id);
        order.OrderSum = ordersum;
        return order;
    }

    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='Index.aspx';</script>");
    }

}