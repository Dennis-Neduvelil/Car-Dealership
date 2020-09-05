using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



public partial class Admin_ManageDate : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Btn_save_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        int vid = Convert.ToInt32(Request.QueryString["vid"]);

        cmd.CommandText = "select * from tbltestdrive where tst_test_date='" + Convert.ToDateTime(txt_date.Text).ToString("yyyy-MM-dd") + "' and tst_ver='" + vid + "' and '" + txt_timedfrom.Text + "'>= tst_time_from and '" + txt_timeto.Text + "' <=  tst_time_to and tst_status='1'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count == 0)
        {
            cmd.CommandText = "update tbltestdrive set tst_test_date='" + Convert.ToDateTime(txt_date.Text).ToString("yyyy-MM-dd") + "', tst_time_from='" + txt_timedfrom.Text + "', tst_time_to='" + txt_timeto.Text + "',tst_status='2' where tst_id='" + id + "'";
            da.ExecuteQuery(cmd);
            send_email();
            Response.Redirect("ViewTestBooking.aspx");
        }
        else
        {
            Response.Write("<Script>alert('Booking Full')</script>");
        }
    }
    public void send_email()
    {
       

        try
        {
            int test_id = Convert.ToInt32(Request.QueryString["id"]);

            DataAccess dataAccess = new DataAccess();
            cmd.CommandText = "Select * from tbltestdrive where tst_id=?uid";
            cmd.Parameters.AddWithValue("?uid", test_id);
            DataTable datatable = dataAccess.GetRecords(cmd);
            DataRow dr = datatable.Rows[0];
            string custname = dr["tst_fname"] + " " + dr["tst_lname"].ToString();
            string email = dr["tst_email"].ToString();
            string tdate = Convert.ToDateTime(dr["tst_test_date"]).ToString("dd-MMMM-yyyy");
            string ttime = dr["tst_time_from"].ToString();
            string tftime = dr["tst_time_to"].ToString();
            string carname = dr["tst_car"] + "  - " + dr["tst_ver"].ToString();
            //Get password
            string msg = "Dear " + custname + ", " + Environment.NewLine + "Thank you for Book test drive via Suzuki Online. Your TestDrive for " + carname + " has been scheduled on " + tdate + ". Our representatives come in between " + ttime + "-" + tftime + " at your selected address. Login to our site for more info http://localhost:3782/car%20dealership/user/MyTestDriveBooking.aspx";

            string uname;
            string name = dr["tst_fname"] + " " + dr["tst_lname"].ToString();


            string sdermail = email;

            string sgname = email;

            {

                {
                    uname = email;


                    string f = "Suzuki Online <projectrecoverymail@gmail.com>";
                    var fromAddress = new MailAddress("projectrecoverymail@gmail.com");
                    var fromPassword = "recoverymai";

                    var toAddress = new MailAddress(sgname);
                    string Body = "Name    : " + name
         + Environment.NewLine + "Email   : " + sdermail

         + Environment.NewLine + "Message : " + msg;

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
                        //if (fuAttachment.HasFile)
                        //{
                        //    string FileName = Path.GetFileName(fuAttachment.PostedFile.FileName);
                        //    nn.Attachments.Add(new Attachment(fuAttachment.PostedFile.InputStream, FileName));
                        //}
                        //  nn.From = "ITI mail <" + f + ">";
                        nn.Body = Body;
                        nn.Subject = "Message From Suzuki Online";

                        smtp.Send(nn);

                    }






                }

            }

        }
        catch (Exception ex)
        {
           
        }
        
    }
}