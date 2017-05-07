using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///Goods 的摘要说明
/// </summary>
public class Good
{
    public int Id { get; set; }
    public string Goodname { get; set; }
    public string Goodvalue { get; set; }
    public string Addtime { get; set; }
    public int Joinpeoplenum { get; set; }
    public string Status { get; set; }
    public int Userid { get; set; }
    public string Picurl { get; set; }
    public int JoinPeople { get; set; }
    public int RemainPeople { get; set; }
    public string LuckyCode { get; set; }
    public User user { get; set; }
}