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

public partial class Admin_CarEmployee : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillItems();
        }
    }

    public void fillItems()
    {
        cmd.CommandText = "select * from tblemp";
        dt = da.GetRecords(cmd);
        grid_emp.DataSource = dt;
        grid_emp.DataBind();
    }

    protected void Btn_save_Click(object sender, EventArgs e)
    {
        if (Btn_save.Text == "Save")
        {
            string d = Convert.ToDateTime(txt_join.Text).ToString("yyyy-MM-dd");
            string db = Convert.ToDateTime(txt_dob.Text).ToString("yyyy-MM-dd");
            cmd.CommandText = "INSERT INTO tblemp(e_usrnme,e_pswrd,e_name,e_address,e_cntnum,e_pincode,e_landmark,e_email,e_other,e_join,e_dob,e_gender)VALUES('" + txt_usrnme.Text + "','" + txt_psswrd.Text + "','" + txt_empname.Text + "','" + txt_empaddress.Text + "','" + txt_empnum.Text + "','" + txt_emppin.Text + "','" + txt_landmark.Text + "','" + txt_empmail.Text + "','" + txt_othr.Text + "','" + d + "','" + db + "','" + Drop_gender.SelectedValue + "')";

            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillItems();
                txt_usrnme.Text = " ";
                txt_psswrd.Text = " ";
                txt_empname.Text = " ";
                txt_empaddress.Text = " ";
                txt_empnum.Text = " ";
                txt_emppin.Text = " ";
                txt_landmark.Text = " ";
                txt_empmail.Text = " ";
                txt_othr.Text = " ";
                txt_dob.Text = " ";
                txt_join.Text = " ";

            }
        }
        else
        {
            //update
            string d = Convert.ToDateTime(txt_join.Text).ToString("yyyy-MM-dd");
            string db = Convert.ToDateTime(txt_dob.Text).ToString("yyyy-MM-dd");
            cmd.CommandText = "update tblemp set e_usrnme='" + txt_usrnme.Text + "',e_pswrd='" + txt_psswrd.Text + "',e_name='" + txt_empname.Text + "',e_address='" + txt_empaddress.Text + "',e_cntnum='" + txt_empnum.Text + "',e_pincode='" + txt_emppin.Text + "',e_landmark='" + txt_landmark.Text + "',e_email='" + txt_empmail.Text + "',e_other='" + txt_othr.Text + "',e_join='" + d + "',e_dob='" + db + "',e_gender='" + Drop_gender.SelectedValue + "' where e_id = '" + Convert.ToInt32(Session["mid"]) + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarEmployee.aspx");
            }
        }
    }


    protected void grid_emp_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            Btn_save.Text = "Update";
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int e_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = e_id.ToString(); ;

            cmd.CommandText = "select * from tblemp where e_id='" + e_id + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];

                txt_usrnme.Text = dataRow["e_usrnme"].ToString();
                txt_psswrd.Text = dataRow["e_pswrd"].ToString();
                txt_empname.Text = dataRow["e_name"].ToString();
                txt_empaddress.Text = dataRow["e_address"].ToString();
                txt_empnum.Text = dataRow["e_cntnum"].ToString();
                txt_emppin.Text = dataRow["e_pincode"].ToString();
                txt_landmark.Text = dataRow["e_landmark"].ToString();
                txt_empmail.Text = dataRow["e_email"].ToString();
                txt_othr.Text = dataRow["e_other"].ToString();
                txt_join.Text = dataRow["e_join"].ToString();

                DateTime doj = Convert.ToDateTime(dataRow["e_join"].ToString());
                txt_join.Text = doj.Date.ToString("yyyy-MM-dd");

                DateTime dob = Convert.ToDateTime(dataRow["e_dob"].ToString());
                txt_dob.Text = dob.Date.ToString("yyyy-MM-dd");

                Drop_gender.SelectedIndex = Drop_gender.Items.IndexOf(Drop_gender.Items.FindByValue(dataRow["e_gender"].ToString()));
            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int e_id = int.Parse(btnImg.CommandArgument);


            cmd.CommandText = "delete from tblemp where e_id= '" + e_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                fillItems();
            }
        }
    }

    protected void grid_emp_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_emp_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void grid_emp_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grid_emp_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grid_emp_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {

    }
    protected void txt_empnum_TextChanged(object sender, EventArgs e)
    {

    }
}