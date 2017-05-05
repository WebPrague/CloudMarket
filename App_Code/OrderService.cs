using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;   //引入命名空间

/// <summary>
/// OrderService 的摘要说明
/// </summary>
public class OrderService
{
    public OrderService()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public static Order AddOrder(int userid,int goodid,string cloudcode,string addtime,string orderid)
    {
        Order order = null;
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        string sql = "insert into cloudorder(userid,goodid,cloudcode,addtime,orderid)values(@userid,@goodid,@cloudcode,@addtime,@orderid)";
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("@userid", userid));
        comm.Parameters.Add(new MySqlParameter("@goodid", goodid));
        comm.Parameters.Add(new MySqlParameter("@cloudcode", cloudcode));
        comm.Parameters.Add(new MySqlParameter("@addtime", addtime));
        comm.Parameters.Add(new MySqlParameter("@orderid", orderid));
        comm.ExecuteNonQuery();
        comm.Clone();
        con.Close();
        return order;
    }

    public static int GetOrderMsg(int goodid)
    {
        Order goodOrder = null;
        string sql = "select count(userid) as count_user from cloudorder where goodid=?goodid";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?goodid", goodid));        
        int joinpeople = int.Parse(comm.ExecuteScalar().ToString());
        comm.Clone();
        con.Close();
        return joinpeople;
    }

    public static Order GetOrderByOrderId(int orderid)
    {
        string sql = "select * from cloudorder where id=?id";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?id", orderid));
        MySqlDataReader rdr = comm.ExecuteReader();
        Order order = new Order();
        while (rdr.Read())
        {
            order.Id = rdr.GetInt32("id");
            order.UserId = rdr.GetInt32("userid");
            order.CloudCode = rdr.GetString("cloudcode");
            order.Addtime = rdr.GetString("addtime");
            order.OrderId = rdr.GetString("orderid");
            order.GoodId = rdr.GetInt32("goodid");
            order.good = GoodService.GetGoodMsg(order.GoodId);

        }
        comm.Clone();
        con.Close();
        return order;
    }



    public static Order GetJinxingOrderByOrderId(int orderid)
    {
        string sql = "select * from cloudorder where id=?id";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?id", orderid));
        MySqlDataReader rdr = comm.ExecuteReader();
        Order order = new Order();
            while (rdr.Read())
            {
                order.Id = rdr.GetInt32("id");
                order.UserId = rdr.GetInt32("userid");
                order.CloudCode = rdr.GetString("cloudcode");
                order.Addtime = rdr.GetString("addtime");
                order.OrderId = rdr.GetString("orderid");
                order.GoodId = rdr.GetInt32("goodid");
                order.good = GoodService.GetJinxingGoodMsg(order.GoodId);
                
            }
        comm.Clone();
        con.Close();
        return order;
    }


    public static Order GetAnnounedOrderByOrderId(int orderid)
    {
        string sql = "select * from cloudorder where id=?id";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?id", orderid));
        MySqlDataReader rdr = comm.ExecuteReader();
        Order order = new Order();
        while (rdr.Read())
        {
            order.Id = rdr.GetInt32("id");
            order.UserId = rdr.GetInt32("userid");
            order.CloudCode = rdr.GetString("cloudcode");
            order.Addtime = rdr.GetString("addtime");
            order.OrderId = rdr.GetString("orderid");
            order.GoodId = rdr.GetInt32("goodid");
            order.good = GoodService.GetAnnouncedGoodMsg(order.GoodId);

        }
        comm.Clone();
        con.Close();
        return order;
    }




    public static List<Order> GetOrdersByOrderId(int orderid)
    {
        List<Order>orders = new List<Order>();
        string sql = "select * from cloudorder where orderid=?id";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?id", orderid));
        MySqlDataReader rdr = comm.ExecuteReader();
        
        while (rdr.Read())
        {
            Order order = new Order();
            order.Id = rdr.GetInt32("id");
            order.UserId = rdr.GetInt32("userid");
            order.CloudCode = rdr.GetString("cloudcode");
            order.Addtime = rdr.GetString("addtime");
            order.OrderId = rdr.GetString("orderid");
            order.GoodId = rdr.GetInt32("goodid");
            order.good = GoodService.GetGoodMsg(order.GoodId);
            orders.Add(order);
        }
        comm.Clone();
        con.Close();
        return orders;
    }


    public static Order GetOrderByRealOrderId(int orderid)
    {
        string sql = "select * from cloudorder where orderid=?orderid";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?orderid", orderid));
        MySqlDataReader rdr = comm.ExecuteReader();
        Order order = new Order();
        while (rdr.Read())
        {
            order.Id = rdr.GetInt32("id");
            order.UserId = rdr.GetInt32("userid");
            order.CloudCode = rdr.GetString("cloudcode");
            order.Addtime = rdr.GetString("addtime");
            order.OrderId = rdr.GetString("orderid");
            order.GoodId = rdr.GetInt32("goodid");
            order.good = GoodService.GetGoodMsg(order.GoodId);

        }
        comm.Clone();
        con.Close();
        return order;
    }



    public static List<Order> GetOrdersByUserId(int user_id)
    {
        List<Order> orders = new List<Order>();
        string sql = "select * from cloudorder where userid = @userid";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("@userid", user_id));
        MySqlDataReader sdr = comm.ExecuteReader();
        while (sdr.Read())
        {
            Order order = new Order();
            order.Id = sdr.GetInt32("id");
            order.Addtime = sdr.GetString("addtime");
            order.UserId = sdr.GetInt32("userid");
            order.OrderSum = 0;
            order.CloudCode = sdr.GetString("cloudcode");
            order.GoodId = sdr.GetInt32("goodid");
            order.good = GoodService.GetGoodMsg(order.GoodId);
            orders.Add(order);
        }
        sdr.Close();
        con.Close();
        return orders;
    }

    public static string getLuckyCodeByGoodId(int goodid)
    {
        Order order = null;
        string sql = "select cloudcode from cloudorder where goodid=?goodid order by rand() limit 1";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?goodid", goodid));
        string cloudcode = comm.ExecuteScalar().ToString();
        comm.Clone();
        con.Close();
        return cloudcode;
        //return order;
    }

    /**
     0:进行中
     1:已经揭晓
         */
    public static int getStatus(int good_id)
    {
        List<Order> orders = new List<Order>();
        string sql = "select * from cloudorder where goodid = @good_id";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("@good_id", good_id));
        MySqlDataReader sdr = comm.ExecuteReader();
        while (sdr.Read())
        {
            Order order = new Order();
            order.Id = sdr.GetInt32("id");
            order.Addtime = sdr.GetString("addtime");
            order.UserId = sdr.GetInt32("userid");
            order.OrderSum = 0;
            order.CloudCode = sdr.GetString("cloudcode");
            order.GoodId = sdr.GetInt32("goodid");
            order.good = GoodService.GetGoodMsg(order.GoodId);
            orders.Add(order);
        }
        sdr.Close();
        con.Close();
        if (orders.Count > 0 && orders.Count >= orders[0].good.Joinpeoplenum)
        {
            return 1;
        }
        else
        {
            return 0;
        }


    }


}