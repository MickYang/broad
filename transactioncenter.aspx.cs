using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class transactioncenter : System.Web.UI.Page
{
    User user;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_info"] == null)
        {
            Response.Redirect("login.aspx");
        }
        user = (User)Session["user_info"];
        lblWelcome.Text = user.name;
        lblUserid.Text = user.user_id;
    }
    protected void btnPostMessage_Click(object sender, EventArgs e)
    {
        Response.Redirect("postmessage.aspx");
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["user_info"] = null;
        Response.Redirect("login.aspx");
    }
}