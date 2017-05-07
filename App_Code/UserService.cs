using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MySql.Data.MySqlClient;   //引入命名空间

/// <summary>
///UserService 的摘要说明
/// </summary>
public class UserService
{
	public UserService()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public static int getUserIdByPhone(string phonenumber)
    {
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open(); //进行数据库连接
        string sql_phone = "select * from user where phonenumber=@phonenumber";
        MySqlCommand comm_phone = new MySqlCommand(sql_phone, con);
        comm_phone.Parameters.Add("phonenumber",phonenumber);
        MySqlDataReader sdr_phone = comm_phone.ExecuteReader();
        int id = -1;
        if(sdr_phone.Read()){
            id = sdr_phone.GetInt32("id");
        }
        sdr_phone.Close();
        comm_phone.Clone();
        con.Close();
        return id;
    }

    public static int getUserIdByEmail(string email)
    {
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open(); //进行数据库连接
        string sql_email = "select * from user where email=@email";
        MySqlCommand comm_email = new MySqlCommand( sql_email, con);
        comm_email.Parameters.Add("email", email);
        MySqlDataReader sdr_email = comm_email.ExecuteReader();
        int id = -1;
        if (sdr_email.Read())
        {
          id =  sdr_email.GetInt32("id");
        }
        sdr_email.Close();
        comm_email.Clone();
        con.Close();
        return id;
    }

    public static bool judgePhoneNumberLogin(string phonenumber)
    {
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open(); //进行数据库连接
        string sql_phone = "select * from user where phonenumber=@phonenumber";
        MySqlCommand comm_phone = new MySqlCommand(sql_phone, con);
        comm_phone.Parameters.Add("phonenumber", phonenumber);
        MySqlDataReader sdr_phone = comm_phone.ExecuteReader();
        if (sdr_phone.Read())
        {
            sdr_phone.Close();
            comm_phone.Clone();
            con.Close();
            return true;
        }
        sdr_phone.Close();
        comm_phone.Clone();
        con.Close();
        return false;
    }

    public static bool judgeEmailLogin(string email)
    {
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open(); //进行数据库连接
        string sql_email = "select * from user where email=@email";
        MySqlCommand comm_email = new MySqlCommand(sql_email, con);
        comm_email.Parameters.Add("phonenumber", email);
        MySqlDataReader sdr_email = comm_email.ExecuteReader();
        if (sdr_email.Read())
        {
            sdr_email.Close();
            comm_email.Clone();
            con.Close();
            return true;
        }
        sdr_email.Close();
        comm_email.Clone();
        con.Close();
        return false;
    }

    public static User GetUserPhonenumberByUserId(int userid)
    {
        string sql = "select * from user where id=?userid";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?userid", userid));
        MySqlDataReader rdr = comm.ExecuteReader();
        User user = new User();
        while (rdr.Read())
        {
            user.Id = rdr.GetInt32("id");
            user.Phonenumber = rdr.GetString("phonenumber");
            //user.Email = rdr.GetString("email");
            //order.good = GoodService.GetAnnouncedGoodMsg(order.GoodId);
        }
        comm.Clone();
        con.Close();
        return user;
    }

    public static User GetUserMailByUserId(int userid)
    {
        string sql = "select * from user where id=?userid";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?userid", userid));
        MySqlDataReader rdr = comm.ExecuteReader();
        User user = new User();
        while (rdr.Read())
        {
            user.Id = rdr.GetInt32("id");
            //user.Phonenumber = rdr.GetString("phonenumber");
            user.Email = rdr.GetString("email");
            //order.good = GoodService.GetAnnouncedGoodMsg(order.GoodId);
        }
        comm.Clone();
        con.Close();
        return user;
    }

    public static bool judgeEmailLoginByUserId(int userid)
    {

        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open(); //进行数据库连接
        string sql_email = "select * from user where id=@userid";
        MySqlCommand comm_email = new MySqlCommand(sql_email, con);
        comm_email.Parameters.Add("userid", userid);
        MySqlDataReader sdr_email = comm_email.ExecuteReader();

        User user = new User();

        if (sdr_email.Read())
        {

            if (sdr_email.GetString("email") == "0")
            {
                sdr_email.Close();
                comm_email.Clone();
                con.Close();
                return false;
            }

        }
            sdr_email.Close();
            comm_email.Clone();
            con.Close();
            return true;
    }


    public static void ModifyUserPwdByUsername(String username, string newPwd)
    {

        //User user = new User();
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        string sql = "update user set phone_password=?newPwd where phonenumber=?username";
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?newPwd", newPwd));
        comm.Parameters.Add(new MySqlParameter("?username",username));
        comm.ExecuteNonQuery();
        comm.Clone();
        con.Close();
    }



}