using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.Text;

/// <summary>
/// Encryption 的摘要说明
/// </summary>
public class Encryption
{
	public Encryption()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}

    public static string getMD5(string input)
    {
        MD5 message = MD5.Create();
        byte[] data = message.ComputeHash(Encoding.Default.GetBytes(input));
        StringBuilder sBuilder = new StringBuilder();
        for (int i = 0; i < data.Length; i++)
        {
            sBuilder.Append(data[i].ToString("x2"));
        }
        return sBuilder.ToString();
    }
}