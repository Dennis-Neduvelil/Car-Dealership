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

public partial class Admin_AccRegReport : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillItems();
            filltype();
            fillbrand();
        }
    }
    public void fillItems()
    {
        cmd.CommandText = "select * from tblacc";
        dt = da.GetRecords(cmd);
        grid_accreg.DataSource = dt;
        grid_accreg.DataBind();
    }
    public void filltype()
    {
        cmd.CommandText = "Select * from tblacc";
        dt = da.GetRecords(cmd);
        Drop_type.DataSource = dt;
        Drop_type.DataTextField = "ac_type";
        Drop_type.DataBind();
        Drop_type.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void fillbrand()
    {
        cmd.CommandText = "Select * from tblacc";
        dt = da.GetRecords(cmd);
        Drop_brand.DataSource = dt;
        Drop_brand.DataTextField = "ac_brand";
        Drop_brand.DataBind();
        Drop_brand.Items.Insert(0, new ListItem("----select----", "0"));
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            cmd.CommandText = "select * from tblacc where ac_type= '" + Drop_type.SelectedValue + "' and ac_brand= '" + Drop_brand.SelectedValue + "' ";
            dt = da.GetRecords(cmd);
            grid_accreg.DataSource = dt;
            grid_accreg.DataBind();

        }
        catch (Exception ex)
        {
        }
    }
}