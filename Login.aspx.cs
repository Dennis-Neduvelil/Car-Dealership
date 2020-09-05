using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class Login : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataAccess da = new DataAccess();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            RadioButtonList1.SelectedIndex = 0;
            Session.Clear();
        }
    }
    protected void btn_signin_Click(object sender, EventArgs e)
    {
        if (RadioButtonList1.SelectedIndex == 0)
        {
            cmd.CommandText = " select * from tbldealer where dealer_email='" + txt_name.Text + "' and password= '" + txt_password.Text + "' ";
            dt = da.GetRecords(cmd);
            if (dt.Rows.Count == 1)
            {
                DataRow dataRow = dt.Rows[0];

                Session["uid"] = dataRow["dl_id"].ToString();
                Session["user"] = "dealer";
                Response.Redirect("admin/Home.aspx");
            }
        }
        if (RadioButtonList1.SelectedIndex == 1)
        {
            cmd.CommandText = " select * from tbladlogin where ad_usrnme='" + txt_name.Text + "' and ad_pswrd= '" + txt_password.Text + "' ";
            dt = da.GetRecords(cmd);
            if (dt.Rows.Count == 1)
            {
                Session["user"] = "admin";
                Response.Redirect("admin/Home.aspx");
            }
        }
      
        else
        {
          
            
            Response.Write("<Script>alert('Invalid UserName and Password')</script>");
        }
    }
    protected void txt_name_TextChanged(object sender, EventArgs e)
    {

    }
}