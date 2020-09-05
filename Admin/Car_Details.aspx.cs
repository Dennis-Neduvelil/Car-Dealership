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

public partial class Admin_Car_Details : System.Web.UI.Page
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
        Drop_carname.DataSource = dt;
        Drop_carname.DataTextField = "cn_name";
        Drop_carname.DataValueField = "cn_id";
        Drop_carname.DataBind();
        Drop_carname.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void fillItems()
    {
        cmd.CommandText = "select * from tblcardetails cd,tblcarname cn where cn.cn_id=cd.cn_id";
        dt = da.GetRecords(cmd);
        grid_cardetail.DataSource = dt;
        grid_cardetail.DataBind();
    }
    protected void Btn_save_Click(object sender, EventArgs e)
    {
        if (Btn_save.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblcardetails(cd_name,cd_year,cn_id,cd_type,cd_warrenty,car_image,cd_seat,cd_desc)VALUES('" + txt_cardetailname.Text + "','" + Convert.ToInt32(txt_launchyear.Text) + "','" + Convert.ToInt32(Drop_carname.SelectedValue) + "','" + Drop_cartype.SelectedValue + "','" + Drop_carwarrenty.SelectedValue + "','" + img_car6.ImageUrl + "','" + Drop_seat.SelectedValue + "','" + txt_cardesc.Text + "')";
           
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillItems();
                txt_fueleng.Text = " ";
                txt_cardetailname.Text = " ";
                txt_launchyear.Text = " ";
                txt_cardesc.Text = " ";
                
            }
        }
        else
        {
            //update
            cmd.CommandText = "update tblcardetails set cd_name='" + txt_cardetailname.Text + "',cd_year='" + Convert.ToInt32(txt_launchyear.Text) + "',cn_id='" + Convert.ToInt32(Drop_carname.SelectedValue) + "',cd_type ='" + Drop_cartype.SelectedValue + "',cd_warrenty='" + Drop_carwarrenty.SelectedValue + "' , car_image='" + img_car6.ImageUrl + "',cd_seat='" + Drop_seat.SelectedValue + "',cd_desc='" + txt_cardesc.Text + "' where cd_id='" + Convert.ToInt32(Session["mid"]) + "' ";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("Car_Details.aspx");
            }
        }
    }
   
protected void txt_launchyear_DataBinding(object sender, EventArgs e)
{

}
protected void grid_cardetail_RowEditing(object sender, GridViewEditEventArgs e)
{

}
protected void grid_cardetail_RowCommand(object sender, GridViewCommandEventArgs e)
{

        if (e.CommandName == "Edit")
        {
            Btn_save.Text = "Update";
            //int itemid = Convert.ToInt32(list_catname.SelectedValue);
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cd_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = cd_id.ToString(); ;

            cmd.CommandText = "select * from tblcardetails where cd_id='" + cd_id + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];
                txt_cardesc.Text = dataRow["cd_desc"].ToString();
                txt_cardetailname.Text = dataRow["cd_name"].ToString();
                txt_launchyear.Text = dataRow["cd_year"].ToString();
                Drop_carname.SelectedIndex = Drop_carname.Items.IndexOf(Drop_carname.Items.FindByValue(dataRow["cn_id"].ToString()));
                Drop_cartype.SelectedIndex = Drop_cartype.Items.IndexOf(Drop_cartype.Items.FindByValue(dataRow["cd_type"].ToString()));
                Drop_seat.SelectedIndex = Drop_seat.Items.IndexOf(Drop_seat.Items.FindByValue(dataRow["cd_seat"].ToString()));
                Drop_carwarrenty.SelectedIndex = Drop_carwarrenty.Items.IndexOf(Drop_carwarrenty.Items.FindByValue(dataRow["cd_warrenty"].ToString()));
                img_car6.ImageUrl = dataRow["car_image"].ToString();
            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cd_id = int.Parse(btnImg.CommandArgument);


            cmd.CommandText = "delete from tblcardetails where cd_id= '" + cd_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                fillItems();
            }
        }
}
protected void grid_cardetail_RowCreated(object sender, GridViewRowEventArgs e)
{

}
protected void grid_cardetail_RowDeleting(object sender, GridViewDeleteEventArgs e)
{

}
protected void grid_cardetail_RowDataBound(object sender, GridViewRowEventArgs e)
{

}
protected void grid_cardetail_RowDeleted(object sender, GridViewDeletedEventArgs e)
{

}
protected void grid_cardetail_RowUpdated(object sender, GridViewUpdatedEventArgs e)
{

}
protected void grid_cardetail_RowUpdating(object sender, GridViewUpdateEventArgs e)
{

}
protected void grid_cardetail_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
{

}
protected void grid_cardetail_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
{

}
protected void grid_cardetail_SelectedIndexChanged(object sender, EventArgs e)
{

}
protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
{

}
protected void txt_launchyear_TextChanged(object sender, EventArgs e)
{

}

