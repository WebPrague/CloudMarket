using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// SuggestBLL 的摘要说明
/// </summary>
public class SuggestBLL
{
    public SuggestBLL()
    {
        
    }

    public static bool addSuggest(int userId, string suggest)
    {
        try
        {
            SuggestDAL.addSuggest(userId, suggest);
            return true;
        }
        catch (Exception e)
        {
            return false;
        }
    }
}