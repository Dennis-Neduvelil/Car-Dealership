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

public partial class Admin_CarBookingReport : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillItems();
            filldealer();
        }
    }
    public void filldealer()
    {
        cmd.CommandText = "Select * from tbldealer";    
        dt = da.GetRecords(cmd);
        Drop_dealer.DataSource = dt;
        Drop_dealer.DataTextField = "dl_name";
        Drop_dealer.DataValueField = "dl_id";
        Drop_dealer.DataBind();
        Drop_dealer.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void fillItems()
    {
         cmd.CommandText = "select * from tblbooking cb, tbldealer cd where cb.bd_dealer=cd.dl_id";
        dt = da.GetRecords(cmd);
        grid_accreg.DataSource = dt;
        grid_accreg.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            cmd.CommandText = "select * from tblbooking b, tbldealer d where b.bd_dealer= '" + Drop_dealer.SelectedValue + "' and b.bd_status= '" + Drop_status.SelectedIndex + "' and b.bd_dealer=d.dl_id and  b.bd_date  between '" + Convert.ToDateTime(txt_fromdate.Text).ToString("yyyy-MM-dd") + "' and '" + Convert.ToDateTime(txt_todate.Text).ToString("yyyy-MM-dd") + "' ";
            dt = da.GetRecords(cmd);
            grid_accreg.DataSource = dt;
            grid_accreg.DataBind();

        }
        catch (Exception ex)
        {
        }
    }
    protected void grid_accreg_RowCommand(object sender, GridViewCommandEventArgs e)
    {
       
    }
    protected void grid_accreg_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {

            MySqlCommand cmd1 = new MySqlCommand();
            DataAccess dataaccess = new DataAccess();
            DataTable dt1 = new DataTable();
            Label lbl1 = (Label)e.Row.FindControl("Label1");
            if (lbl1.Text == "0")
            {
                lbl1.Text = "Cancelled";
            }
            if (lbl1.Text == "1")
            {
                lbl1.Text = "Booked";
            }
            if (lbl1.Text == "2")
            {
                lbl1.Text = "Delivered";
            }


        }
    }
}