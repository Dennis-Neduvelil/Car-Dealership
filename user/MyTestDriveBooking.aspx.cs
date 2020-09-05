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

public partial class user_MyTestDriveBooking : System.Web.UI.Page
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
                    fill_list();

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
    public void fill_list()
    {
        int uid = Convert.ToInt32(Session["userid"]);
        cmd.CommandText = "select * from tbltestdrive b, tblstate s, tbldistrict d, tbldealer dlr, tblplace p , tblcarname cn, tblcarver cv where b.tst_car=cn.cn_id and b.tst_ver=cv.vr_id and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status!='0'  and b.c_id='" + uid + "'";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "cancel")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            cmd.CommandText = "update tbltestdrive set tst_status='0' where tst_id='" + id + "'";
            da.ExecuteQuery(cmd);
            Response.Redirect("MyTestDriveBooking.aspx");
        }
    }
    protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e)
    {

    }
    protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        int uid = Convert.ToInt32(Session["userid"]);
        if (Drop_cartype.SelectedIndex == 0)
        {
            cmd.CommandText = "select * from tbltestdrive b, tblstate s, tbldistrict d, tbldealer dlr, tblplace p , tblcarname cn, tblcarver cv where b.tst_car=cn.cn_id and b.tst_ver=cv.vr_id and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status!='0' and b.tst_status!='3' and b.c_id='" + uid + "'";
            //cmd.CommandText = "select * from tbltestdrive b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p tblcarname cn, tblcarver cv where b.tst_car=cn.cn_id and b.tst_ver=cv.vr_id and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status!='0' and   b.tst_status!='3'   and b.c_id='" + uid + "' and b.tst_status='2' ";

        }
        if (Drop_cartype.SelectedIndex == 2)
        {
            cmd.CommandText = "select * from tbltestdrive b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p, tblcarname cn, tblcarver cv where b.tst_car=cn.cn_id and b.tst_ver=cv.vr_id and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status='3' and b.c_id='" + uid + "' ";

        }
        if (Drop_cartype.SelectedIndex == 1)
        {

            cmd.CommandText = "select * from tbltestdrive b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p, tblcarname cn, tblcarver cv where b.tst_car=cn.cn_id and b.tst_ver=cv.vr_id and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status='0'  and b.c_id='" + uid + "' ";

        }
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            Button btnp = (Button)e.Item.FindControl("btn_cancel");
            Label lbl_st = (Label)e.Item.FindControl("Label1");
            Label lbl_bkdate = (Label)e.Item.FindControl("Label2");
            Label lbl_tdate = (Label)e.Item.FindControl("Label3");
            Label lbl_d = (Label)e.Item.FindControl("Label3");
            if (lbl_st.Text == "0")
            {
                btnp.Enabled = false;
                lbl_st.Text = "Cancelled";
            }
            if (lbl_st.Text == "1")
            {
                if (lbl_d.Text != "")
                {
                    btnp.Enabled = true;
                }
                else
                {
                    btnp.Enabled = true;
                }
                lbl_st.Text = "Booked";
            }
            if (lbl_st.Text == "2")
            {
                btnp.Enabled = true;
                lbl_st.Text = "Confirmed";
            }
            if (lbl_st.Text == "3")
            {
                btnp.Enabled = false;
                lbl_st.Text = "Completed";
            }
        }
    }
}