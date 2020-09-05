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

public partial class Admin_CustReg : System.Web.UI.Page
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
        cmd.CommandText = "select * from tbluser";
        dt = da.GetRecords(cmd);
        grid_custregreport.DataSource = dt;
        grid_custregreport.DataBind();
    }
    protected void grid_custregreport_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            cmd.CommandText = "select * from tbluser where c_date between '" + txt_fromdate.Text + "' and '" + txt_todate.Text + "'";
            dt = da.GetRecords(cmd);
            grid_custregreport.DataSource = dt;
            grid_custregreport.DataBind();

        }
        catch (Exception ex)
        {
        }
    }
}
