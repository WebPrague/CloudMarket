using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;   //引入命名空间

/// <summary>
/// CardService 的摘要说明
/// </summary>
public class CardService
{
    public CardService()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }


    public static void addCard(string cardName, string cardPwd, int status)
    {
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        string sql = "insert into admin_card_list(cardname,cardpwd,status)values(@cardname,@cardpwd,@status)";
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("@cardname", cardName));
        comm.Parameters.Add(new MySqlParameter("@cardpwd", cardPwd));
        comm.Parameters.Add(new MySqlParameter("@status", status));
        comm.ExecuteNonQuery();
        comm.Clone();
        con.Close();
    }

    public static List<Card> getAllCardList()
    {
        List<Card> cards = new List<Card>();
        string sql = "select * from admin_card_list";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        MySqlDataReader rdr = comm.ExecuteReader();
        while (rdr.Read())
        {
            Card card = new Card();
            card.Id = rdr.GetInt32("id");
            card.CardName = rdr.GetString("cardname");
            card.CardPwd = rdr.GetString("cardpwd");
            card.Status = rdr.GetInt32("status");
            cards.Add(card);
        }
        comm.Clone();
        con.Close();
        return cards;
    }

    public static Card getCardMsgByCardNumber(string card_number)
    {
        Card card = new Card();
        string sql = "select * from admin_card_list where cardpwd=?card_number";
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        MySqlCommand comm = new MySqlCommand(sql, con);
        comm.Parameters.Add(new MySqlParameter("?card_number",card_number));
        MySqlDataReader rdr = comm.ExecuteReader();
        while (rdr.Read())
        {
            //Card card = new Card();
            card.Id = rdr.GetInt32("id");
            card.CardName = rdr.GetString("cardname");
            //card.CardPwd = rdr.GetString("cardpwd");
            card.Status = rdr.GetInt32("status");
            card.Status = rdr.GetInt32("status"); 
            //cards.Add(card);
        }
        comm.Clone();
        con.Close();
        return card;
    }

    public static void UpdateCardStatus(int cardId)
    {
        MySqlConnection con = new MySqlConnection(Config_MySql.sqlUrl);
        con.Open();
        string sql = "update admin_card_list set status=?card_status where id=?cardId";
        MySqlCommand comm = new MySqlCommand(sql, con);
        int card_status = 1;
        comm.Parameters.Add(new MySqlParameter("?card_status",card_status ));
        comm.Parameters.Add(new MySqlParameter("?cardId", cardId));
        comm.ExecuteNonQuery();
        comm.Clone();
        con.Close();
    }


}