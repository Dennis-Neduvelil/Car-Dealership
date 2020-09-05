using System;
using System.Web.Configuration;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using MySql.Data.MySqlClient;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;

public partial class Admin_ViewBooking : System.Web.UI.Page
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
        cmd.CommandText = "select * from tblbooking b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p where b.bd_dealer=dlr.dl_id and b.bd_city=p.pl_id and b.bd_dist=d.dt_id and b.bd_state=s.st_id  and b.bd_status='1' AND dlr.dl_id='"+did+"'";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    public void fill_list()
    {

        cmd.CommandText = "select * from tblbooking b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p where b.bd_dealer=dlr.dl_id and b.bd_city=p.pl_id and b.bd_dist=d.dt_id and b.bd_state=s.st_id  and b.bd_status='1'";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "cancel")
        {
            int id = Convert.ToInt32(e.CommandArgument);
            //cmd.CommandText = "update tblbooking set bd_status='0' where bd_id='" + id + "'";
            //da.ExecuteQuery(cmd);
            //Response.Redirect("MyBooking.aspx");
            Response.Redirect("ManagePayment.aspx?id="+id);
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
                cmd.CommandText = "select * from tblbooking b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p where b.bd_dealer=dlr.dl_id and b.bd_city=p.pl_id and b.bd_dist=d.dt_id and b.bd_state=s.st_id and b.bd_status='1' and dlr.dl_id='"+did+"' ";

            }
            else
            {
                cmd.CommandText = "select * from tblbooking b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p where b.bd_dealer=dlr.dl_id and b.bd_city=p.pl_id and b.bd_dist=d.dt_id and b.bd_state=s.st_id and b.bd_status='1' ";
            }
        }
        if (Drop_cartype.SelectedIndex == 2)
        {
            if (did > 0)
            {
                cmd.CommandText = "select * from tblbooking b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p where b.bd_dealer=dlr.dl_id and b.bd_city=p.pl_id and b.bd_dist=d.dt_id and b.bd_state=s.st_id and b.bd_status='2' and dlr.dl_id='" + did + "' ";

            }
            else
            {
                cmd.CommandText = "select * from tblbooking b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p where b.bd_dealer=dlr.dl_id and b.bd_city=p.pl_id and b.bd_dist=d.dt_id and b.bd_state=s.st_id and b.bd_status='2' ";
            }
        }
        if (Drop_cartype.SelectedIndex == 1)
        {
            if (did > 0)
            {
                cmd.CommandText = "select * from tblbooking b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p where b.bd_dealer=dlr.dl_id and b.bd_city=p.pl_id and b.bd_dist=d.dt_id and b.bd_state=s.st_id and b.bd_status='0' and dlr.dl_id='" + did + "' ";

            }
            else
            {

                cmd.CommandText = "select * from tblbooking b, tblstate s,tbldistrict d,tbldealer dlr,tblplace p where b.bd_dealer=dlr.dl_id and b.bd_city=p.pl_id and b.bd_dist=d.dt_id and b.bd_state=s.st_id and b.bd_status='0' ";
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
            Button btnp = (Button)e.Item.FindControl("btn_cancel");
            Label lbl_st = (Label)e.Item.FindControl("Label1");
            if (lbl_st.Text == "0")
            {
                btnp.Enabled = false;
                lbl_st.Text = "Cancelled";
            }
            if (lbl_st.Text == "1")
            {
                btnp.Enabled = true;
                lbl_st.Text = "Booked";
            }
            if (lbl_st.Text == "2")
            {
                btnp.Enabled = false;
                lbl_st.Text = "Delivered";
            }
        }
    }
}