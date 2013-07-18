using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class postmessage : System.Web.UI.Page
{
    User user;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_info"]==null)
        {
            Response.Redirect("login.aspx");
        }
        user = (User)Session["user_info"];
        if (user.user_right == "1")
        {
            lblTranType.Visible = true;
            ddlTranType.Visible = true;
        }
        lblMsg.Text = "Right" + user.user_right;
    }
    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        string user_id = user.user_id;
        string tran_name = txtTranName.Text;
        string tran_cont = txtTranContent.Text;
        string tran_type = ddlTranType.SelectedValue;
        if (Passage.AddPassage(user_id, tran_name, tran_cont, tran_type))
        {
            lblMsg.Text = "添加成功";
        }
        else
        {
            lblMsg.Text = "添加失败";
        }
    }
    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("transactioncenter.aspx");
    }
}