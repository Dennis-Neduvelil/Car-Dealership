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

public partial class Admin_Carengine : System.Web.UI.Page
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
        Drop_carnameeng.DataSource = dt;
        Drop_carnameeng.DataTextField = "cn_name";
        Drop_carnameeng.DataValueField = "cn_id";
        Drop_carnameeng.DataBind();
        Drop_carnameeng.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void fillItems()
    {
        cmd.CommandText = "select * from tblcarengine ce,tblcarname cn where cn.cn_id=ce.cn_id";
        dt = da.GetRecords(cmd);
        grid_carengine.DataSource = dt;
        grid_carengine.DataBind();
    }
    protected void Btn_save_Click(object sender, EventArgs e)
    {
        if (Btn_save.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblcarengine(cn_id,cen_cc,cen_pwr,cen_milg,cen_tpspd,cen_torq,cen_accl,cen_name,cen_nogear,cen_nocylinder,cen_transmission)VALUES('" + Convert.ToInt32(Drop_carnameeng.SelectedValue) + "','" + txt_cc.Text + "','" + txt_pwr.Text + "','" + txt_milg.Text + "','" + txt_tpspd.Text + "','" + txt_trq.Text + "','" + txt_accl.Text + "','" + txt_carengname.Text + "','" + Drop_nogear.SelectedValue + "','" + Drop_nocylinder.SelectedValue + "','" + Drop_transmission.SelectedValue + "')";

            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillItems();
                txt_fueleng.Text = " ";
                txt_cc.Text = " ";
                txt_pwr .Text = " ";
                txt_milg.Text = " ";
                txt_tpspd.Text = " ";
                txt_trq.Text = " ";
                txt_accl.Text = " ";
                txt_carengname.Text = " ";
                
            }
        }
        else
        {
            //update
            cmd.CommandText = "update tblcarengine set cn_id='" + Convert.ToInt32(Drop_carnameeng.SelectedValue) + "',cen_cc='" + txt_cc.Text + "',cen_pwr='" + txt_pwr.Text + "',cen_milg='" + txt_milg.Text + "',cen_tpspd='" + txt_tpspd.Text + "',cen_torq='" + txt_trq.Text + "',cen_accl='" + txt_accl.Text + "',cen_name='" + txt_carengname.Text + "',cen_nogear='" + Drop_nogear.SelectedValue + "',cen_nocylinder='" + Drop_nocylinder.SelectedValue + "',cen_transmission='" + Drop_transmission.SelectedValue + "' where cen_id = '" + Convert.ToInt32(Session["mid"]) + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("Carengine.aspx");
            }
        }
    }

    protected void txt_launchyear_DataBinding(object sender, EventArgs e)
    {

    }
    

    
  

    protected void txt_fueleng_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_cc_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_pwr_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_milg_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_tpspd_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_trq_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_accl_TextChanged(object sender, EventArgs e)
    {

    }
    protected void grid_carengine_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            Btn_save.Text = "Update";
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cen_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = cen_id.ToString(); ;

            cmd.CommandText = "select * from tblcarengine ce ,tblcarname cn where ce.cen_id='" + cen_id + " and ce.cn_id = cn.cn_id'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];
                txt_fueleng.Text = dataRow["cn_fuel"].ToString();
                txt_cc.Text = dataRow["cen_cc"].ToString();
                txt_pwr.Text = dataRow["cen_pwr"].ToString();
                txt_milg.Text = dataRow["cen_milg"].ToString();
                txt_tpspd.Text = dataRow["cen_tpspd"].ToString();
                txt_trq.Text = dataRow["cen_torq"].ToString();
                txt_accl.Text = dataRow["cen_accl"].ToString();
                txt_carengname.Text = dataRow["cen_name"].ToString();
                Drop_carnameeng.SelectedIndex = Drop_carnameeng.Items.IndexOf(Drop_carnameeng.Items.FindByValue(dataRow["cn_id"].ToString()));
                Drop_nogear.SelectedIndex = Drop_nogear.Items.IndexOf(Drop_nogear.Items.FindByValue(dataRow["cen_nogear"].ToString()));
                Drop_nocylinder.SelectedIndex = Drop_nocylinder.Items.IndexOf(Drop_nocylinder.Items.FindByValue(dataRow["cen_nocylinder"].ToString()));
                Drop_transmission.SelectedIndex = Drop_transmission.Items.IndexOf(Drop_transmission.Items.FindByValue(dataRow["cen_transmission"].ToString()));
            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cen_id = int.Parse(btnImg.CommandArgument);


            cmd.CommandText = "delete from tblcarengine where cen_id= '" + cen_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                fillItems();
            }
        }
    }
    protected void grid_carengine_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_carengine_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void grid_carengine_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void Drop_carnameeng_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from tblcarname where cn_id='" + Convert.ToInt32(Drop_carnameeng.SelectedValue) + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];
                txt_fueleng.Text = dataRow["cn_fuel"].ToString();

            }
            cmd.CommandText = "select * from tblcarengine where cn_id='" + Drop_carnameeng.SelectedValue + "'";
            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<Script>alert('Already Exist....')</script>");
                Drop_carnameeng.SelectedIndex = 0;
            }
            else
            {

            }
    }
    protected void grid_carengine_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void txt_carengname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Drop_nogear_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Drop_transmission_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Drop_nocylinder_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}


