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

public partial class Admin_TstdrvReport : System.Web.UI.Page
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
        cmd.CommandText = "select td.*,td.tst_status as stt , tu.*,cn.*,cv.*,pl.*,dl.* from tbluser tu,tbltestdrive td,tblcarname cn,tblcarver cv,tblplace pl,tbldealer dl where tu.c_id= td.c_id and cn.cn_id=td.tst_car and cv.vr_id=td.tst_ver and pl.pl_id=td.tst_place and dl.dl_id=td.tst_dealer";
        dt = da.GetRecords(cmd);
        grid_tstdrv.DataSource = dt;
        grid_tstdrv.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            cmd.CommandText = "select td.*,td.tst_status as stt , tu.*,cn.*,cv.*,pl.*,dl.* from tbluser tu,tbltestdrive td,tblcarname cn,tblcarver cv,tblplace pl,tbldealer dl where tu.c_id= td.c_id and cn.cn_id=td.tst_car and cv.vr_id=td.tst_ver and pl.pl_id=td.tst_place and dl.dl_id=td.tst_dealer and td.tst_dealer= '" + Drop_dealer.SelectedValue + "' and td.tst_status= '" + Drop_status.SelectedIndex + "' and td.tst_book_date between '" + Convert.ToDateTime(txt_fromdate.Text).ToString("yyyy-MM-dd") + "' and '" + Convert.ToDateTime(txt_todate.Text).ToString("yyyy-MM-dd") + "'";
            dt = da.GetRecords(cmd);
            grid_tstdrv.DataSource = dt;
            grid_tstdrv.DataBind();

        }
        catch (Exception ex)
        {
        }
    }
    protected void grid_tstdrv_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label btn = (Label)e.Row.FindControl("Label1");
            string id = btn.Text;
            if (id == "0")
            {
                btn.Text = "Cancelled";
            }
            if (id == "1")
            {
                btn.Text = "Booked";
            }
            if (id == "2")
            {
                btn.Text = "Confirmed";
            }
            if (id == "3")
            {
                btn.Text = "Completed";
            }
        }
    }
}