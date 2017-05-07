using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PersonalPage_PurchaseRecord_JinxingPurchase : System.Web.UI.Page
{
    public string username;
    public Order order = null;
    public List<Order> Orders = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('亲爱的，请先登录！');location.href='../../Login.aspx';</script>");
        }
        Orders = getOrderList();
       
    }

    public string getUserName()
    {
        username = (string)Session["username"];
        return username;
    }

    //获取订单列表
    public List<Order> getOrderList()
    {
        int userid;
        userid = UserService.getUserIdByPhone(getUserName());
        if (userid == 0)
        {
            userid = UserService.getUserIdByEmail(getUserName());
        }


        Orders = OrderService.GetOrdersByUserId(userid);
        

        Dictionary<int,int> dic = new Dictionary<int,int>();
        Dictionary<int, Order> orderDic = new Dictionary<int, Order>();
        foreach (Order order in Orders)
        {
            if (!dic.ContainsKey(  order.GoodId))
            {
                dic[order.GoodId] = 1;
            }
            else
            {
                dic[order.GoodId] = dic[order.GoodId] + 1;
            }
            orderDic[order.GoodId] = order;
        }
        
        List<Order>resultOrders = new List<Order>();
        foreach (int goodId in dic.Keys)
        {
            Order order = OrderService.GetJinxingOrderByOrderId(orderDic[goodId].Id);
            order.OrderSum = dic[order.GoodId];
            if (OrderService.getStatus(order.GoodId) == 0)
            {
                resultOrders.Add(order);
            }
            
        }
        

        return resultOrders;
    }

    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='../../Index.aspx';</script>");
    }



}