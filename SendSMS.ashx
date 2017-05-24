<%@ WebHandler Language="C#" Class="SendSMS" %>

using System;
using System.Web;

public class SendSMS : IHttpHandler, System.Web.SessionState.IRequiresSessionState{
    
    public void ProcessRequest (HttpContext context) {
//        context.Response.ContentType = "text/plain";
//        context.Response.Write("Hello World");
        string phone_number = context.Request["phone_number"];
        if (phone_number == null) {

            context.Response.Write(getResult(1, "参数错误"));
            return;
        }
        if (!isPhone(phone_number))
        {

            context.Response.Write(getResult(1, "手机号格式不对"));
        }
        else
        {
            string text = "【二手云购】您的验证码为{code}，在30分钟内有效。";
            string checkCode = getRandomStr();
            text = text.Replace("{code}", checkCode);
            Console.WriteLine(checkCode);
            context.Session["cc"] = checkCode;
            SMS.sendSMS(phone_number, text);
            context.Response.Write(getResult(0, "发送成功"));
        }

    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

    public bool isPhone(string str_handset)
    {
        return System.Text.RegularExpressions.Regex.IsMatch(str_handset, @"^[1]+\d{10}");
    }

    public string getResult(int code, string msg) 
    {
        string json = "";
        json = "{\"code\":" + code + ",\"msg\":\""+ msg + "\"}";
        return json;
    }
    
    private string getRandomStr(){
        string s = "";
        Random rd = new Random(); 　　　　 
        for (int i = 0; i < 6; i++)
        {
            int d = rd.Next(0, 9);
            s += d;
        }
        return s;
    }
    
}