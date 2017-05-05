using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


using MySql.Data.MySqlClient;   //引入命名空间

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //login();
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

        string sql_email = "select * from user where email=@email and password=@password";
        string sql_phone = "select * from user where phonenumber=@phonenumber and password=@password";

        MySqlCommand comm_email = new MySqlCommand(sql_email, con);
        comm_email.Parameters.Add("email", Request.Form["username"]);
        comm_email.Parameters.Add("password", Request.Form["password"]);

        Boolean tag = true;
        MySqlDataReader sdr_email = comm_email.ExecuteReader();
        if (sdr_email.Read())
        {
            Session["username"] = username.Value;
            Session["password"] = password.Value;

            Response.Write("<script>location.href='Index.aspx';</script>");
            tag = false;
        }
        sdr_email.Close();
        if(tag)
        {
            MySqlCommand comm_phone = new MySqlCommand(sql_phone, con);

            comm_phone.Parameters.Add("phonenumber", Request.Form["username"]);
            comm_phone.Parameters.Add("password", Request.Form["password"]);
            MySqlDataReader sdr_phone = comm_phone.ExecuteReader();
            Session["username"] = username.Value;
            Session["password"] = password.Value;
            Response.Write("<script>location.href='Index.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('您输入的用户名或密码有误！');location.href='Login.aspx';</script>");

        }
        con.Close();

       
    }
}