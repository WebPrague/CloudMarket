using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UpdateShopCar : System.Web.UI.Page
{
    public string username;
    public ShopCar shopcar = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('亲爱的，请先登录！');location.href='Login.aspx';</script>");
        }
        updateShopCar();
        //buytime1.Value = updateShopCar().BuyTime.ToString();
  
    }
    public string getUserName()
    {
        username = (string)Session["username"];
        return username;

    }

    public ShopCar updateShopCar()
    {
        int shopid_temp = int.Parse(Request.QueryString["shopid"].ToString());
        int  buytime_temp = int.Parse(Request.Params["time"]);
        //获取用户id
        int userid;
        userid = UserService.getUserIdByPhone(getUserName());
        if (userid == 0)
        {
            userid = UserService.getUserIdByEmail(getUserName());
        }
        ShopCarService.updateShopCar(shopid_temp, userid, buytime_temp);

        shopcar = ShopCarService.getShopCarByShopCarId(shopid_temp);

        return shopcar;

    }



    protected void addOrder(object sender, EventArgs e)
    {
        string buytime = buytime1.Value;
        int userid = 0;
        username = (string)Session["username"];
        if (UserService.getUserIdByPhone(username) == 0)
        {
            userid = UserService.getUserIdByEmail(username);
        }
        else
        {
            userid = UserService.getUserIdByPhone(username);
        }

        int buytime_judge = int.Parse(buytime);
        if (buytime_judge > shopcar.good.RemainPeople || buytime_judge <= 0)
        {
            Response.Write("<script>alert('您的输入有误，请您重新输入购买个数！');location.href='Index.aspx';</script>");
        }
        else
        {
            int buytimeInt = Convert.ToInt32(buytime);
            int goodid = shopcar.GoodId;
            string addtime = DateTime.Now.ToShortDateString().ToString();
            Good value_good = GoodService.GetGoodMsg(goodid);
            int totalPeople = value_good.Joinpeoplenum;
            int old_remainpeople = value_good.RemainPeople;

            //生成订单编号
            string orderId_head = "2017";
            string orderId = orderId_head + userid + goodid;
            int[] codeArray = Hashtable_code(totalPeople);

            for (int i = 0; i < buytimeInt; i++)
            {

                int joinpeople = OrderService.GetOrderMsg(goodid);
                //真正云购码
                string realCode = getCloudCode(codeArray, joinpeople).ToString() + userid + goodid;
                Order order = OrderService.AddOrder(userid, goodid, realCode, addtime, orderId);
            }

            int new_joinpeople = OrderService.GetOrderMsg(goodid);
            int remainpeople = totalPeople - new_joinpeople;
            GoodService.UpdateGoodPeople(new_joinpeople, remainpeople, goodid);
            if (remainpeople == 0)
            {
                //开奖
                //1.依据goodid从cloudorder中随机查询一个luckycode
                string luckyCode = OrderService.getLuckyCodeByGoodId(goodid);
                //2.修改该good的信息
                GoodService.UpateGoodLuckyMsg(goodid, luckyCode);
                //3.进入显示该商品信息的界面
                Response.Write("<script>location.href='PersonalPage/PurchaseRecord/AnnouncedPurchase.aspx';</script>");
            }
            Response.Write("<script>alert('订单添加成功！');location.href='PersonalPage/PurchaseRecord/JinxingPurchase.aspx';</script>");
        }
    }

    //用于实现生成所有的不重复的云购码 放在数组里
    public int[] Hashtable_code(int maxNum)
    {

        //定义存放所有code的数组
        int[] code_temp = new int[maxNum + 1];
        int code = 0;
        Hashtable hashtable = new Hashtable();
        Random rm = new Random(maxNum);
        for (int i = 0; hashtable.Count < maxNum; i++)
        {
            int nValue = rm.Next(999999);
            if (!hashtable.ContainsValue(nValue) && nValue != 0)
            {
                hashtable.Add(nValue, nValue);
                Console.WriteLine(nValue.ToString());
                code_temp[i] = int.Parse(nValue.ToString());
            }
        }
        return code_temp;
    }

    //定义从数组中取云购码
    public int getCloudCode(int[] code_array, int join_index)
    {
        int realCode = code_array[join_index];
        return realCode;
    }

    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='Index.aspx';</script>");
    }




}