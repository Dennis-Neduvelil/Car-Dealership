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
public partial class user_ViewDealer : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fill_list1();
        }
    }
    public void fill_list1()
    {
        int dll = Convert.ToInt32(Session["dis"]);
        cmd.CommandText = "select * from tbldealer dl,tblstate st,tbldistrict dt,tblplace pl where dl.dl_status='Enabled' and dt.st_id=st.st_id and dl.dt_id=dt.dt_id and dl.pl_id=pl.pl_id and dt.dt_id='" + dll + "'";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
}