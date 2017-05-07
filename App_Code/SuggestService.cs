using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;   //引入命名空间

/// <summary>
/// SuggestService 的摘要说明
/// </summary>
public class SuggestService
{
    public SuggestService()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    public static void  addSuggest(int userid,string problem)
    {
        Suggest suggest = new Suggest();
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        string sql = "insert into suggest(userid,problem)values(@userid,@problem)";
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("@userid", userid));
        //omm.Parameters.Add(new MySqlParameter("@type", type));
        comm.Parameters.Add(new MySqlParameter("@problem", problem));
        comm.ExecuteNonQuery();
        comm.Clone();
        con.Close();
    }




}