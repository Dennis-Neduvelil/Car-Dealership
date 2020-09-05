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

public partial class Payment_netBanking : System.Web.UI.Page
{    MySqlCommand mysqlcommand=new MySqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Payment_Click(object sender, EventArgs e)
    {
        try
        {
            Response.Write("<script language='javascript'>window.alert('Payment Successfull');window.location='../user/UserHome.aspx';</script>");

        }
        catch (Exception ex)
        {
            Response.Write("<script language='javascript'>window.alert('Payment Successfull');window.location='../user/UserHome.aspx ';</script>");

        }
    }
    
}