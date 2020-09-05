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

public partial class Admin_CarRegReport : System.Web.UI.Page
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
        cmd.CommandText = "select * from tblcarname cn,tblcardetails cd where cn.cn_id=cd.cn_id";
        dt = da.GetRecords(cmd);
        grid_carregreport.DataSource = dt;
        grid_carregreport.DataBind();
    }
}