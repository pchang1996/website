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


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            Response.Redirect("~/welcome.aspx");
        }
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
        con.Open();
        string query = "select count(*) from tbluser where user_name='" + txtuser.Text + "' and pass='" + txtpass.Text + "'";
        SqlCommand cmd = new SqlCommand(query, con);
        
        string output = cmd.ExecuteScalar().ToString();
        
        
        if (output == "1")
        {
            string adminQuery = "select count(*) from tbluser where user_name='" + txtuser.Text + "' and pass='" + txtpass.Text + "' and userType='A'";
            SqlCommand adminCmd = new SqlCommand(adminQuery, con);
            string adminOutput = adminCmd.ExecuteScalar().ToString();
            if (adminOutput == "1")
            {
                //now we create a session
                Session["user"] = txtuser.Text;
                Response.Redirect("~/welcomeAdmin.aspx");
            }
            else
            {
                //now we create a session
                Session["user"] = txtuser.Text;
                Response.Redirect("~/welcome.aspx");
            }
            
        }
        else
        {
            Response.Write("Login Failed");
        }
    }
}