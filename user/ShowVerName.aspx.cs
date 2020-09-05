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
public partial class user_ShowVerName : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        fill_version();
    }
    public void fill_version()
    {
        int cnid = Convert.ToInt32(Request.QueryString["id"]);
        cmd.CommandText = "select * from tblcarver cv, tblcardetails cd where cv.vr_status='Enabled' and cd.cn_id='" + cnid + "' and  cv.cn_id='" + cnid + "'";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();

    }
}