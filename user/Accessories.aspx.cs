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

public partial class user_Accessories : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fill_list();
            fillcar();
        }
    }
    public void fillcar()
    {
        cmd.CommandText = "Select * from tblcarname where cn_status='Enabled'";
        dt = da.GetRecords(cmd);
        Drop_car.DataSource = dt;
        Drop_car.DataTextField = "cn_dispname";
        Drop_car.DataValueField = "cn_id";
        Drop_car.DataBind();
        Drop_car.Items.Insert(0, new ListItem("All", "0"));
    }
    public void fill_list()
    {
        //cmd.CommandText = "select * from tblcardetails cd , tblcarname cn where cd.cn_id=cn.cn_id";
        cmd.CommandText = "select * from tblacc ac, tblcarname cn where ac.cn_id=cn.cn_id";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }

    protected void btn_Click(object sender, EventArgs e)
    {
        if (Drop_car.SelectedIndex == 0)
        {
            cmd.CommandText = "select * from tblacc ac, tblcarname cn where ac.cn_id=cn.cn_id";
            dt = da.GetRecords(cmd);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
        else
        {
            cmd.CommandText = "select * from tblacc ac, tblcarname cn where ac.cn_id=cn.cn_id and ac.cn_id='" + Drop_car.SelectedValue + "'";
            dt = da.GetRecords(cmd);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
}
