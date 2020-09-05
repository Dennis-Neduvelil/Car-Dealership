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
public partial class user_Placelist : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillstate();
        }
    }
        public void fillstate()
        {
        cmd.CommandText = "Select * from tblstate";
        dt = da.GetRecords(cmd);
        Drop_state.DataSource = dt;
        Drop_state.DataTextField = "st_name";
        Drop_state.DataValueField = "st_id";
        Drop_state.DataBind();
        Drop_state.Items.Insert(0, new ListItem("Select State", "0"));
        }
    protected void Drop_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        int sid = Convert.ToInt32(Drop_state.SelectedValue);
         cmd.CommandText = "select * from tbldistrict where st_id='" + sid + "'";
        dt = da.GetRecords(cmd);
        Drop_dist.DataSource = dt;
        Drop_dist.DataTextField = "dt_name";
        Drop_dist.DataValueField = "dt_id";
        Drop_dist.DataBind();
        Drop_dist.Items.Insert(0, new ListItem("Select District", "0"));
        
    }
    protected void Drop_dist_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["dis"] = Drop_dist.SelectedValue;
        
    }
    protected void continue_Click(object sender, EventArgs e)
    {

    }
}