protected void txt_cardetailname_TextChanged(object sender, EventArgs e)
{

}
protected void Drop_cartype_SelectedIndexChanged(object sender, EventArgs e)
{

}
protected void Drop_carwarrenty_SelectedIndexChanged(object sender, EventArgs e)
{

}
protected void btn_upload6_Click(object sender, EventArgs e)
{
    try
    {

        if (!Upload_carimg1.HasFile)
        {
            //lbl_msg.Text = "plase upload a file";
            return;
        }
        string fext = System.IO.Path.GetExtension(Upload_carimg1.FileName).ToUpper();
        if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
        {
            string directory = "../images";
            //lbn_Delete.Visible = true;
            if (Directory.Exists(Server.MapPath(directory)))
            {
                string fileName = System.IO.Path.GetFileName(Upload_carimg1.FileName);
                string path = directory + "/" + fileName;
                Upload_carimg1.PostedFile.SaveAs(Server.MapPath(path));
                img_car6.ImageUrl = path;
                System.Drawing.Point PointXY = new System.Drawing.Point();
                PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                img_car6.Width = PointXY.X;
                img_car6.Height = PointXY.Y;
            }
        }
        else
        {
            //lbl_msg.Text = "Plase upload an image file";
            return;
        }
    }
    catch (Exception ex)
    {
        throw ex;
    }
}
public System.Drawing.Point GetThumbnailSize(string strImageFilePath, int iDefaultValue)
{
    System.Drawing.Point PointXY = new System.Drawing.Point();
    if (!File.Exists(strImageFilePath))
    {
        return PointXY;
    }

    try
    {
        if (iDefaultValue > 0)
        {
            if (strImageFilePath != "" && File.Exists(strImageFilePath))
            {
                System.Drawing.Image image = System.Drawing.Image.FromFile(strImageFilePath);

                int iOriginalHeight = image.Height;
                int iOriginalWidth = image.Width;
                if (iOriginalHeight <= iDefaultValue && iOriginalWidth <= iDefaultValue)
                {
                    PointXY.X = iOriginalHeight;
                    PointXY.Y = iOriginalWidth;
                }
                else
                {
                    if (iOriginalHeight <= iOriginalWidth)
                    {
                        PointXY.X = iDefaultValue;
                        PointXY.Y = (iOriginalHeight * PointXY.X) / iOriginalWidth;
                    }
                    else
                    {
                        PointXY.Y = iDefaultValue;
                        PointXY.X = (iOriginalWidth * PointXY.Y) / iOriginalHeight;
                    }
                }
            }
            else
            {
                PointXY.X = 0;
                PointXY.Y = 0;
            }
        }
    }
    catch (Exception ex)
    {
        throw ex;
    }
    return PointXY;
}


protected void Drop_carname_SelectedIndexChanged(object sender, EventArgs e)
{
    cmd.CommandText = "select * from tblcarname where cn_id='" + Convert.ToInt32(Drop_carname.SelectedValue) + "'";


    dt = da.GetRecords(cmd);
    if (dt.Rows.Count > 0)
    {

        DataRow dataRow = dt.Rows[0];
        txt_fueleng.Text = dataRow["cn_fuel"].ToString();

    }

    cmd.CommandText = "select * from tblcardetails where cn_id='" + Drop_carname.SelectedValue + "'";
    dt = da.GetRecords(cmd);
    if (dt.Rows.Count > 0)
    {
        Response.Write("<Script>alert('Already Exist....')</script>");
        Drop_carname.SelectedIndex = 0;
    }
    else
    {

    }
}
}


