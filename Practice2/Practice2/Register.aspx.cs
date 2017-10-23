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
using System.Net.Mail;

public partial class Register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["connect"].ToString());
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            txtuser.Text = "Welcome " + Session["user"].ToString();
        } 
        con.Open();
        Debug.WriteLine(Session["userType"]);
        Debug.WriteLine(Session["userType"].GetType());
        if (Session["userType"].ToString().Trim() != "A")
        {
            Response.Redirect("~/Error.aspx");
        }
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session.Remove("user");
        Response.Redirect("~/Default.aspx");
    }



    protected void ButtonSave_Click(object sender, EventArgs e)
    {
        if((TextBoxFirstName.Text != null) && (TextBoxLastName.Text != null) && (TextBoxEmail.Text != null))
        {
            Random rnd = new Random();
            int id = rnd.Next(1, 999);
            string username = TextBoxLastName.Text + id.ToString();
            var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var stringChars = new char[8];
            var random = new Random();
            for (int i = 0; i < stringChars.Length; i++)
            {
                stringChars[i] = chars[random.Next(chars.Length)];
            }
            var pwd = new String(stringChars);
            SqlCommand cmd = new SqlCommand("insert into tbluser values('"+username+"','"+pwd+"','S','"+TextBoxFirstName.Text+"','"+TextBoxLastName.Text+"','"+TextBoxEmail.Text+"','NULL')", con);
            cmd.ExecuteNonQuery();
            /*MailMessage mail = new MailMessage();
            mail.To.Add(TextBoxEmail.Text);
            mail.From = new MailAddress("pchang1996@gmail.com");
            mail.Subject = "sub";

            mail.Body = "testing";

            mail.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Credentials = new System.Net.NetworkCredential
                 ("yyy@gmail.com", "pw"); // ***use valid credentials***
            smtp.Port = 587;

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);*/
        }

    }
}