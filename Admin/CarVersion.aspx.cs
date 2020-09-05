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

public partial class Admin_CarVersion : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillItems();
            filldropdown();
        }

    }
    public void filldropdown()
    {
        cmd.CommandText = "Select * from tblcarname";
        dt = da.GetRecords(cmd);
        Drop_carver.DataSource = dt;
        Drop_carver.DataTextField = "cn_name";
        Drop_carver.DataValueField = "cn_id";
        Drop_carver.DataBind();
        Drop_carver.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void fillItems()
    {
        cmd.CommandText = "select * from tblcarver cv,tblcarname cn where cn.cn_id=cv.cn_id";
        dt = da.GetRecords(cmd);
        grid_carver.DataSource = dt;
        grid_carver.DataBind();
    }
    
    protected void Drop_carver_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Btn_save_Click(object sender, EventArgs e)
    {
         if (Btn_save.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblcarver(vr_name,vr_code,cn_id,vr_status)VALUES('" + txt_carvername.Text + "','" + txt_carvercode.Text+ "','" + Convert.ToInt32(Drop_carver.SelectedValue) + "','" + Drop_status.SelectedValue + "')";
           
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillItems();
                txt_carvername.Text = " ";
                txt_carvercode.Text = " ";
            }
        }
        else
        {
            //update
            cmd.CommandText = "update tblcarver set vr_name='" + txt_carvername.Text + "',vr_code='" + txt_carvercode.Text + "',cn_id='" + Convert.ToInt32(Drop_carver.SelectedValue) + "',vr_status='" + Drop_status.SelectedValue + "' where vr_id='" + Convert.ToInt32(Session["mid"]) + "' ";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarVersion.aspx");
            }
        }
    }

   
      protected void grid_carver_RowCommand(object sender, GridViewCommandEventArgs e)
      {

        if (e.CommandName == "Edit")
        {
            Btn_save.Text = "Update";
            //int itemid = Convert.ToInt32(list_catname.SelectedValue);
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int vr_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = vr_id.ToString(); ;

            cmd.CommandText = "select * from tblcarver where vr_id='" + vr_id + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];
                txt_carvername.Text = dataRow["vr_name"].ToString();
                txt_carvercode.Text= dataRow["vr_code"].ToString();
                Drop_carver.SelectedIndex = Drop_carver.Items.IndexOf(Drop_carver.Items.FindByValue(dataRow["cn_id"].ToString()));
                Drop_status.SelectedIndex = Drop_status.Items.IndexOf(Drop_status.Items.FindByValue(dataRow["vr_status"].ToString()));

            }
        }
        if (e.CommandName == "Delete")
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int vr_id = int.Parse(btnImg.CommandArgument);


            cmd.CommandText = "delete from tblcarver where vr_id= '" + vr_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                fillItems();
            }
        }
        if (e.CommandName == "edit_version")
        {
            Btn_save.Text = "Update";
            //int itemid = Convert.ToInt32(list_catname.SelectedValue);
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int vr_id = int.Parse(btnImg.CommandArgument);
            Response.Redirect("CarManageVersion.aspx?id=" + vr_id);
        }

      }
      protected void grid_carver_RowDeleting(object sender, GridViewDeleteEventArgs e)
      {

      }
      protected void grid_carver_RowEditing(object sender, GridViewEditEventArgs e)
      {

      }
      protected void grid_carver_RowUpdating(object sender, GridViewUpdateEventArgs e)
      {

      }
      protected void txt_carvercode_TextChanged(object sender, EventArgs e)
      {

      }
}