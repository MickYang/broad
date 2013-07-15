using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// 用户分为两种，普通同学和班长
/// 普通同学不能选择发布事务的类别
/// 而班长可以选择班务或普通事务
/// </summary>
public class user
{
	public user()
	{
		//
		// TODO: Add constructor logic here
		//
        string user_id; //编号
　　　　string name; //用户名 
        string sex; //性别
        int age;    //年龄
        int right;  //权限
        string user_password;   //密码
　　　　string location;    //位置
        int status; //状态
		string email;   //邮箱

	}
}