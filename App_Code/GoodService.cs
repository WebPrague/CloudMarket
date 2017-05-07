using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;   //引入命名空间

/// <summary>
///GoodsService 的摘要说明
/// </summary>
public class GoodService
{
	public GoodService()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public static Good addGood(string goodsname,string goodsvalue,int userid,int joinpeoplenum,string addtime,string status,string picurl)
    {
        Good good = null;
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        string sql = "insert into good(name,value,userid,joinpeoplenum,addtime,status,picurl,joinpeople,remainpeople,luckycode)values(@name,@value,@userid,@joinpeoplenum,@addtime,@status,@picurl,@joinpeople,@remainpeople,@luckycode)";
        MySqlCommand comm = new MySqlCommand(sql, con);
        int joinpeople = 0;
        string luckycode = "";
        comm.Parameters.Add(new MySqlParameter("@name", goodsname));
        comm.Parameters.Add(new MySqlParameter("@value", goodsvalue));
        comm.Parameters.Add(new MySqlParameter("@userid",userid));
        comm.Parameters.Add(new MySqlParameter("@joinpeoplenum",joinpeoplenum));
        comm.Parameters.Add(new MySqlParameter("@addtime",addtime));
        comm.Parameters.Add(new MySqlParameter("@status",status));
        comm.Parameters.Add(new MySqlParameter("@picurl",picurl));
        comm.Parameters.Add(new MySqlParameter("@joinpeople", joinpeople));
        comm.Parameters.Add(new MySqlParameter("@remainpeople", joinpeoplenum));
        comm.Parameters.Add(new MySqlParameter("@luckycode",luckycode));
        comm.ExecuteNonQuery();
        comm.Clone();
        con.Close();
        return good;
    }

