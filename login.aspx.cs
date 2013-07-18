using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    User user;
    protected void Page_Load(object sender, EventArgs e)
    {
        user = new User();
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (user.checkUser(txtUsername.Text, txtPassword.Text))
        {
            lblErrorMsg.Text = "Login success";
            Session.Add("user_info", user);
            Response.Redirect("transactioncenter.aspx");
        }
        else
        {
            lblErrorMsg.Text = "Login failed";
        }
    }
}