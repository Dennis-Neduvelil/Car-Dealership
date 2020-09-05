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

public partial class Admin_CarImage : System.Web.UI.Page
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
            Drop_carnameimg.DataSource = dt;
            Drop_carnameimg.DataTextField = "cn_name";
            Drop_carnameimg.DataValueField = "cn_id";
            Drop_carnameimg.DataBind();
            Drop_carnameimg.Items.Insert(0, new ListItem("----select----", "0"));
        }
       public void fillItems()
       {
           cmd.CommandText = "select * from tblcarimg ci,tblcarname cn where cn.cn_id=ci.cn_id";
           dt = da.GetRecords(cmd);
           grid_carimg.DataSource = dt;
           grid_carimg.DataBind();
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
       protected void Btn_save_Click(object sender, EventArgs e)
    {
        if (Btn_save.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblcarimg(cn_id,cimg_1,cimg_2,cimg_3,cimg_4,cimg_5,cimg_6,cimg_desc)VALUES(" + Convert.ToInt32(Drop_carnameimg.SelectedValue) + ",'" + img_car1.ImageUrl + "','" + img_car2.ImageUrl + "','" + img_car3.ImageUrl + "','" + img_car4.ImageUrl + "','" + img_car5.ImageUrl + "','" + img_car6.ImageUrl + "','" + txt_carimgdesc.Text + "')";

            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillItems();
                txt_carimgdesc.Text = " ";
                
            }
        }
        else
        {
            //update
            cmd.CommandText = "update tblcarimg set cn_id='" + Convert.ToInt32(Drop_carnameimg.SelectedValue) + "',cimg_1='" + img_car1.ImageUrl + "',cimg_2='" + img_car2.ImageUrl + "',cimg_3='" + img_car3.ImageUrl + "',cimg_4='" + img_car4.ImageUrl + "',cimg_5='" + img_car5.ImageUrl + "',cimg_6='" + img_car6.ImageUrl + "',cimg_desc='" + txt_carimgdesc.Text + "' where cimg_id = '" + Convert.ToInt32(Session["mid"]) + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarImage.aspx");
            }
        }
    }
    protected void btn_upload1_Click(object sender, EventArgs e)
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
                    img_car1.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_car1.Width = PointXY.X;
                    img_car1.Height = PointXY.Y;
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
    protected void btn_upload2_Click(object sender, EventArgs e)
    {
try
        {

            if (!Upload_carimg2.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(Upload_carimg2.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(Upload_carimg2.FileName);
                    string path = directory + "/" + fileName;
                    Upload_carimg2.PostedFile.SaveAs(Server.MapPath(path));
                    img_car2.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_car2.Width = PointXY.X;
                    img_car2.Height = PointXY.Y;
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
    protected void btn_upload3_Click(object sender, EventArgs e)
    {
        try
        {

            if (!Upload_carimg3.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(Upload_carimg3.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(Upload_carimg3.FileName);
                    string path = directory + "/" + fileName;
                    Upload_carimg3.PostedFile.SaveAs(Server.MapPath(path));
                    img_car3.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_car3.Width = PointXY.X;
                    img_car3.Height = PointXY.Y;
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
    protected void btn_upload5_Click(object sender, EventArgs e)
    {
        try
        {

            if (!Upload_carimg5.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(Upload_carimg5.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(Upload_carimg5.FileName);
                    string path = directory + "/" + fileName;
                    Upload_carimg5.PostedFile.SaveAs(Server.MapPath(path));
                    img_car5.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_car5.Width = PointXY.X;
                    img_car5.Height = PointXY.Y;
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
    protected void btn_upload6_Click(object sender, EventArgs e)
    {
        try
        {

            if (!Upload_carimg6.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(Upload_carimg6.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(Upload_carimg6.FileName);
                    string path = directory + "/" + fileName;
                    Upload_carimg6.PostedFile.SaveAs(Server.MapPath(path));
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
    protected void grid_carimg_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            Btn_save.Text = "Update";
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cimg_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = cimg_id.ToString(); ;

            cmd.CommandText = "select * from tblcarimg where cimg_id ='" + cimg_id + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];
                txt_carimgdesc.Text = dataRow["cimg_desc"].ToString();
                Drop_carnameimg.SelectedIndex = Drop_carnameimg.Items.IndexOf(Drop_carnameimg.Items.FindByValue(dataRow["cn_id"].ToString()));
                img_car1.ImageUrl = dataRow["cimg_1"].ToString();
                img_car2.ImageUrl = dataRow["cimg_2"].ToString();
                img_car3.ImageUrl = dataRow["cimg_3"].ToString();
                img_car4.ImageUrl = dataRow["cimg_4"].ToString();
                img_car5.ImageUrl = dataRow["cimg_5"].ToString();
                img_car6.ImageUrl = dataRow["cimg_6"].ToString();
            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int cimg_id = int.Parse(btnImg.CommandArgument);


            cmd.CommandText = "delete from tblcarimg where cimg_id = '" + cimg_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                fillItems();
            }
        }
    }
    protected void btn_upload4_Click(object sender, EventArgs e)
{
        try
        {

            if (!Upload_carimg4.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(Upload_carimg4.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(Upload_carimg4.FileName);
                    string path = directory + "/" + fileName;
                    Upload_carimg4.PostedFile.SaveAs(Server.MapPath(path));
                    img_car4.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_car4.Width = PointXY.X;
                    img_car4.Height = PointXY.Y;
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
    protected void Drop_carnameimg_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from tblcarimg where cn_id='" + Drop_carnameimg.SelectedValue + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<Script>alert('Already Exist....')</script>");
            Drop_carnameimg.SelectedIndex = 0;
        }
        else
        {

        }
    }
    protected void grid_carimg_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_carimg_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void grid_carimg_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grid_carimg_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}