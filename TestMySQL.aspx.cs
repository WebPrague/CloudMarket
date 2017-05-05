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
        string conn = "Data Source=127.0.0.1;User ID=root;Password=;DataBase=CloudMarket;Charset=utf8;";
        MySqlConnection con = new MySqlConnection(conn);
        con.Open(); //进行数据库连接
        MySqlCommand cmd = new MySqlCommand("select * from user", con); //数据库查询
        MySqlDataReader dr = cmd.ExecuteReader();   //读出数据
        GridView1.DataSource = dr;  //绑定到GridView组件
        GridView1.DataBind();
        dr.Close();
        con.Close();
    }
}