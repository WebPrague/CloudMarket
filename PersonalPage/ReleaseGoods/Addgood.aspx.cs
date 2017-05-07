using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addgood : System.Web.UI.Page
{
    string username;
    Random rnd = new Random();
    string fileName;
    private string _directory = @"../File/UploadFile";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Write("<script>alert('亲爱的，请先登录！');location.href='../../Login.aspx';</script>");
        }
        imgLoad();

        if (Request.HttpMethod.Equals("POST"))
        {
            addGoods();
        }



    }
    public string imgLoad()
    {

        string imgUrl;
        if (Request.Files.Count > 0)
        {
            string type = Request.Files[0].ContentType;
            string fileExt = Path.GetExtension(Request.Files[0].FileName).ToLower();
            string fileFilt = ".gif|.jpg|.png|.jsp";
            if (fileFilt.IndexOf(fileExt) <= -1)
            {
                Response.Write("<script>alert('对不起，请上传图片！')</script>");
                return "";
            }
            else
            {
                fileName = Server.MapPath(_directory) + "\\" + DateTime.Now.ToString("yyyyMMddHHmmssfff") + rnd.Next(10, 99).ToString() + fileExt;
                Request.Files[0].SaveAs(fileName);
                QiniuUpload qiniuload = new QiniuUpload();
                //获取图片名
                string[] sArray = fileName.Split('\\');
                string imgName = sArray[10];
                imgName = DateTime.Now.ToString("yyyyMMddHHmmssfff") + rnd.Next(10, 99).ToString() + fileExt;
                imgUrl = qiniuload.upLoadImg(fileName, imgName);
                //Response.Write("<script>alert('图片上传成功！')</script>");
                return imgUrl;
            }

        }
            return "";
    }


    public string getUserName()
    {
        username = (string)Session["username"];
        return username;
    }
    public int getUserId()
    {
        string username = getUserName();
       if(UserService.judgePhoneNumberLogin(username)){
           
           return UserService.getUserIdByPhone(username);
       }else{
           return UserService.getUserIdByPhone(username);
       }
    }

    public void addGoods()
    {
        string goodsName = goodsname.Value;
        string goodsValue = goodsvalue.Value;
        string realGoodValue;
        bool flag = true;
        foreach (char demical in  goodsValue)
        {
            if (demical == '.')
            {
                flag = true;
            }
            else
            {
                flag = false;
            }
        }
        if (flag)
        {
            string[] sArray = goodsValue.Split('.');
            realGoodValue = sArray[0];
        }
        else
        {
            realGoodValue = goodsValue;
        }
        int joinpeoplenum = Convert.ToInt32( realGoodValue) + 10;
        string addtime = DateTime.Now.ToShortDateString().ToString();
        string status = "进行中";
        string imgUrl = imgLoad();
        Good good = GoodService.addGood(goodsName,goodsValue,getUserId(),joinpeoplenum,addtime,status,imgUrl);
        //Response.Write("<script>alert('图片上传成功！')</script>");
        Response.Write("<script>alert('商品添加成功！');location.href='ProcessingGoods.aspx';</script>");
    }

    protected void logout(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Write("<script>alert('注销登录！');location.href='../../Index.aspx';</script>");
    }



}