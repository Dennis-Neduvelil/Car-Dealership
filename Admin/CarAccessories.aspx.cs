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

public partial class Admin_CarAccessories : System.Web.UI.Page
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
        Drop_carnameacc.DataSource = dt;
        Drop_carnameacc.DataTextField = "cn_name";
        Drop_carnameacc.DataValueField = "cn_id";
        Drop_carnameacc.DataBind();
        Drop_carnameacc.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void fillItems()
    {
        cmd.CommandText = "select * from tblacc";
        dt = da.GetRecords(cmd);
        grid_acc.DataSource = dt;
        grid_acc.DataBind();
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
    protected void Drop_carnameacc_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Drop_warrenty_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void btn_uploadacc1_Click(object sender, EventArgs e)
    {
        try
        {

            if (!Upload_acc1.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(Upload_acc1.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(Upload_acc1.FileName);
                    string path = directory + "/" + fileName;
                    Upload_acc1.PostedFile.SaveAs(Server.MapPath(path));
                    img_acc1.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_acc1.Width = PointXY.X;
                    img_acc1.Height = PointXY.Y;
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
    protected void btn_uploadacc2_Click(object sender, EventArgs e)
    {
        try
        {

            if (!Upload_acc2.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(Upload_acc2.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(Upload_acc2.FileName);
                    string path = directory + "/" + fileName;
                    Upload_acc2.PostedFile.SaveAs(Server.MapPath(path));
                    img_acc2.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_acc2.Width = PointXY.X;
                    img_acc2.Height = PointXY.Y;
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
    protected void btn_uploadacc3_Click(object sender, EventArgs e)
    {
        try
        {

            if (!Upload_acc3.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(Upload_acc3.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(Upload_acc3.FileName);
                    string path = directory + "/" + fileName;
                    Upload_acc3.PostedFile.SaveAs(Server.MapPath(path));
                    img_acc3.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_acc3.Width = PointXY.X;
                    img_acc3.Height = PointXY.Y;
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
    protected void txt_accdesc_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Btn_save_Click(object sender, EventArgs e)
    {
        if (Btn_save.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblacc(cn_id,ac_name,ac_brand,ac_type,ac_price,ac_link,ac_warrenty,ac_desc,ac_img1,ac_img2,ac_img3)VALUES(" + Convert.ToInt32(Drop_carnameacc.SelectedValue) + ",'" + txt_accname.Text + "','" + txt_accbrand.Text + "','" + txt_acctype.Text + "','" + txt_accprice.Text + "','" + txt_acclink.Text + "','"+Drop_warrenty.SelectedValue+"','" + txt_accdesc.Text + "','" + img_acc1.ImageUrl + "','" + img_acc2.ImageUrl + "','" + img_acc3.ImageUrl + "')";

            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillItems();
                txt_accname.Text = " ";
                txt_accbrand.Text = " ";
                txt_acctype.Text = " ";
                txt_accprice.Text = " ";
                txt_acclink.Text = "https://";
                txt_accdesc.Text = " ";

            }
        }
        else
        {
            //update
            cmd.CommandText = "update tblacc set cn_id='" + Convert.ToInt32(Drop_carnameacc.SelectedValue) + "',ac_name='" + txt_accname.Text + "',ac_brand='" + txt_accbrand.Text + "',ac_type='" + txt_acctype.Text + "',ac_price='" + txt_accprice.Text + "',ac_link='" + txt_acclink.Text + "',ac_warrenty='" + Drop_warrenty.SelectedValue + "',ac_desc='" + txt_accdesc.Text + "',ac_img1='" + img_acc1.ImageUrl + "',ac_img2='" + img_acc2.ImageUrl + "',ac_img3='" + img_acc3.ImageUrl + "'where ac_id = '" + Convert.ToInt32(Session["mid"]) + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarAccessories.aspx");
            }
        }   
    }
    protected void grid_cardetail_SelectedIndexChanged1(object sender, System.EventArgs e)
{

}
    protected void grid_acc_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Edit")
        {
            Btn_save.Text = "Update";
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int ac_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = ac_id.ToString(); ;

            cmd.CommandText = "select * from tblacc where ac_id='" + ac_id + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];
                txt_accname.Text = dataRow["ac_name"].ToString();
                txt_accbrand.Text = dataRow["ac_brand"].ToString();
                txt_acctype.Text = dataRow["ac_type"].ToString();
                txt_accprice.Text = dataRow["ac_price"].ToString();
                txt_acclink.Text = dataRow["ac_link"].ToString();
                txt_accdesc.Text = dataRow["ac_desc"].ToString();
                Drop_carnameacc.SelectedIndex = Drop_carnameacc.Items.IndexOf(Drop_carnameacc.Items.FindByValue(dataRow["cn_id"].ToString()));
                Drop_warrenty.SelectedIndex = Drop_warrenty.Items.IndexOf(Drop_warrenty.Items.FindByValue(dataRow["ac_warrenty"].ToString()));
                img_acc1.ImageUrl = dataRow["ac_img1"].ToString();
                img_acc2.ImageUrl = dataRow["ac_img2"].ToString();
                img_acc3.ImageUrl = dataRow["ac_img3"].ToString();
            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int ac_id = int.Parse(btnImg.CommandArgument);


            cmd.CommandText = "delete from tblacc where ac_id= '" + ac_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                fillItems();
            }
        }
    }
    protected void grid_acc_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grid_acc_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grid_acc_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_acc_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
}