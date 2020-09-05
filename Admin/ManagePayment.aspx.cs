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

public partial class Admin_ManagePayment : System.Web.UI.Page
{

    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fill();
        }
    }
    public void fill()
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
        cmd.CommandText = "select * from tblbooking b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p, tblcarprice pr where b.bd_dealer=dlr.dl_id and b.bd_city=p.pl_id and b.bd_dist=d.dt_id and b.bd_state=s.st_id and b.bd_status='1' and pr.vr_id=b.vr_id and b.bd_id='" + id + "'";
         dt = da.GetRecords(cmd);
         if (dt.Rows.Count > 0)
         {
             DataRow dataRow = dt.Rows[0];
             txt_uname.Text = dataRow["bd_email"].ToString();
             txt_carname.Text = dataRow["bd_car"].ToString();
             txt_versionname.Text = dataRow["bd_ver"].ToString();
             txt_onoad.Text = dataRow["cp_onroad"].ToString();
             txt_bamount.Text = dataRow["cp_bookingamt"].ToString();
             float orp = (float)Convert.ToDouble(txt_onoad.Text);
             float bamt = (float)Convert.ToDouble(txt_bamount.Text);
             txt_total.Text = (orp - bamt).ToString();
         }
    }
    protected void Btn_save_Click(object sender, EventArgs e)
    {
        int id = Convert.ToInt32(Request.QueryString["id"]);
    
        cmd.CommandText = "insert into tblsales (del_date, bd_id, total_price) values ('"+Convert.ToDateTime(System.DateTime.Now).ToString("yyyy-MM-dd")+"', '"+id+"','"+(float)Convert.ToDouble(txt_onoad.Text)+"' )";
        da.ExecuteQuery(cmd);

        cmd.CommandText = "update tblbooking set bd_status='2' where bd_id='" + id + "'";
        da.ExecuteQuery(cmd);
        Response.Redirect("ViewBooking.aspx");
    }
}