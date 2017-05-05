using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Qiniu.Util;
using Qiniu.Common;
using Qiniu.IO;
using Qiniu.IO.Model;
using Qiniu.Http;
/// <summary>
///QiniuUpload 的摘要说明
/// </summary>
public class QiniuUpload
{
	public QiniuUpload()
	{
		//
		//TODO: 在此处添加构造函数逻辑
        //
    }
    public string upLoadImg(string fileName,string imgName)
    {
        string imgUrl = "";
        string AccessKey = "fj70Xmr_c09YUx9Yq1cL1Gl-KqJhQ8Oe1jVuhlRU";
        string SecretKey = "n7OVMl6fn19VP9ms-5dqrzE3mwoB1VRYPsT-4CFz";
        Mac mac = new Mac(AccessKey, SecretKey);
        //七牛云的空间-hupeng-temp
        string bucket = "hupeng-temp";
        //图片的名称
        string saveKey = imgName;
        //图片的本地路径
        string localFile = fileName;
        PutPolicy putPolicy = new PutPolicy();
        // 如果需要设置为"覆盖"上传(如果云端已有同名文件则覆盖)，请使用 SCOPE = "BUCKET:KEY"
        // putPolicy.Scope = bucket + ":" + saveKey;
        putPolicy.Scope = bucket;
        // 上传策略有效期(对应于生成的凭证的有效期)          
        putPolicy.SetExpires(3600);
        // 上传到云端多少天后自动删除该文件，如果不设置（即保持默认默认）则不删除
        //putPolicy.DeleteAfterDays = 1;
        // 生成上传凭证，参见       
        string jstr = putPolicy.ToJsonString();
        string token = Auth.CreateUploadToken(mac, jstr);
        UploadManager um = new UploadManager();
        Qiniu.Common.Config.AutoZone(AccessKey, bucket, false);
        //生成外链
        HttpResult result = um.UploadFile(localFile, saveKey, token);
        Console.WriteLine(result);
        //imgUrl =  result.ToString();
        imgUrl = "http://oekmywyju.bkt.clouddn.com/" + imgName;
        return imgUrl;
    } 
}