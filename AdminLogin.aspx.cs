using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLogin : System.Web.UI.Page
{

    public string ConnString = WebConfigurationManager.ConnectionStrings["Lathe"].ConnectionString;
    public SqlCommand cmd = new SqlCommand();
    public SqlConnection Conn = new SqlConnection();
    public SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(txtname.Text) | string.IsNullOrEmpty(txtpwd.Text))
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Enter Username and Passsword Properly to Proceed.');", true);
            return;
        }

        if (txtname.Text.ToLower() == "admin" | txtpwd.Text.ToLower() == "Admin@321")
        {
            Response.Redirect("~/Admin/AdminHome.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Invalid Authentication.');", true);
        }
    }
}