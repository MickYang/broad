using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// 文章
/// </summary>
public class Passage
{ 
    
    int passage_id;//编号
    string passage_name;//标题
    string type;//类别
    string author;//作者(对应用户编号)
    string passage_abstract;//摘要
    int like_num;//支持量
    int dislike_num;//反对量
    int look_num;//浏览量
    int comment_num;//评论量
    DateTime create_time;//创建时间
    DateTime mod_time;//最后修改时间

	public Passage()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static bool AddPassage(string user_id, string name, string content, string type)
    {
        DBClass dbObj = new DBClass();
        SqlCommand cmd = dbObj.ChangeProcToCmd("proc_AddPassage");
        cmd.Parameters.AddWithValue("@user_id", user_id);
        cmd.Parameters.AddWithValue("@content", content);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@type", type);
        if (cmd.ExecuteNonQuery() == 1)
        {
            dbObj.Close();
            return true;
        }
        else
        {
            dbObj.Close();
            return false;
        }

    }

}