using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;   //引入命名空间

public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.HttpMethod.Equals("POST"))
        {
            login();
        }
    }
    public void login()
    {
        string str = "Data Source=127.0.0.1;User ID=root;Password=;DataBase=CloudMarket;Charset=utf8;";
        MySqlConnection con = new MySqlConnection(str);
        con.Open(); //进行数据库连接

        string sql = "select * from admin where username=@username and password=@password";

        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add("username", Request.Form["username"]);
        comm.Parameters.Add("password", Request.Form["password"]);

        MySqlDataReader sdr = comm.ExecuteReader();
        if (sdr.Read())
        {
            Session["username"] = username.ToString();
            Session["password"] = password.ToString();

            Response.Write("<script>location.href='Index.aspx';</script>");

        }else
        {
            Response.Write("<script>alert('您输入的用户名或密码有误！');location.href='Login.aspx';</script>");
        }

        con.Close();
    }
}