    public static List<Good> GetProcessingGood()
    {
        string sql = "select * from good where status='进行中'";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql,con);
        MySqlDataReader rdr = comm.ExecuteReader();
        List<Good> processingGoods = new List<Good>();
        while (rdr.Read())
        {
            Good good = new Good();
            good.Id = rdr.GetInt32("id");
            good.Goodname = rdr.GetString("name");
            good.Goodvalue = rdr.GetString("value");
            good.Joinpeoplenum = rdr.GetInt32("joinpeoplenum");
            good.Picurl = rdr.GetString("picurl");
            good.JoinPeople = rdr.GetInt32("joinpeople");
            good.RemainPeople = rdr.GetInt32("remainpeople");
            processingGoods.Add(good);
        }
        comm.Clone();
        con.Close();
        return processingGoods;
    }


    public static List<Good> GetAnnouncedGood()
    {
        string sql = "select * from good where status='已揭晓'";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        MySqlDataReader rdr = comm.ExecuteReader();
        List<Good> announedGoods = new List<Good>();
        while (rdr.Read())
        {
            Good good = new Good();
            good.Id = rdr.GetInt32("id");
            good.Goodname = rdr.GetString("name");
            good.Goodvalue = rdr.GetString("value");
            good.Joinpeoplenum = rdr.GetInt32("joinpeoplenum");
            good.Picurl = rdr.GetString("picurl");
            good.JoinPeople = rdr.GetInt32("joinpeople");
            good.RemainPeople = rdr.GetInt32("remainpeople");
            good.LuckyCode = rdr.GetString("luckycode");
            announedGoods.Add(good);
        }
        comm.Clone();
        con.Close();
        return announedGoods;
    }



    public static List<Good> GetUserProcessingGood(int userid)
    {
        string sql = "select * from good where status='进行中' and userid=?userid";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?userid", userid));
        MySqlDataReader rdr = comm.ExecuteReader();
        List<Good> processingGoods = new List<Good>();
        while (rdr.Read())
        {
            Good good = new Good();
            good.Id = rdr.GetInt32("id");
            good.Goodname = rdr.GetString("name");
            good.Goodvalue = rdr.GetString("value");
            good.Joinpeoplenum = rdr.GetInt32("joinpeoplenum");
            good.Picurl = rdr.GetString("picurl");
            good.JoinPeople = rdr.GetInt32("joinpeople");
            good.RemainPeople = rdr.GetInt32("remainpeople");
            processingGoods.Add(good);
        }
        comm.Clone();
        con.Close();
        return processingGoods;
    }

    public static Good GetAnnouncedGoodMsg(int id)
    {
        string sql = "select * from good where id=?id and status='已揭晓'";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?id", id));
        MySqlDataReader rdr = comm.ExecuteReader();
        Good good = new Good();
        while (rdr.Read())
        {
            good.Id = rdr.GetInt32("id");
            good.Goodname = rdr.GetString("name");
            good.Goodvalue = rdr.GetString("value");
            good.Joinpeoplenum = rdr.GetInt32("joinpeoplenum");
            good.Picurl = rdr.GetString("picurl");
            good.JoinPeople= rdr.GetInt32("joinpeople");
            good.RemainPeople = rdr.GetInt32("remainpeople");
            good.Status = rdr.GetString("status");
            good.LuckyCode = rdr.GetString("luckycode");
        }
        comm.Clone();
        con.Close();
        return good;
    }


    public static Good GetGoodMsg(int id)
    {
        string sql = "select * from good where id=?id";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?id", id));
        MySqlDataReader rdr = comm.ExecuteReader();
        Good good = new Good();
        while (rdr.Read())
        {
            good.Id = rdr.GetInt32("id");
            good.Goodname = rdr.GetString("name");
            good.Goodvalue = rdr.GetString("value");
            good.Joinpeoplenum = rdr.GetInt32("joinpeoplenum");
            good.Picurl = rdr.GetString("picurl");
            good.JoinPeople = rdr.GetInt32("joinpeople");
            good.RemainPeople = rdr.GetInt32("remainpeople");
            good.Status = rdr.GetString("status");
            good.LuckyCode = rdr.GetString("luckycode");
        }
        comm.Clone();
        con.Close();
        return good;
    }



    public static Good GetJinxingGoodMsg(int id)
    {
        string sql = "select * from good where id=?id and status='进行中'";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?id", id));
        MySqlDataReader rdr = comm.ExecuteReader();
        Good good = new Good();
        while (rdr.Read())
        {
            good.Id = rdr.GetInt32("id");
            good.Goodname = rdr.GetString("name");
            good.Goodvalue = rdr.GetString("value");
            good.Joinpeoplenum = rdr.GetInt32("joinpeoplenum");
            good.Picurl = rdr.GetString("picurl");
            good.JoinPeople = rdr.GetInt32("joinpeople");
            good.RemainPeople = rdr.GetInt32("remainpeople");
            good.Status = rdr.GetString("status");
            good.LuckyCode = rdr.GetString("luckycode");
        }
        comm.Clone();
        con.Close();
        return good;
    }



    public static void UpdateGoodPeople(int joinpeople,int remainpeople,int id)
    {
        Good good = null;
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        string sql = "update good set joinpeople=?joinpeople,remainpeople=?remainpeople where id=?id";
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?id", id));
        comm.Parameters.Add(new MySqlParameter("?joinpeople", joinpeople));
        comm.Parameters.Add(new MySqlParameter("?remainpeople",remainpeople));
        comm.ExecuteNonQuery();
        comm.Clone();
        con.Close();
    }


    public static void UpateGoodLuckyMsg(int goodid, string luckycode)
    {
        Good good = null;
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        string sql = "update good set luckycode=?luckycode,status=?status where id=?id";
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?id", goodid));
        comm.Parameters.Add(new MySqlParameter("?luckycode", luckycode));
        comm.Parameters.Add(new MySqlParameter("?status","已揭晓"));
        comm.ExecuteNonQuery();
        comm.Clone();
        con.Close();
    }


    public static List<Good> GetGoodByUserId(int userid)
    {
        List<Good> tradeSuccessGoods = new List<Good>();
        string sql = "select * from good where userid=?userid and status='已揭晓'";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?userid", userid));
       // MySqlDataReader rdr = comm.ExecuteReader();
        MySqlDataReader rdr = comm.ExecuteReader();
        //List<Good> announedGoods = new List<Good>();
        while (rdr.Read())
        {
            Good good = new Good();
            good.Id = rdr.GetInt32("id");
            good.Goodname = rdr.GetString("name");
            good.Goodvalue = rdr.GetString("value");
            good.Joinpeoplenum = rdr.GetInt32("joinpeoplenum");
            good.Picurl = rdr.GetString("picurl");
            good.JoinPeople = rdr.GetInt32("joinpeople");
            good.RemainPeople = rdr.GetInt32("remainpeople");
            good.LuckyCode = rdr.GetString("luckycode");
            tradeSuccessGoods.Add(good);
        }
        comm.Clone();
        con.Close();
        return tradeSuccessGoods;
    }

    public static List<Good> GetAllGoodByUserId(int userid)
    {
        List<Good> allGoods = new List<Good>();
        string sql = "select * from good where userid=?userid";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?userid", userid));
        MySqlDataReader rdr = comm.ExecuteReader();
        while (rdr.Read())
        {
            Good good = new Good();
            good.Id = rdr.GetInt32("id");
            good.Goodname = rdr.GetString("name");
            good.Goodvalue = rdr.GetString("value");
            good.Joinpeoplenum = rdr.GetInt32("joinpeoplenum");
            good.Picurl = rdr.GetString("picurl");
            good.JoinPeople = rdr.GetInt32("joinpeople");
            good.RemainPeople = rdr.GetInt32("remainpeople");
            good.LuckyCode = rdr.GetString("luckycode");
            good.Status = rdr.GetString("status");
            allGoods.Add(good);
        }
        comm.Clone();
        con.Close();
        return allGoods;
    }





}