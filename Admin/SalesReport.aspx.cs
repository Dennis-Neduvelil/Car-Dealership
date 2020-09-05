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

public partial class Admin_SalesReport : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillItems();
        }
    }
    public void fillItems()
    {
        cmd.CommandText = "select * from tblbooking b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p where b.bd_dealer=dlr.dl_id and b.bd_city=p.pl_id and b.bd_dist=d.dt_id and b.bd_state=s.st_id  and b.bd_status='2'";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    protected void grid_custregreport_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
            cmd.CommandText = "select * from tblbooking b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p where b.bd_dealer=dlr.dl_id and b.bd_city=p.pl_id and b.bd_dist=d.dt_id and b.bd_state=s.st_id  and  bd_date between '" + txt_fromdate.Text + "' and '" + txt_todate.Text + "' and bd_status='2'";
            dt = da.GetRecords(cmd);
            ListView1.DataSource = dt;
            ListView1.DataBind();

        }
        catch (Exception ex)
        {
        }
    }
}
