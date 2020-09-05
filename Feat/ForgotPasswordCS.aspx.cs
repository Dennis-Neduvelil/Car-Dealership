using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;
using System.Configuration;
using System.Data.SqlClient;

public partial class ForgotPasswordCS : System.Web.UI.Page
{
    protected void SendEmail(object sender, EventArgs e)
    {
        string username = string.Empty;
        string password = string.Empty;
        string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
     
        using (SqlConnection con = new SqlConnection(constr))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT name FROM tbl_userdetails WHERE name = ?mail"))
            {
                cmd.Parameters.AddWithValue("?mail", txtEmail.Text);
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    if (sdr.Read())
                    {
                        username = sdr["name"].ToString();
                       // password = sdr["Password"].ToString();
                    }
                }
                con.Close();
            }
        }
        if (!string.IsNullOrEmpty(password))
        {
            MailMessage mm = new MailMessage("sender@gmail.com", txtEmail.Text.Trim());
            mm.Subject = "Password Recovery";
            mm.Body = string.Format("Hi {0},<br /><br />Your password is {1}.<br /><br />Thank You.", username);
            mm.IsBodyHtml = true;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.EnableSsl = true;
            NetworkCredential NetworkCred = new NetworkCredential();
            NetworkCred.UserName = "sender@gmail.com";
            NetworkCred.Password = "<Password>";
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = NetworkCred;
            smtp.Port = 587;
            smtp.Send(mm);
            lblMessage.ForeColor = Color.Green;
            lblMessage.Text = "Password has been sent to your email address.";
        }
        else
        {
            lblMessage.ForeColor = Color.Red;
            lblMessage.Text = "This email address does not match our records.";
        }
    }
}