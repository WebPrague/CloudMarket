using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
/// <summary>
///SMS 的摘要说明
/// </summary>
public class SMS
{
	public SMS()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}

    public static Boolean sendSMS(string phone_number,string text)
    {
        String number = phone_number;
        System.Net.WebClient client = new System.Net.WebClient();//System.Net.Webclient类从特定的URL请求文件
        client.Credentials = System.Net.CredentialCache.DefaultCredentials;//获取或设置发送到主机并用于对请求进行身份验证的网 络凭据。
        String userName = "yanyongjie";//获取用户名即短信宝帐户
        String pass = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile("15296603340yyjqq", "MD5");//短信宝帐户密码经md5加密
        String content = System.Web.HttpUtility.UrlEncode(text, System.Text.Encoding.UTF8);//短信发送内容并进行 urlencode编码
        byte[] result = client.DownloadData("http://api.smsbao.com/sms?u=" + userName + "&p=" + pass + "&m=" + number + "&c=" + content);// 向远程网址发送请求并获取返回值保存至字节数组
        String sres = Encoding.UTF8.GetString(result); /*将返回结果转换成字符串*/
        if (sres.Equals("0"))
        {
            return true;
        }
        else
        {
            return false;
        }
    }
}