using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// ShopCar 的摘要说明
/// </summary>
public class ShopCar
{
        public int Id { get; set; }
        public int UserId { get; set; }
        public int GoodId { get; set; }
        public int BuyTime { get; set; }
        public Good good { get; set; }
}