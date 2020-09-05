using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Admin_ViewBookingg : System.Web.UI.Page
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
                fill_list_dealer();
            }
            if (Session["user"] == "admin")
            {
                fill_list();
            }
        }
    }
    public void fill_list_dealer()
    {
        int did = Convert.ToInt32(Session["uid"]);

        cmd.CommandText = "select * from tbltestdrive b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p,tblcarname cn, tblcarver cv where cn.cn_id=b.tst_car and cv.vr_id=b.tst_ver and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status!='0'   AND dlr.dl_id='" + did + "' ";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    public void fill_list()
    {

        cmd.CommandText = "select * from tbltestdrive b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p,tblcarname cn, tblcarver cv where cn.cn_id=b.tst_car and cv.vr_id=b.tst_ver and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status!='0' ";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "cancel")
        {
            Label lbl_st = (Label)e.Item.FindControl("Label2");
            int id = Convert.ToInt32(e.CommandArgument);
           
            Response.Redirect("ManageDate.aspx?id="+id+"&vid="+lbl_st.Text);
        }
        if (e.CommandName == "compl")
        {
            Label lbl_st = (Label)e.Item.FindControl("Label2");
            int id = Convert.ToInt32(e.CommandArgument);
            cmd.CommandText = "update tbltestdrive set tst_status='3' where tst_id='"+id+"'";
            da.ExecuteQuery(cmd);
            fill_list();
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
        int did = Convert.ToInt32(Session["uid"]);

        if (Drop_cartype.SelectedIndex == 0)
        {
            if (did > 0)
            {
                cmd.CommandText = "select * from tbltestdrive b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p,tblcarname cn, tblcarver cv where cn.cn_id=b.tst_car and cv.vr_id=b.tst_ver and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status!='0' and   b.tst_status!='3'    AND dlr.dl_id='" + did + "' ";

            }
            else
            {
                cmd.CommandText = "select * from tbltestdrive b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p,tblcarname cn, tblcarver cv where cn.cn_id=b.tst_car and cv.vr_id=b.tst_ver and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status!='0'   and   b.tst_status!='3' ";
            }
        }
        if (Drop_cartype.SelectedIndex == 2)
        {
            if (did > 0)
            {
                cmd.CommandText = "select * from tbltestdrive b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p,tblcarname cn, tblcarver cv where cn.cn_id=b.tst_car and cv.vr_id=b.tst_ver and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status='3'    AND dlr.dl_id='" + did + "' ";

            }
            else
            {
                cmd.CommandText = "select * from tbltestdrive b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p,tblcarname cn, tblcarver cv where cn.cn_id=b.tst_car and cv.vr_id=b.tst_ver and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status='3'  ";

            }
        }
        if (Drop_cartype.SelectedIndex == 1)
        {
            if (did > 0)
            {
                cmd.CommandText = "select * from tbltestdrive b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p,tblcarname cn, tblcarver cv where cn.cn_id=b.tst_car and cv.vr_id=b.tst_ver and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status='0'   AND dlr.dl_id='" + did + "' ";

            }
            else
            {

                cmd.CommandText = "select * from tbltestdrive b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p,tblcarname cn, tblcarver cv where cn.cn_id=b.tst_car and cv.vr_id=b.tst_ver and b.tst_dealer=dlr.dl_id and b.tst_place=p.pl_id and b.tst_dist=d.dt_id and b.tst_state=s.st_id  and b.tst_status='0' ";
            }
        }
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    protected void ListView1_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            Button bt_comp = (Button)e.Item.FindControl("Button1");
            Button btnp = (Button)e.Item.FindControl("btn_cancel");
            Label lbl_st = (Label)e.Item.FindControl("Label1");
            Label lbl_d= (Label)e.Item.FindControl("Label3");
            if (lbl_st.Text == "0")
            {
                btnp.Enabled = false;
                lbl_st.Text = "Cancelled";
                bt_comp.Enabled = false;
            }
            if (lbl_st.Text == "1")
            {
                if (lbl_d.Text != "")
                {
                    btnp.Enabled = false;
                }
                else
                {
                    bt_comp.Enabled = false;
                    btnp.Enabled = true;
                }
                lbl_st.Text = "Booked";
            }
            if (lbl_st.Text == "2")
            {
                btnp.Enabled = false;
                bt_comp.Enabled = true;
                lbl_st.Text = "Confirmed";
            }
            if (lbl_st.Text == "3")
            {
                bt_comp.Enabled = false;
                btnp.Enabled = false;
                lbl_st.Text = "Completed";
            }
        }
    }
}