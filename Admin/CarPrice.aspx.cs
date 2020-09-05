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

public partial class Admin_CarPrice : System.Web.UI.Page
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
        Drop_carnamep.DataSource = dt;
        Drop_carnamep.DataTextField = "cn_name";
        Drop_carnamep.DataValueField = "cn_id";
        Drop_carnamep.DataBind();
        Drop_carnamep.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void fillItems()
    {
        cmd.CommandText = "select * from tblcarprice cp, tblcarname cn, tblcarver cv where cp.cn_id=cn.cn_id and cp.vr_id=cv.vr_id";
        dt = da.GetRecords(cmd);
        grid_carprice.DataSource = dt;
        grid_carprice.DataBind();
    }


    //protected void txt_carprice_TextChanged(object sender, EventArgs e)
    //{
    //    if (!string.IsNullOrEmpty(txt_carprice.Text) && string.IsNullOrEmpty(txt_carbkamt.Text) && string.IsNullOrEmpty(txt_carinsurance.Text) && string.IsNullOrEmpty(txt_cartax.Text) && string.IsNullOrEmpty(txt_carothramt.Text))
    //    {
    //        txt_cartotal.Text = (Convert.ToInt32(txt_carprice.Text) + Convert.ToInt32(txt_carbkamt.Text) + Convert.ToInt32(txt_carinsurance.Text) + Convert.ToInt32(txt_cartax.Text) + Convert.ToInt32(txt_carothramt.Text).ToString());
    //    }
    //}
    //protected void txt_carbkamt_TextChanged(object sender, EventArgs e)
    //{
    //    if (!string.IsNullOrEmpty(txt_carprice.Text) && string.IsNullOrEmpty(txt_carbkamt.Text) && string.IsNullOrEmpty(txt_carinsurance.Text) && string.IsNullOrEmpty(txt_cartax.Text) && string.IsNullOrEmpty(txt_carothramt.Text))
    //    {
    //        txt_cartotal.Text = (Convert.ToInt32(txt_carprice.Text) + Convert.ToInt32(txt_carbkamt.Text) + Convert.ToInt32(txt_carinsurance.Text) + Convert.ToInt32(txt_cartax.Text) + Convert.ToInt32(txt_carothramt.Text).ToString());
    //    }
    //}
    //protected void txt_carinsurance_TextChanged(object sender, EventArgs e)
    //{
    //    if (!string.IsNullOrEmpty(txt_carprice.Text) && string.IsNullOrEmpty(txt_carbkamt.Text) && string.IsNullOrEmpty(txt_carinsurance.Text) && string.IsNullOrEmpty(txt_cartax.Text) && string.IsNullOrEmpty(txt_carothramt.Text))
    //    {
    //        txt_cartotal.Text = (Convert.ToInt32(txt_carprice.Text) + Convert.ToInt32(txt_carbkamt.Text) + Convert.ToInt32(txt_carinsurance.Text) + Convert.ToInt32(txt_cartax.Text) + Convert.ToInt32(txt_carothramt.Text).ToString());
    //    }
    //}
    //protected void txt_cartax_TextChanged(object sender, EventArgs e)
    //{
    //    if (!string.IsNullOrEmpty(txt_carprice.Text) && string.IsNullOrEmpty(txt_carbkamt.Text) && string.IsNullOrEmpty(txt_carinsurance.Text) && string.IsNullOrEmpty(txt_cartax.Text) && string.IsNullOrEmpty(txt_carothramt.Text))
    //    {
    //        txt_cartotal.Text = (Convert.ToInt32(txt_carprice.Text) + Convert.ToInt32(txt_carbkamt.Text) + Convert.ToInt32(txt_carinsurance.Text) + Convert.ToInt32(txt_cartax.Text) + Convert.ToInt32(txt_carothramt.Text).ToString());
    //    }
    //}
    //protected void txt_othramt_TextChanged(object sender, EventArgs e)
    //{
    //    if (!string.IsNullOrEmpty(txt_carprice.Text) && string.IsNullOrEmpty(txt_carbkamt.Text) && string.IsNullOrEmpty(txt_carinsurance.Text) && string.IsNullOrEmpty(txt_cartax.Text) && string.IsNullOrEmpty(txt_carothramt.Text))
    //    {
    //        txt_cartotal.Text = (Convert.ToInt32(txt_carprice.Text) + Convert.ToInt32(txt_carbkamt.Text) + Convert.ToInt32(txt_carinsurance.Text) + Convert.ToInt32(txt_cartax.Text) + Convert.ToInt32(txt_carothramt.Text).ToString());
    //    }
    //}



    protected void Btn_save_Click(object sender, EventArgs e)
    {
        if (Btn_save.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblcarprice(cn_id,vr_id,cp_price,cp_bookingamt,cp_tax,cp_insurance,cp_otr,cp_total,cp_onroad,cp_desc)VALUES('" + Convert.ToInt32(Drop_carnamep.SelectedValue) + "','" + Convert.ToInt32(Drop_carversionp.SelectedValue) + "','" + txt_carprice.Text + "','" + txt_carbkamt.Text + "','" + txt_cartax.Text + "','" + txt_carinsurance.Text + "','" + txt_carothramt.Text + "','" + txt_cartotal.Text + "','" + txt_caronroad.Text + "','" + txt_carpricedesc.Text + "')";

            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillItems();
                txt_carprice.Text = " ";
                txt_carbkamt.Text = " ";
                txt_cartax.Text = " ";
                txt_carinsurance.Text = " ";
                txt_carothramt.Text = " ";
                txt_cartotal.Text = " ";
                txt_caronroad.Text = " ";
                txt_carpricedesc.Text = " ";

            }
        }
        else
        {
            //update
            cmd.CommandText = "update tblcarprice set cn_id='" + Convert.ToInt32(Drop_carnamep.SelectedValue) + "',vr_id='" + Convert.ToInt32(Drop_carversionp.SelectedValue) + "',cp_price='" + txt_carprice.Text + "',cp_bookingamt='" + txt_carbkamt.Text + "',cp_tax='" + txt_cartax.Text + "',cp_insurance='" + txt_carinsurance.Text + "',cp_otr='" + txt_carothramt.Text + "',cp_total='" + txt_cartotal.Text + "',cp_onroad='" + txt_caronroad.Text + "',cp_desc='" + txt_carpricedesc.Text + "' where cp_id = '" + Convert.ToInt32(Session["mid"]) + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarPrice.aspx");
            }
        }
    }
    protected void grid_carprice_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            Btn_save.Text = "Update";
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cp_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = cp_id.ToString(); ;

            cmd.CommandText = "select * from tblcarprice cp, tblcarname cn, tblcarver cv where cp.cn_id=cn.cn_id and cp.vr_id=cv.vr_id and cp_id='" + cp_id + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];
                //Drop_carversionp.SelectedIndex=Drop_carversionp.Items.IndexOf(Drop_carversionp.Items.FindByValue(dataRow["vr_id"].ToString()));
                txt_carprice.Text = dataRow["cp_price"].ToString();
                txt_carbkamt.Text = dataRow["cp_bookingamt"].ToString();
                txt_cartax.Text = dataRow["cp_tax"].ToString();
                txt_carinsurance.Text = dataRow["cp_insurance"].ToString();
                txt_carothramt.Text = dataRow["cp_otr"].ToString();
                txt_cartotal.Text = dataRow["cp_total"].ToString();
                txt_caronroad.Text = dataRow["cp_onroad"].ToString();
                txt_carpricedesc.Text = dataRow["cp_desc"].ToString();
                Drop_carnamep.SelectedIndex = Drop_carnamep.Items.IndexOf(Drop_carnamep.Items.FindByValue(dataRow["cn_id"].ToString()));
                fill_ver();

                Drop_carversionp.SelectedIndex= Drop_carversionp.Items.IndexOf(Drop_carversionp.Items.FindByValue(dataRow["vr_id"].ToString()));
                
            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cp_id = int.Parse(btnImg.CommandArgument);


            cmd.CommandText = "delete from tblcarprice where cp_id= '" + cp_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                fillItems();
            }
        }
    }
    protected void grid_carprice_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_carprice_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void grid_carprice_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grid_carprice_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void fill_ver()
    {
        cmd.CommandText = "select * from tblcarver where cn_id='" + Drop_carnamep.SelectedValue + "'";
        dt = da.GetRecords(cmd);
        Drop_carversionp.DataSource = dt;
        Drop_carversionp.DataTextField = "vr_name";
        Drop_carversionp.DataValueField = "vr_id";
        Drop_carversionp.DataBind();
        Drop_carversionp.Items.Insert(0, new ListItem("----select----", "0"));
    }

    
    protected void Drop_carnamep_SelectedIndexChanged(object sender, EventArgs e)
    {
        fill_ver();
        //cmd.CommandText = "select * from tblcarver where cn_id='" + Drop_carnamep.SelectedValue + "'";
        //dt = da.GetRecords(cmd);
        //Drop_carversionp.DataSource = dt;
        //Drop_carversionp.DataTextField = "vr_name";
        //Drop_carversionp.DataValueField = "vr_id";
        //Drop_carversionp.DataBind();
        //Drop_carversionp.Items.Insert(0, new ListItem("----select----", "0"));
    }
    protected void Drop_carversionp_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from tblcarprice where vr_id='" + Drop_carversionp.SelectedValue + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<Script>alert('Already Exist....')</script>");
            Drop_carversionp.SelectedIndex = 0;
        }
        else
        {

        }
    }
    protected void txt_cartotal_TextChanged(object sender, EventArgs e)
    {

    }
}
