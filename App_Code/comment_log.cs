﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// 用户评论内容的记录
/// </summary>
public class comment_log
{
	public comment_log()
	{
		//
		// TODO: Add constructor logic here
		//
        int passage_id; //文章编号
		int user_id;    //用户编号
        string comment; //内容
		DateTime com_tm;    //评论时间
        bool if_reply;  //是否是回复
        string replied_comment; //被回复内容
        int replied_user;   //被回复用户

	}
}