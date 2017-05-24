using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PersonalPage_OnlineService_SuggestPage : System.Web.UI.Page
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
            addSuggest();
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

   public  void addSuggest()
    {


        string problem = sayProblem.Value;

        int userid;
        userid = UserService.getUserIdByPhone(getUserName());
        if (userid == 0)
        {
            userid = UserService.getUserIdByEmail(getUserName());
        }

        if (SuggestBLL.addSuggest(userid, problem))
        {
            Response.Write("<script>alert('反馈提交成功！！');location.href='../../PersonalPage/PurchaseRecord/AllPurchaseRecord.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('反馈提交失败！！');location.href='../../PersonalPage/PurchaseRecord/AllPurchaseRecord.aspx';</script>");
        }


    }



}