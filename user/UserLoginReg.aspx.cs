using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Web.UI.HtmlControls;
using System.Web.Configuration;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class user_UserLoginReg : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            p_message.Visible = false;
            DIV_EMAIL.Visible = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cmd.CommandText = " select * from tbluser where c_email='" + txt_username_login.Text + "' and c_pswrd= '" + txt_password_login.Text + "' ";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count == 1)
        {
            DataRow dataRow = dt.Rows[0];
            int usrid = Convert.ToInt32( dataRow["c_id"].ToString());
            Session["userid"] = usrid;
            Response.Redirect("UserHome.aspx");
        }
        else
        {
            Response.Write("<Script>alert('Invalid UserName and Password')</script>");
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from tbluser where c_email='" + txt_username.Text + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count == 0)
        {
            DIV_EMAIL.Visible = false;

            string d = Convert.ToDateTime(txt_dob.Text).ToString("yyyy-MM-dd");
            cmd.CommandText = "INSERT INTO tbluser(c_fname,c_lname,c_gender,c_address,c_landmark,c_pincode,c_dob,c_cntnum,c_email,c_pswrd,c_date)VALUES('" + txt_fname.Text + "','" + txt_lname.Text + "','" + DropDownList_gender.SelectedValue + "','" + txt_address.Text + "','" + txt_landmark.Text + "','" + txt_pin.Text + "','" + txt_dob.Text + "','" + txt_mob.Text + "','" + txt_username.Text + "','" + txt_password.Text + "','" + System.DateTime.Now + "')";

            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                txt_address.Text = "";
                txt_dob.Text = "";
                txt_landmark.Text = "";
                txt_mob.Text = "";
                txt_fname.Text = "";
                txt_lname.Text = "";
                txt_password.Text = "";
                txt_pin.Text = "";
                txt_reenter.Text = "";
                txt_username.Text = "";
            }

        }
        else
        {
            DIV_EMAIL.Visible = true;
            DIV_EMAIL.InnerText = "Email ID Already Exist !";
          //  Response.Write("<Script>alert('Email ID Already Exist')</script>");
        }
    }
    protected void SendEmail(string pwdd)
    {
        try
        {
            string uname;
    
            string sgname = txt_username_login.Text;

            if (txt_username_login.Text != "")
            {
                uname = txt_username_login.Text;
                string f = "Suzuki Enquiry <projectrecoverymail@gmail.com>";
                var fromAddress = new MailAddress("projectrecoverymail@gmail.com");
                var fromPassword = "recoverymai";

                var toAddress = new MailAddress(sgname);
                string Body = "Dear Customer  , "
     + Environment.NewLine + "Your Password is   : " + pwdd;

                System.Net.Mail.SmtpClient smtp = new System.Net.Mail.SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new NetworkCredential(fromAddress.Address, fromPassword)

                };
                using (MailMessage nn = new MailMessage(f, sgname))
                {                  
                    nn.Body = Body;
                    nn.Subject = "Message From Suzuki  Website";
                    smtp.Send(nn);
                }
            }
            else
            {
                Response.Write("<Script>alert('Enter Username')</script>");

            }
        }


        catch (Exception ex)
        {
        }
    }
    protected string ispwd()
    {
        Boolean a = false;
        string pwd = "";
        cmd.CommandText = "select * from tbluser where c_email='" + txt_username_login.Text + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {
            DataRow dataRow = dt.Rows[0];
            pwd = dataRow["c_pswrd"].ToString();
            a = true;
            p_message.Visible = false;
        }
        else
        {
            a = false;
        }
        return pwd;

    }
    protected void forgt_ServerClick(object sender, EventArgs e)
    {
        if (txt_username_login.Text != "")
        {

            txt_username_login.Text = txt_username.Text;
            string pwd = ispwd();
            if (pwd != "")
            {
                SendEmail(pwd);
                p_message.Visible = true;
                p_message.InnerText = "Your password have been sent to the registred e-mail";
            }
            else
            {
                Response.Write("<Script>alert('Enter valid Email')</script>");
                p_message.Visible = true;
                p_message.InnerText = "Email ID can't Exist";
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "openModal();", true);
            }
        }
        else
        {
            Response.Write("<Script>alert('Enter Username')</script>");
        }
    }
}