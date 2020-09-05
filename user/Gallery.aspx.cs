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

public partial class user_Gallery : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fill_list();
        }
    }
    public void fill_list()
    {
        cmd.CommandText = "select * from tblcardetails cd , tblcarname cn where cn.cn_status = 'Enabled' and cd.cn_id=cn.cn_id";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        if (Drop_cartype.SelectedIndex == 0)
        {
            cmd.CommandText = "select * from tblcardetails cd , tblcarname cn where cn.cn_status = 'Enabled' and cd.cn_id=cn.cn_id";
            dt = da.GetRecords(cmd);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
        else
        {
            cmd.CommandText = "select * from tblcardetails cd , tblcarname cn where cd.cn_id=cn.cn_id and cd.cd_type= '" + Drop_cartype.SelectedValue + "'";
            dt = da.GetRecords(cmd);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
    }
}