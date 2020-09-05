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

public partial class Admin_CarColour : System.Web.UI.Page
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
        Drop_carnamecolor.DataSource = dt;
        Drop_carnamecolor.DataTextField = "cn_name";
        Drop_carnamecolor.DataValueField = "cn_id";
        Drop_carnamecolor.DataBind();
        Drop_carnamecolor.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void fillItems()
    {
        cmd.CommandText = "select * from tblcarcolour cc,tblcarname cn where cc.cn_id=cn.cn_id";
        dt = da.GetRecords(cmd);
        grid_carcolor.DataSource = dt;
        grid_carcolor.DataBind();
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
    protected void Drop_carnamecolor_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btn_uploadicon_Click(object sender, EventArgs e)
    {
        try
        {

            if (!Upload_icon.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(Upload_icon.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(Upload_icon.FileName);
                    string path = directory + "/" + fileName;
                    Upload_icon.PostedFile.SaveAs(Server.MapPath(path));
                    img_icon.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_icon.Width = PointXY.X;
                    img_icon.Height = PointXY.Y;
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
    protected void btn_uploadimg_Click(object sender, EventArgs e)
    {
    try
        {

            if (!Upload_carimage.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(Upload_carimage.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(Upload_carimage.FileName);
                    string path = directory + "/" + fileName;
                    Upload_carimage.PostedFile.SaveAs(Server.MapPath(path));
                    img_car.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_car.Width = PointXY.X;
                    img_car.Height = PointXY.Y;
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
    protected void grid_carcolor_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_carcolor_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void grid_carcolor_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grid_carcolor_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Btn_save_Click(object sender, EventArgs e)
    {
        if (Btn_save.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblcarcolour(cn_id,cclr_name,cclr_code,cclr_icon,cclr_img,cclr_status)VALUES(" + Convert.ToInt32(Drop_carnamecolor.SelectedValue) + ",'" + txt_colorname.Text + "','" + txt_colorcode.Text + "','" + img_icon.ImageUrl + "','" + img_car.ImageUrl + "','" +Drop_status.SelectedValue+ "')";

            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillItems();
                txt_colorname.Text = " ";
                txt_colorcode.Text = " ";
            }
        }
        else
        {
            //update
            cmd.CommandText = "update tblcarcolour set cn_id='" + Convert.ToInt32(Drop_carnamecolor.SelectedValue) + "',cclr_name='" + txt_colorname.Text + "',cclr_code='" + txt_colorcode.Text + "',cclr_icon='" + img_icon.ImageUrl + "',cclr_img='" + img_car.ImageUrl + "',cclr_status='" + Drop_status.SelectedValue + "' where cclr_id = '" + Convert.ToInt32(Session["mid"]) + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarColour.aspx");
            }
        }
    }
    protected void grid_carcolor_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            Btn_save.Text = "Update";
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cclr_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = cclr_id.ToString(); ;

            cmd.CommandText = "select * from tblcarcolour where cclr_id='" + cclr_id + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];
                
                txt_colorname.Text = dataRow["cclr_name"].ToString();
                txt_colorcode.Text = dataRow["cclr_code"].ToString();
                Drop_carnamecolor.SelectedIndex = Drop_carnamecolor.Items.IndexOf(Drop_carnamecolor.Items.FindByValue(dataRow["cn_id"].ToString()));
                img_car.ImageUrl = dataRow["cclr_img"].ToString();
                img_icon.ImageUrl = dataRow["cclr_img"].ToString();
                Drop_status.SelectedIndex = Drop_status.Items.IndexOf(Drop_status.Items.FindByValue(dataRow["cclr_status"].ToString()));
                
            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cclr_id = int.Parse(btnImg.CommandArgument);


            cmd.CommandText = "delete from tblcarcolour where cclr_id= '" + cclr_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                fillItems();
            }
        }
    }
}