using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Diagnostics;

public partial class welcomeAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            txtuser.Text = "Welcome " + Session["user"].ToString();
        }
        /*SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        con.Open();
        string query = "select count(*) from tbluser where user_name='" + txtuser.Text + "' and userType='A'";
        SqlCommand cmd = new SqlCommand(query, con);

        string output = cmd.ExecuteScalar().ToString();
        Debug.WriteLine(output);
        if (output != "1")
        {
            Response.Redirect("~/Error.aspx");
        }*/
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        Response.Redirect("~/Default.aspx");
    }
}