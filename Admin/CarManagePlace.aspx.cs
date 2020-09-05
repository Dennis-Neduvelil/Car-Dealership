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

public partial class Admin_CarManagePlace : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
            if (!IsPostBack)
        {
           
            filldropdown1();
            filldropdown2();
            fillstate();
            filldistrict();
            filllocation();
        }

    }
    public void filldropdown1()
    {
        cmd.CommandText = "Select * from tblstate";
        dt = da.GetRecords(cmd);
        Drop_state1.DataSource = dt;
        Drop_state1.DataTextField = "st_name";
        Drop_state1.DataValueField = "st_id";
        Drop_state1.DataBind();
        Drop_state1.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void filldropdown2()
    {
        cmd.CommandText = "Select * from tblstate";
        dt = da.GetRecords(cmd);
        Drop_state2.DataSource = dt;
        Drop_state2.DataTextField = "st_name";
        Drop_state2.DataValueField = "st_id";
        Drop_state2.DataBind();
        Drop_state2.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void fillstate()
    {
        cmd.CommandText = "select * from tblstate";
        dt = da.GetRecords(cmd);
        grid_state.DataSource = dt;
        grid_state.DataBind();
    }
    public void filldistrict()
    {
        cmd.CommandText = "select * from tbldistrict d,tblstate s where d.st_id=s.st_id";
        dt = da.GetRecords(cmd);
        grid_district.DataSource = dt;
        grid_district.DataBind();
    }
    public void filllocation()
    {
        cmd.CommandText = "select * from tblplace p,tblstate s,tbldistrict d where p.st_id=s.st_id and p.dt_id=d.dt_id";
        dt = da.GetRecords(cmd);
        grid_location.DataSource = dt;
        grid_location.DataBind();
    }
    protected void Btn_savestate_Click(object sender, EventArgs e)
    {
        if (Btn_savestate.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblstate(st_name)VALUES('" + txt_statename.Text + "')";
           
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillstate();
                filldistrict();
                filllocation();
                txt_statename.Text = " ";
            }
        }
        else
        {
            //update
            cmd.CommandText = "update tblstate set st_name='" + txt_statename.Text + "' where st_id='" + Convert.ToInt32(Session["mid"]) + "' ";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarManagePlace.aspx");
            }
        }
        filldropdown1();
        filldropdown2();
    }
    protected void Drop_state1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Btn_savedistrict_Click(object sender, EventArgs e)
    {
        if (Btn_savedistrict.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tbldistrict(st_id,dt_name)VALUES('" + Convert.ToInt32(Drop_state1.SelectedValue) + "','" + txt_district.Text + "')";

            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillstate();
                filldistrict();
                filllocation();
                txt_statename.Text = " ";
            }
        }
        else
        {
            //update
            cmd.CommandText = "update tbldistrict set st_id='" + Convert.ToInt32(Drop_state1.SelectedValue) + "',dt_name='" + txt_district.Text + "' where dt_id='" + Convert.ToInt32(Session["mid"]) + "' ";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarManagePlace.aspx");
            }
        }
        filldropdown1();
        filldropdown2();
    }
    protected void Drop_district_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Drop_state2_SelectedIndexChanged(object sender, EventArgs e)
    {
        int sid = Convert.ToInt32(Drop_state2.SelectedValue);
        fill_district(sid);
    }
    public void fill_district(int sid)
    {
        cmd.CommandText = "select * from tbldistrict where st_id='" + sid + "'";
        dt = da.GetRecords(cmd);
        Drop_district.DataSource = dt;
        Drop_district.DataTextField = "dt_name";
        Drop_district.DataValueField = "dt_id";
        Drop_district.DataBind();
        Drop_district.Items.Insert(0, new ListItem("----select----", "0"));
    }
    protected void Btn_saveplace_Click(object sender, EventArgs e)
    {
        if (Btn_saveplace.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblplace(st_id,dt_id,pl_location)VALUES('" + Convert.ToInt32(Drop_state2.SelectedValue) + "','" + Convert.ToInt32(Drop_district.SelectedValue) + "','" + txt_place.Text + "')";

            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillstate();
                filldistrict();
                filllocation();
                txt_statename.Text = " ";
            }
        }
        else
        {
            //update
            cmd.CommandText = "update tblplace set st_id='" + Convert.ToInt32(Drop_state2.SelectedValue) + "',dt_id='" + Convert.ToInt32(Drop_district.SelectedValue) + "',pl_location='" + txt_place.Text + "' where pl_id='" + Convert.ToInt32(Session["mid"]) + "' ";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarManagePlace.aspx");
            }
        }
        filldropdown1();
        filldropdown2();
    }
    protected void grid_cardetail_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grid_state_RowCommand(object sender, GridViewCommandEventArgs e)
    {
    if (e.CommandName == "Edit")
            {
                Btn_savestate.Text = "Update";
                ImageButton btnImg = (ImageButton)e.CommandSource;
                int st_id = int.Parse(btnImg.CommandArgument);
                Session["mid"] = st_id.ToString(); ;

                cmd.CommandText = "select * from tblstate where st_id='" + st_id + "'";


                dt = da.GetRecords(cmd);
                if (dt.Rows.Count > 0)
                {

                    DataRow dataRow = dt.Rows[0];

                    txt_statename.Text = dataRow["st_name"].ToString();
                }
            }
            else
            {

                ImageButton btnImg = (ImageButton)e.CommandSource;
                int st_id = int.Parse(btnImg.CommandArgument);
                fillstate();
                filldistrict();
                filllocation();
                cmd.CommandText = "delete from tblstate where st_id= '" + st_id + "'";
                if (da.ExecuteQuery(cmd))
                {
                    Response.Write("<Script>alert('Delete Successfully')</script>");
                    Response.Redirect("CarManagePlace.aspx");
                }
          }
    }
    protected void grid_state_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_state_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void grid_state_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grid_state_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grid_district_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            Btn_savedistrict.Text = "Update";
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int dt_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = dt_id.ToString(); ;

            cmd.CommandText = "select * from tbldistrict where dt_id='" + dt_id + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];

                txt_district.Text = dataRow["dt_name"].ToString();
                Drop_state1.SelectedIndex = Drop_state1.Items.IndexOf(Drop_state1.Items.FindByValue(dataRow["st_id"].ToString()));
            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int dt_id = int.Parse(btnImg.CommandArgument);
            fillstate();
            filldistrict();
            filllocation();
            cmd.CommandText = "delete from tbldistrict where dt_id= '" + dt_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                Response.Redirect("CarManagePlace.aspx");

            }
        }
    }
    protected void grid_district_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_district_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void grid_district_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grid_district_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grid_location_RowCommand(object sender, GridViewCommandEventArgs e)
    {
         if (e.CommandName == "Edit")
        {
            Btn_saveplace.Text = "Update";
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int pl_id = int.Parse(btnImg.CommandArgument);
            int sid;
            Session["mid"] = pl_id.ToString(); ;

            cmd.CommandText = "select * from tblplace where pl_id='" + pl_id + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];

                txt_place.Text = dataRow["pl_location"].ToString();
                Drop_state2.SelectedIndex = Drop_state2.Items.IndexOf(Drop_state2.Items.FindByValue(dataRow["st_id"].ToString()));
                sid = Drop_state2.Items.IndexOf(Drop_state2.Items.FindByValue(dataRow["st_id"].ToString()));
                fill_district(sid);
                Drop_district.SelectedIndex = Drop_district.Items.IndexOf(Drop_district.Items.FindByValue(dataRow["dt_id"].ToString()));
            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int pl_id = int.Parse(btnImg.CommandArgument);
            fillstate();
            filldistrict();
            filllocation();
            cmd.CommandText = "delete from tblplace where pl_id= '" + pl_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                Response.Redirect("CarManagePlace.aspx");

            }
        }
    }
    protected void grid_location_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_location_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void grid_location_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grid_location_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}