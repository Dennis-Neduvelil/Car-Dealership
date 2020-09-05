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

public partial class Admin_CarMeasurments : System.Web.UI.Page
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
        Drop_carmsg.DataSource = dt;
        Drop_carmsg.DataTextField = "cn_name";
        Drop_carmsg.DataValueField = "cn_id";
        Drop_carmsg.DataBind();
        Drop_carmsg.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void fillItems()
    {
        cmd.CommandText = "select * from tblmeasurments cm,tblcarname cn where cn.cn_id=cm.cn_id";
        dt = da.GetRecords(cmd);
        grid_carmeasurments.DataSource = dt;
        grid_carmeasurments.DataBind();
    }
    protected void Btn_save_Click(object sender, EventArgs e)
    {
        if (Btn_save.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblmeasurments(cn_id,cm_crlength,cm_crwidth,cm_crheight,cm_ftsize,cm_rtsize,cm_ground,cm_other)VALUES('" + Convert.ToInt32(Drop_carmsg.SelectedValue) + "','" + txt_carlength.Text + "','" + txt_carwidth.Text + "','" + txt_carheight.Text + "','" + txt_ftire.Text + "','" + txt_rtire.Text + "','" + txt_gnd.Text + "','" + txt_others.Text + "')";

            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillItems();
                txt_carlength.Text = " ";
                txt_carwidth.Text = " ";
                txt_carheight.Text = " ";
                txt_ftire.Text = " ";
                txt_rtire.Text = " ";
                txt_gnd.Text = " ";
                txt_others.Text = " ";
            }
        }
        else
        {
            //update
            cmd.CommandText = "update tblmeasurments set cn_id='" + Convert.ToInt32(Drop_carmsg.SelectedValue) + "',cm_crlength='" + txt_carlength.Text + "',cm_crwidth='" + txt_carwidth.Text + "',cm_crheight='" + txt_carheight.Text + "',cm_ftsize='" + txt_ftire.Text + "',cm_rtsize='" + txt_rtire.Text + "',cm_ground='" + txt_gnd.Text + "',cm_other='" + txt_others.Text + "' where cm_id = '" + Convert.ToInt32(Session["mid"]) + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarMeasurments.aspx");
            }
        }
    }
    protected void grid_carmeasurments_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            Btn_save.Text = "Update";
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cm_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = cm_id.ToString(); ;

            cmd.CommandText = "select * from tblmeasurments ce ,tblcarname cn where ce.cm_id='" + cm_id + " and ce.cn_id = cn.cn_id'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];
                txt_carlength.Text = dataRow["cm_crlength"].ToString();
                txt_carheight.Text = dataRow["cm_crheight"].ToString();
                txt_carwidth.Text = dataRow["cm_crwidth"].ToString();
                txt_ftire.Text = dataRow["cm_ftsize"].ToString();
                txt_rtire.Text = dataRow["cm_rtsize"].ToString();
                txt_gnd.Text = dataRow["cm_ground"].ToString();
                txt_others.Text = dataRow["cm_other"].ToString();
                Drop_carmsg.SelectedIndex = Drop_carmsg.Items.IndexOf(Drop_carmsg.Items.FindByValue(dataRow["cn_id"].ToString()));
            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cm_id = int.Parse(btnImg.CommandArgument);


            cmd.CommandText = "delete from tblmeasurments where cm_id= '" + cm_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                fillItems();
            }
        }
    }
    protected void grid_carmeasurments_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grid_carmeasurments_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void grid_carmeasurments_RowCreated(object sender, GridViewRowEventArgs e)
    {

    }
    protected void grid_carmeasurments_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_carmeasurments_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void Drop_carmsg_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from tblmeasurments where cn_id='" + Drop_carmsg.SelectedValue + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<Script>alert('Already Exist....')</script>");
            Drop_carmsg.SelectedIndex = 0;
        }
        else
        {

        }
    }
}