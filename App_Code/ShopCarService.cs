using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;   //引入命名空间

/// <summary>
/// ShopCarService 的摘要说明
/// </summary>
public class ShopCarService
{
    public ShopCarService()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public static void addShopCar(int userid, int goodid, int buytime)
    {
        ShopCar shopcar = new ShopCar();

        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        string sql = "insert into shopcar(userid,goodid,buytime)values(@userid,@goodid,@buytime)";
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("@userid", userid));
        comm.Parameters.Add(new MySqlParameter("@goodid", goodid));
        comm.Parameters.Add(new MySqlParameter("@buytime", buytime));
        comm.ExecuteNonQuery();
        comm.Clone();
        con.Close();
    }

    public static List<ShopCar> getAllShopCarByUserId(int userid)
    {

        List<ShopCar> shopcars = new List<ShopCar>();
        string sql = "select * from shopcar where userid=?userid";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?userid", userid));
        MySqlDataReader rdr = comm.ExecuteReader();

        while (rdr.Read())
        {
            ShopCar shopcar = new ShopCar();
            shopcar.Id = rdr.GetInt32("id");
            shopcar.UserId = rdr.GetInt32("userid");
            shopcar.GoodId = rdr.GetInt32("goodid");
            shopcar.BuyTime = rdr.GetInt32("buytime");
            shopcar.good = GoodService.GetGoodMsg(shopcar.GoodId);
            shopcars.Add(shopcar);
        }
        comm.Clone();
        con.Close();
        return shopcars;

    }

    public static void updateShopCar(int shopcarid, int userid, int buytime)
    {

        ShopCar shopcar = null;
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        string sql = "update shopcar set buytime=?buytime where id=?shopcarid and userid=?userid";
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?userid", userid));
        comm.Parameters.Add(new MySqlParameter("?shopcarid", shopcarid));
        comm.Parameters.Add(new MySqlParameter("?buytime", buytime));
        comm.ExecuteNonQuery();
        comm.Clone();
        con.Close();

    }

    public static ShopCar getShopCarByShopCarId(int shopcarid)
    {
        ShopCar shopcar = new ShopCar();
        string sql = "select * from shopcar where id=?shopcarid";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?shopcarid", shopcarid));
        MySqlDataReader rdr = comm.ExecuteReader();
        while (rdr.Read())
        {
        shopcar.UserId = rdr.GetInt32("userid");
        shopcar.GoodId = rdr.GetInt32("goodid");
        shopcar.BuyTime = rdr.GetInt32("buytime");
        shopcar.good = GoodService.GetGoodMsg(shopcar.GoodId);
        }

      
        comm.Clone();
        con.Close();
        return shopcar;
    }

    public static void deleteShopCar(int shopcarid)
    {
        ShopCar shopcar = new ShopCar();

        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        string sql = "delete from shopcar where id=?shopcarid";
        MySqlCommand comm = new MySqlCommand(sql, con);

        comm.Parameters.Add(new MySqlParameter("?shopcarid", shopcarid));

        comm.ExecuteNonQuery();
        comm.Clone();
        con.Close();
    }

    public static bool judgeShopCar(int userid, int goodid)
    {
        string sql = "select * from shopcar where userid=?userid and goodid=?goodid";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?userid", userid));
        comm.Parameters.Add(new MySqlParameter("?goodid",goodid));
        MySqlDataReader rdr = comm.ExecuteReader();

        //bool flag = true;

        if (rdr.Read())
        {
            //flag = false;
            return false;
        }
        else
        {
            return true;

        }
    }





}