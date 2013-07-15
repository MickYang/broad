using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using passage;

/// <summary>
/// 用户分为两种，普通同学和班长
/// 普通同学不能选择发布事务的类别
/// 而班长可以选择班务或普通事务
/// </summary>
public class user
{
    public string user_id{ get; set; }//编号
　　public string name{ get; set; } //用户名 
    public string sex{ get; set; } //性别
    public int age{ get; set; }    //年龄
    public int right{ get; set; }  //权限
    public string user_password{ get; set; }   //密码
　　public string location{ get; set; }    //位置
    public int status{ get; set; } //状态
	public string email{ get; set; }  //邮箱
	public user()

	{
		//
		// TODO: Add constructor logic here
		//
       
	} 
    
}