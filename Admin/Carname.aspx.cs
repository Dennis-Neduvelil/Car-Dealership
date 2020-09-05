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


public partial class Carname : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da= new DataAccess();
    public int cn_id;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillItems();
        }
        
    }
    public void fillItems()
    {
        cmd.CommandText = "select * from tblcarname";
        dt = da.GetRecords(cmd);
        grid_carname.DataSource = dt;
        grid_carname.DataBind();
    }
    protected void Btn_save_Click(object sender, EventArgs e)
    {
        if (Btn_save.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblcarname(cn_name,cn_fuel,cn_dispname,cn_status)VALUES('" + txt_carname.Text + "','" + rb_fuel.SelectedValue + "','" + txt_cardispname.Text + "','"+ Drop_status.SelectedValue +"')";
            txt_carname.Text = " ";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillItems();
            }
        }
        else
        {
            //update
            cmd.CommandText = "update tblcarname set cn_name='" + txt_carname.Text + "',cn_fuel='" + rb_fuel.SelectedValue + "',cn_dispname='" + txt_cardispname.Text + "',cn_status='" + Drop_status.SelectedValue + "' where cn_id='" + Convert.ToInt32(Session["mid"]) + "' ";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("Carname.aspx");
            }
        }
    }
    protected void grid_brand_RowCommand(object sender, GridViewCommandEventArgs e)
    {
    }
   
    protected void grid_carname_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Edit")
        {
            Btn_save.Text = "Update";
            //int itemid = Convert.ToInt32(list_catname.SelectedValue);
            ImageButton btnImg = (ImageButton)e.CommandSource;
            cn_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = cn_id.ToString(); ;

            cmd.CommandText = "select * from tblcarname where cn_id='" + cn_id + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];
                txt_carname.Text = dataRow["cn_name"].ToString();
                txt_cardispname.Text = dataRow["cn_dispname"].ToString();
                Drop_status.SelectedIndex = Drop_status.Items.IndexOf(Drop_status.Items.FindByValue(dataRow["cn_status"].ToString()));

            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            cn_id = int.Parse(btnImg.CommandArgument);


            cmd.CommandText = "delete from tblcarname where cn_id= '" + cn_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                fillItems();
            }
        }
    }
    protected void grid_carname_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_carname_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grid_carname_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void txt_carname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void rb_fuel_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}