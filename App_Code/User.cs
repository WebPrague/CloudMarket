using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///User 的摘要说明
/// </summary>
public class User
{
    public int Id { get; set; }
    public string Email { get; set; }
    public string Password { get; set; }
    public string Phonenumber { get; set; }
    public string Username { get; set; }
    public int Money { get; set; }

    public User()
	{
		//
		//TODO: 在此处添加构造函数逻辑
		//
	}
}