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

public partial class Admin_EmpRegReport : System.Web.UI.Page
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
        cmd.CommandText = "select * from tblemp";
        dt = da.GetRecords(cmd);
        grid_empreg.DataSource = dt;
        grid_empreg.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            cmd.CommandText = "select * from tblemp where e_join between '" + txt_fromdate.Text + "' and '" + txt_todate.Text + "'";
            dt = da.GetRecords(cmd);
            grid_empreg.DataSource = dt;
            grid_empreg.DataBind();

        }
        catch (Exception ex)
        {
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}