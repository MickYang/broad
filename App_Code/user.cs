using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
//using passage;

/// <summary>
/// 用户分为两种，普通同学和班长
/// 普通同学不能选择发布事务的类别
/// 而班长可以选择班务或普通事务
/// </summary>
public class User
{
    public string user_id{ get; set; }//编号
　　public string name{ get; set; } //用户名 
    public string sex{ get; set; } //性别
    public string age{ get; set; }    //年龄
    public string user_right{ get; set; }  //权限
    public string user_password{ get; set; }   //密码
　　public string location{ get; set; }    //位置
    public string user_grade{ get; set; }
    public string user_class{ get; set; }
    public string status{ get; set; } //状态
	public string email{ get; set; }  //邮箱


	public User()
	{
		//
		// TODO: Add constructor logic here
		//
       
	}

    public bool checkUser(string username, string password)
    {
        name = username;
        DBClass dbObj = new DBClass();
        SqlCommand cmd = dbObj.ChangeProcToCmd("proc_CheckUser");

        //IDataParameter[] parameters = { 

        //         new SqlParameter("@username", SqlDbType.Char,20), 

        //         new SqlParameter("@password", SqlDbType.Char,128),
 
        //         new SqlParameter("@retVal", SqlDbType.Int,4),

        //     };
        //parameters[0].Value = user_id;
        //parameters[1].Value = Encryption.getMD5(password);
        //parameters[2].Direction = ParameterDirection.Output;

        //cmd.Parameters.Add(parameters[0]);
        //cmd.Parameters.Add(parameters[1]);
        //cmd.Parameters.Add(parameters[2]);

        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@password", Encryption.getMD5(password));
        SqlParameter para3 = new SqlParameter("@retVal", SqlDbType.Int);
        para3.Direction = ParameterDirection.Output;
        cmd.Parameters.Add(para3);


        //SqlParameter para1 = new SqlParameter();
        //para1.ParameterName = "@username";
        //para1.SqlDbType = SqlDbType.Char;
        //para1.Value = user_id;
        //cmd.Parameters.Add(para1);
        //SqlParameter para2 = new SqlParameter();
        //para2.ParameterName = "@password";
        //para2.SqlDbType = SqlDbType.Char;
        //para2.Value = Encryption.getMD5(password);
        //cmd.Parameters.Add(para2);
        //SqlParameter para3 = new SqlParameter();
        //para3.ParameterName = "@retVal";
        //para3.SqlDbType = SqlDbType.Int;
        //para3.Direction = ParameterDirection.Output;
        cmd.ExecuteNonQuery();
        int retVal = (int)para3.Value;
        dbObj.Close();
        if(retVal!=0)
        {
            fillData();
            return true;
        }
        return false;
    }

    public void fillData()
    {
        DBClass dbObj = new DBClass();
        SqlCommand cmd = dbObj.ChangeProcToCmd("proc_getUser");
        cmd.Parameters.AddWithValue("@username", name);
        //SqlParameter para2 = new SqlParameter("@username",SqlDbType.Char);
        SqlParameter para3 = new SqlParameter("@sex",SqlDbType.Char,6);
        SqlParameter para4 = new SqlParameter("@age",SqlDbType.Char,2);
        SqlParameter para5 = new SqlParameter("@user_right",SqlDbType.Char,2);
        SqlParameter para6 = new SqlParameter("@grade",SqlDbType.Char,4);
        SqlParameter para7 = new SqlParameter("@class",SqlDbType.Char,2);
        SqlParameter para8 = new SqlParameter("@status",SqlDbType.Char,1);
        SqlParameter para9 = new SqlParameter("@email",SqlDbType.Char,50);

        //para2.Direction = ParameterDirection.Output;
        para3.Direction = ParameterDirection.Output;
        para4.Direction = ParameterDirection.Output;
        para5.Direction = ParameterDirection.Output;
        para6.Direction = ParameterDirection.Output;
        para7.Direction = ParameterDirection.Output;
        para8.Direction = ParameterDirection.Output;
        para9.Direction = ParameterDirection.Output;

        //cmd.Parameters.Add(para2);
        cmd.Parameters.Add(para3);
        cmd.Parameters.Add(para4);
        cmd.Parameters.Add(para5);
        cmd.Parameters.Add(para6);
        cmd.Parameters.Add(para7);
        cmd.Parameters.Add(para8);
        cmd.Parameters.Add(para9);

        cmd.ExecuteNonQuery();

        sex = (string)para3.Value;
        age = (string)para4.Value;
        user_right = (string)para5.Value;
        user_grade = (string)para6.Value;
        user_class = (string)para7.Value;
        status = (string)para8.Value;
        email = (string)para9.Value;

    }
}