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
public partial class user_CarBooking : System.Web.UI.Page
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
                    fillstate();
                    fill_details();
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
    public void fill_details()
    {
        int vid = Convert.ToInt32(Request.QueryString["vrid"]);
        int clrid = Convert.ToInt32(Request.QueryString["clrid"]);
        cmd.CommandText = "select * from tblcarname cn,tblcarcolour clr, tblcarver cvr where cvr.cn_id=cn.cn_id and clr.cn_id=cn.cn_id and cvr.vr_id='" + vid + "' and clr.cclr_id='"+clrid+"'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {
            DataRow dataRow = dt.Rows[0];
            txt_cname.Text = dataRow["cn_name"].ToString();       
            txt_cclr.Text = dataRow["cclr_name"].ToString();
        }
        cmd.CommandText = "select * from tblcarver where vr_id='"+vid+"'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {
            DataRow dataRow = dt.Rows[0];
            txt_cver.Text = dataRow["vr_name"].ToString();
        }
        int uid = Convert.ToInt32(Session["userid"]);
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
    protected void deliver_Click(object sender, EventArgs e)
    {
        int vid = Convert.ToInt32(Request.QueryString["vrid"]);
        int uid = Convert.ToInt32(Session["userid"]);
        cmd.CommandText = "INSERT INTO tblbooking(bd_fname,bd_lname,bd_car,bd_clr,bd_ver,bd_state,bd_dist,bd_city,bd_dealer,bd_building,bd_locality,bd_pin,bd_landmark,bd_mobile,bd_amobile,bd_email,bd_aemail,c_id,bd_date,bd_status,vr_id)VALUES('" + txt_fname.Text + "','" + txt_lname.Text + "','" + txt_cname.Text + "','" + txt_cclr.Text + "','" + txt_cver.Text + "','" + DropDownList_state.SelectedValue + "','" + DropDownList_dist.SelectedValue + "','" + DropDownList_city.SelectedValue + "','" + DropDownList_dealer.SelectedValue + "','" + txt_building.Text + "','" + txt_locality.Text + "','" + txt_pin.Text + "','" + txt_landmark.Text + "','" + txt_mobile.Text + "','" + txt_amobile.Text + "','" + txt_email.Text + "','" + txt_aemail.Text + "','" + uid + "','" + Convert.ToDateTime(System.DateTime.Now).ToString("yyyy-MM-dd") + "','5','" + vid + "')";

        if (da.ExecuteQuery(cmd))
        {
            Response.Write("<Script>alert('Succuess')</script>");

            txt_fname.Text = "";
            txt_lname.Text = "";
            txt_landmark.Text = "";
            txt_building.Text = "";
            txt_locality.Text = "";
            txt_pin.Text = "";
            txt_aemail.Text = "";
            txt_email.Text = "";
            txt_mobile.Text = "";
            txt_amobile.Text = "";
            txt_cclr.Text = "";
            txt_cname.Text = "";
            txt_cver.Text = "";

            cmd.CommandText = "select * from tblcarprice where vr_id='" + vid + "'";
            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {
                DataRow dataRow = dt.Rows[0];
                float id = (float)Convert.ToDouble(dataRow["cp_bookingamt"]);


                cmd.CommandText = "select max(bd_id) as bdid from tblbooking ";
                dt = da.GetRecords(cmd);
                if (dt.Rows.Count > 0)
                {
                    DataRow dataRow1 = dt.Rows[0];
                    int bid = Convert.ToInt32(dataRow1["bdid"]);
                    Response.Redirect("../Payment/selectPayment.aspx?pri=" + id+"&bid="+bid);

                }
            }
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
    protected void DropDownList_state_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int sid = Convert.ToInt32(DropDownList_state.SelectedValue);
        fill_district(sid);
    }
    protected void DropDownList_dist_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int did = Convert.ToInt32(DropDownList_dist.SelectedValue);
        fill_place(did);
    }
    protected void DropDownList_city_SelectedIndexChanged1(object sender, EventArgs e)
    {
        int cid = Convert.ToInt32(DropDownList_city.SelectedValue);
        fill_dealer(cid);
    }
    protected void DropDownList_dealer_SelectedIndexChanged1(object sender, EventArgs e)
    {

    }
}
