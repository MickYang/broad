using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// 文章
/// </summary>
public class passage
{ 
    
    string passage_id;//编号
    string passage_name;//标题
    int type;//类别
    string author;//作者(对应用户编号)
    string passage_abstract;//摘要
    int like_num;//支持量
    int dislike_num;//反对量
    int look_num;//浏览量
    int comment_num;//评论量
    DateTime create_time;//创建时间
    DateTime mod_time;//最后修改时间

	public passage()
	{
		//
		// TODO: Add constructor logic here
		//
       

	}
       

}