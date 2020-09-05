using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
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
public partial class Payment_creditCard : System.Web.UI.Page
{
    MySqlCommand mysqlcommand = new MySqlCommand();
     DataTable dataTable = new DataTable();
    DataAccess dataAccess = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Payment_Click(object sender, EventArgs e)
    {
        try
        {
            mysqlcommand.CommandText = "update tblbooking set bd_status='1' where bd_id='" + Convert.ToInt32(Session["bid"]) + "'";
            Response.Write("<Script>alert('Your Payment Through Credit Card will Be Sucess Press Ok To Leave Page')</script>");
            if (dataAccess.ExecuteQuery(mysqlcommand))
            {
                Response.Write("<script language='javascript'>window.alert('Press OK to Redirect to home');window.location='../user/UserHome.aspx';</script>");
                //Response.Redirect("../user/UserHome.aspx");

            }
            
        }
        catch (Exception ex)
        {
            lbl_msg.Visible = true;
            Response.Write("<script language='javascript'>window.alert('Payment Failed');window.location='../user/UserHome.aspx';</script>");
            Response.Redirect("../user/UserHome.aspx");
            lbl_msg.Text = "Connection Failed. Try next time";
            //Response.Redirect("~/user/Home.aspx");
        }
    }
    
}