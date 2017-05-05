using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Order 的摘要说明
/// </summary>
public class Order
{
    public int Id { get; set; }
    public int UserId { get; set; }
    public int GoodId { get; set; }
    public string CloudCode { get; set; }
    public string Addtime { get; set; }
    public string OrderId { get; set; }
    public int OrderSum { get; set; }
    public Good good { get; set; }
}