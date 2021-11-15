using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
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
        try
        {
            Conn = new SqlConnection(ConnString);
            Conn.Open();
            string qry = "insert into Register_tbl values('" + txtname.Text + "','" + txtmail.Text + "','" + txtmobile.Text + "','" + txtaddress.Text + "','" + txtusername.Text + "','" + txtpwd.Text + "')";
            cmd = new SqlCommand(qry, Conn);
            cmd.ExecuteNonQuery();
            lblmsg.Text = "Registered Successfully";
            lblmsg.ForeColor = System.Drawing.Color.Green;
            Conn.Close();
        }
        catch (Exception ex)
        {
            lblmsg.Text = ex.Message.Replace("'", "");
            lblmsg.ForeColor = System.Drawing.Color.Red;

        }
    }
}