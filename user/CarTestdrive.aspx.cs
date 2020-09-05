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

public partial class user_CarTestdrive : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userid"] != null)
            {
                int uid = Convert.ToInt32(Session["userid"]);
                if (uid > 0)
                {
                    Session["userid"] = uid.ToString();
                    fillcar();
                    fillstate();
                     uid = Convert.ToInt32(Session["userid"]);
                    cmd.CommandText = "select * from tbluser where c_id='" + uid + "'";
                    dt = da.GetRecords(cmd);
                    if (dt.Rows.Count > 0)
                    {
                        DataRow dataRow = dt.Rows[0];
                        txt_email.Text = dataRow["c_email"].ToString();
                        txt_pin.Text = dataRow["c_pincode"].ToString();
                        txt_landmark.Text = dataRow["c_landmark"].ToString();
                        txt_mobile.Text = dataRow["c_cntnum"].ToString();
                        txt_locality.Text = dataRow["c_landmark"].ToString();
                        txt_fname.Text = dataRow["c_fname"].ToString();
                        txt_lname.Text = dataRow["c_lname"].ToString();
                        txt_building.Text = dataRow["c_address"].ToString();


                    }
                }
                else
                {
                    Response.Redirect("UserLoginReg.aspx");
                }
            }
            else
            {
                Response.Redirect("UserLoginReg.aspx");
            }
        }
    }
    public void fillcar()
    {
        cmd.CommandText = "Select * from tblcarname where cn_status='Enabled'";
        dt = da.GetRecords(cmd);
        DropDown_car.DataSource = dt;
        DropDown_car.DataTextField = "cn_dispname";
        DropDown_car.DataValueField = "cn_id";
        DropDown_car.DataBind();
        DropDown_car.Items.Insert(0, new ListItem("Select Car", "0"));

       

    }
    public void fillstate()
    {
        cmd.CommandText = "Select * from tblstate";
        dt = da.GetRecords(cmd);
        DropDownList_state.DataSource = dt;
        DropDownList_state.DataTextField = "st_name";
        DropDownList_state.DataValueField = "st_id";
        DropDownList_state.DataBind();
        DropDownList_state.Items.Insert(0, new ListItem("Select State", "0"));
    }
    protected void testdrive_Click(object sender, EventArgs e)
    {
        int uid = Convert.ToInt32(Session["userid"]);
        cmd.CommandText = "INSERT INTO tbltestdrive(tst_fname,tst_lname,tst_car,tst_fuel,tst_ver,tst_state,tst_dist,tst_place,tst_dealer,tst_building,tst_locality,tst_zip,tst_landmark,tst_mobile,tst_amobile,tst_email,tst_aemail,tst_status, tst_book_date,c_id)VALUES('" + txt_fname.Text + "','" + txt_lname.Text + "','" + DropDown_car.SelectedValue + "','" + txt_fuel.Text + "','" + DropDown_ver.SelectedValue + "','" + DropDownList_state.SelectedValue + "','" + DropDownList_dist.SelectedValue + "','" + DropDownList_city.SelectedValue + "','" + DropDownList_dealer.SelectedValue + "','" + txt_building.Text + "','" + txt_locality.Text + "','" + txt_pin.Text + "','" + txt_landmark.Text + "','" + txt_mobile.Text + "','" + txt_amobile.Text + "','" + txt_email.Text + "','" + txt_aemail.Text + "','1','" + Convert.ToDateTime(System.DateTime.Now).ToString("yyyy-MM-dd") + "','"+uid+"')";

        if (da.ExecuteQuery(cmd))
        {
            Response.Write("<script language='javascript'>window.alert('Test-Drive Booking Sucessfull');window.location='../user/UserHome.aspx';</script>");
            
            txt_fname.Text = "";
            txt_lname .Text = "";
            txt_landmark.Text = "";
            txt_building.Text = "";
            txt_locality.Text = "";
            txt_pin.Text = "";
            txt_aemail.Text = "";
            txt_email.Text = "";
            txt_mobile.Text = "";
            txt_amobile.Text = "";
            txt_fuel.Text = "";
        }
    }
    public void fill_district(int sid)
    {
        cmd.CommandText = "select * from tbldistrict where st_id='" + sid + "'";
        dt = da.GetRecords(cmd);
        DropDownList_dist.DataSource = dt;
        DropDownList_dist.DataTextField = "dt_name";
        DropDownList_dist.DataValueField = "dt_id";
        DropDownList_dist.DataBind();
        DropDownList_dist.Items.Insert(0, new ListItem("Select District", "0"));
    }
    public void fill_place(int did)
    {
        cmd.CommandText = "select * from tblplace where dt_id='" + did + "'";
        dt = da.GetRecords(cmd);
        DropDownList_city.DataSource = dt;
        DropDownList_city.DataTextField = "pl_location";
        DropDownList_city.DataValueField = "pl_id";
        DropDownList_city.DataBind();
        DropDownList_city.Items.Insert(0, new ListItem("Select Location", "0"));
    }
    public void fill_dealer(int cid)
    {
        cmd.CommandText = "select * from tbldealer where dl_status='Enabled' and pl_id='" + cid + "'";
        dt = da.GetRecords(cmd);
        DropDownList_dealer.DataSource = dt;
        DropDownList_dealer.DataTextField = "dl_name";
        DropDownList_dealer.DataValueField = "dl_id";
        DropDownList_dealer.DataBind();
        DropDownList_dealer.Items.Insert(0, new ListItem("Select Nearby Dealership", "0"));
    }
    protected void DropDownList_state_SelectedIndexChanged(object sender, EventArgs e)
    {
        int sid = Convert.ToInt32(DropDownList_state.SelectedValue);
        fill_district(sid);
    }
    protected void DropDownList_dist_SelectedIndexChanged(object sender, EventArgs e)
    {
        int did = Convert.ToInt32(DropDownList_dist.SelectedValue);
        fill_place(did);
    }
    protected void DropDownList_city_SelectedIndexChanged(object sender, EventArgs e)
    {
        int cid = Convert.ToInt32(DropDownList_city.SelectedValue);
        fill_dealer(cid);
    }
    protected void DropDownList_dealer_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDown_car_SelectedIndexChanged(object sender, EventArgs e)
    {
        int sid = Convert.ToInt32(DropDown_car.SelectedValue);
        cmd.CommandText = "select * from tblcarver where cn_id='" + sid + "'";
        dt = da.GetRecords(cmd);
        DropDown_ver.DataSource = dt;
        DropDown_ver.DataTextField = "vr_name";
        DropDown_ver.DataValueField = "vr_id";
        DropDown_ver.DataBind();
        DropDown_ver.Items.Insert(0, new ListItem("Select Version", "0"));

        cmd.CommandText = "Select * from tblcarname where cn_id='"+sid+"'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {
            DataRow dataRow = dt.Rows[0];
            txt_fuel.Text = dataRow["cn_fuel"].ToString();
        }
    }
}