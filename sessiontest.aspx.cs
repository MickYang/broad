using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sessiontest : System.Web.UI.Page
{
    User user;
    protected void Page_Load(object sender, EventArgs e)
    {
        user = (User)Session["user_info"];
        lblAge.Text = user.age;
        lblEmail.Text = user.email;
        lblSex.Text = user.sex;
        lblStatus.Text = user.status;
        lblUser_class.Text = user.user_class;
        lblUser_grade.Text = user.user_grade;
        lblUser_right.Text = user.user_right;
        lblUsername.Text = user.name;
    }
}