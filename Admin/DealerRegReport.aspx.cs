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

public partial class Admin_DealerRegReport : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillItems();
            filldropdown1();
        }
    }
    public void filldropdown1()
    {
        cmd.CommandText = "Select * from tblstate";
        dt = da.GetRecords(cmd);
        Drop_sate.DataSource = dt;
        Drop_sate.DataTextField = "st_name";
        Drop_sate.DataValueField = "st_id";
        Drop_sate.DataBind();
        Drop_sate.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void fillItems()
    {
        cmd.CommandText = "select * from tbldealer cd,tblstate st,tbldistrict dt,tblplace pl where cd.st_id=st.st_id and cd.pl_id=pl.pl_id and cd.dt_id=dt.dt_id";
        dt = da.GetRecords(cmd);
        grid_dealerregreport.DataSource = dt;
        grid_dealerregreport.DataBind();
    }
    protected void grid_custregreport_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Drop_sate_SelectedIndexChanged(object sender, EventArgs e)
    {
        int sid = Convert.ToInt32(Drop_sate.SelectedValue);
        cmd.CommandText = "select * from tbldistrict where st_id='" + sid + "'";
        dt = da.GetRecords(cmd);
        Drop_dist.DataSource = dt;
        Drop_dist.DataTextField = "dt_name";
        Drop_dist.DataValueField = "dt_id";
        Drop_dist.DataBind();
        Drop_dist.Items.Insert(0, new ListItem("----select----", "0"));
        
    }
    protected void Drop_dist_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            cmd.CommandText = "select * from tbldealer cd,tblstate st,tbldistrict dt,tblplace pl where dt.dt_id= '" + Drop_dist.SelectedValue + "' and cd.st_id=st.st_id and cd.pl_id=pl.pl_id and cd.dt_id=dt.dt_id ";
            dt = da.GetRecords(cmd);
            grid_dealerregreport.DataSource = dt;
            grid_dealerregreport.DataBind();

        }
        catch (Exception ex)
        {
        }
    }
}