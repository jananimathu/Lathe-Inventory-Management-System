using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
public partial class UserLogin : System.Web.UI.Page
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
        Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["Lathe"].ConnectionString);

        cmd = new SqlCommand("select * from Register_tbl where Username='" + txtname.Text + "' and Password='" + txtpwd.Text + "'", Conn);
        Conn.Open();
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {

            Session["Userid"] = dr["Id"].ToString();
            Session["UserName"] = txtname.Text;

            Response.Redirect("~/User/Home.aspx");

        }
        else
        {
            ScriptManager.RegisterStartupScript(this, typeof(Page), "alert", "<script>alert('Access Denied.....You Are Entered Wrong UserId or Password');</script>", false);
        }
    }
}