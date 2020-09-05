using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{

    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["user"] == "dealer")
            {
                int did = Convert.ToInt32(Session["uid"]);
                cmd.CommandText = " select * from tbldealer where dl_id='" + did + "' ";
                dt = da.GetRecords(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow dataRow = dt.Rows[0];

                    div_dealer_name.InnerText = dataRow["dl_name"].ToString();
                    li_reg.Visible = false;
                    li_caracc.Visible = false;
                    li_dealer.Visible = false;
                    li_emp.Visible = false;
                    li_place.Visible = false;
                    li_report.Visible = false;
                }
                else if (Session["user"] == "admin")
                {
                    div_dealer_name.InnerText = "Admin";
                    li_reg.Visible = true;
                    li_caracc.Visible = true;
                    li_dealer.Visible = true;
                    li_emp.Visible = true;
                    li_place.Visible = true;
                    li_report.Visible = true;
                }
               
            }
            else if (Session["user"] == "admin")
            {
                div_dealer_name.InnerText = "Admin";
                li_reg.Visible = true;
                li_caracc.Visible = true;
                li_dealer.Visible = true;
                li_emp.Visible = true;
                li_place.Visible = true;
                li_report.Visible = true;

            }
            else
            {
                Response.Redirect("../Login.aspx");
            }
        }
    }
}

