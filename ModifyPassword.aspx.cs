using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ModifyPassword : System.Web.UI.Page
{
    public string username;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] == null)
        {
            Response.Write("<script>alert('亲爱的，请先登录！');location.href='../../Login.aspx';</script>");
        }

        if (Request.HttpMethod.Equals("POST"))
        {
            modifyPwd();
        }
    }

    public string getUserName()
    {
        username = (string)Session["username"];
        return username;
    }

    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='../../Index.aspx';</script>");
    }

    public void modifyPwd()
    {
        string new_pwd = newpassword.Value;

         UserService.ModifyUserPwdByUsername(getUserName(), new_pwd);

        Response.Write("<script>alert('密码修改成功！');location.href='../../Person_index.aspx';</script>");

    }


}