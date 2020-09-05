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

public partial class user_Accessory_Details : System.Web.UI.Page
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
        cmd.CommandText = "select * from tblacc where ac_id='" + Convert.ToInt32(Request.QueryString["ac_id"]) + "'";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
        if (dt.Rows.Count > 0)
        {
            DataRow dataRow = dt.Rows[0];
            div_product_name.InnerHtml = dataRow["ac_name"].ToString();
            name.InnerText = dataRow["ac_name"].ToString();
            brand.InnerText = dataRow["ac_brand"].ToString();
            type.InnerText = dataRow["ac_type"].ToString();
            price.InnerText = dataRow["ac_price"].ToString();
            warrenty.InnerText = dataRow["ac_warrenty"].ToString();
            desc.InnerText = dataRow["ac_desc"].ToString();
            acc_link.HRef = dataRow["ac_link"].ToString();
        }
    }

}