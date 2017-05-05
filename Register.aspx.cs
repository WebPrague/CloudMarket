using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;   //引入命名空间

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void mailRegister(object sender, EventArgs e)
    {
        string emailnum = emailnumber.Value;
        string emailpwd = emailpassword.Value;
        string emailrepwd = emailpasswordRepeat.Value;

        if (emailpwd == emailrepwd)
        {
            string str = "Data Source=127.0.0.1;User ID=root;Password=;DataBase=CloudMarket;Charset=utf8;";
            MySqlConnection con = new MySqlConnection(str);
            con.Open(); //进行数据库连接
            //string sql1 = "select * from user where email=@email and password=@password";

            string sql = "insert into user(email,password)values(@emailnum,@password)";

            MySqlCommand comm = new MySqlCommand(sql, con);
            comm.Parameters.Add("@emailnum", emailnum);
            comm.Parameters.Add("@password", emailpwd);
            comm.ExecuteNonQuery();
            Response.Write("<script>alert('注册成功！');location.href='Index.aspx';</script>");
            con.Close();
        }
        else
        {
            Response.Write("<script>alert('您两次输入的密码不一致，请重新输入！');location.href='Register.aspx';</script>");
        }
    }


    protected void phoneRegister(object sender, EventArgs e)
    {
        string phonenum = phone.Value;
        string phonepwd = phonepassword.Value;
        string phonerepwd = phonepasswordRepeat.Value;
        string checkCode = code.Value;
        string ccc = (string)Session["cc"];
        if(!checkCode.Equals(ccc)){
            Response.Write("<script>alert('手机验证码错误，请重新输入！');location.href='Register.aspx';</script>");
        }
        if (phonepwd == phonerepwd)
        {
            string str = "Data Source=127.0.0.1;User ID=root;Password=;DataBase=CloudMarket;Charset=utf8;";
            MySqlConnection con = new MySqlConnection(str);
            con.Open(); //进行数据库连接
            //string sql1 = "select * from user where email=@email and password=@password";
            string sql = "insert into user(phonenumber,password)values(@phonenumber,@password)";

            MySqlCommand comm = new MySqlCommand(sql, con);
            comm.Parameters.Add("@phonenumber", phonenum);
            comm.Parameters.Add("@password", phonepwd);
            comm.ExecuteNonQuery();
            Response.Write("<script>alert('注册成功！');location.href='Index.aspx';</script>");
            con.Close();
        }
        else
        {
            Response.Write("<script>alert('您两次输入的密码不一致，请重新输入！');location.href='Register.aspx';</script>");
        }
    }
}