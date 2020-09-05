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

public partial class Admin_CarDealer : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillItems();
            filldropdown1();
            filldropdown2();
            filldropdown3();
        }

    }
    public void filldropdown1()
    {
        cmd.CommandText = "Select * from tblstate";
        dt = da.GetRecords(cmd);
        Drop_state.DataSource = dt;
        Drop_state.DataTextField = "st_name";
        Drop_state.DataValueField = "st_id";
        Drop_state.DataBind();
        Drop_state.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void filldropdown2()
    {
        //cmd.CommandText = "Select * from tbldistrict";
        //dt = da.GetRecords(cmd);
        //Drop_district.DataSource = dt;
        //Drop_district.DataTextField = "dt_name";
        //Drop_district.DataValueField = "dt_id";
        //Drop_district.DataBind();
        //Drop_district.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void filldropdown3()
    {
        //cmd.CommandText = "Select * from tblplace ";
        //dt = da.GetRecords(cmd);
        //Drop_location.DataSource = dt;
        //Drop_location.DataTextField = "pl_location";
        //Drop_location.DataValueField = "pl_id";
        //Drop_location.DataBind();
        //Drop_location.Items.Insert(0, new ListItem("----select----", "0"));
    }

    public void fillItems()
    {
        cmd.CommandText = "select * from tbldealer cd,tblplace cp where cd.pl_id=cp.pl_id ";
        dt = da.GetRecords(cmd);
        grid_dealer.DataSource = dt;
        grid_dealer.DataBind();
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
    protected void Drop_state_SelectedIndexChanged(object sender, EventArgs e)

    {
        int sid=Convert.ToInt32(Drop_state.SelectedValue);
        fill_district(sid);
    }
    public void fill_district(int sid)
    {
        cmd.CommandText = "select * from tbldistrict where st_id='" + sid + "'";
        dt = da.GetRecords(cmd);
        Drop_district.DataSource = dt;
        Drop_district.DataTextField = "dt_name";
        Drop_district.DataValueField = "dt_id";
        Drop_district.DataBind();
        Drop_district.Items.Insert(0, new ListItem("----select----", "0"));
    }
    protected void Drop_district_SelectedIndexChanged(object sender, EventArgs e)
    {
        int did = Convert.ToInt32(Drop_district.SelectedValue);
        fill_place(did);
    }
    public void fill_place(int did)
    {
        cmd.CommandText = "select * from tblplace where dt_id='" + did + "'";
        dt = da.GetRecords(cmd);
        Drop_location.DataSource = dt;
        Drop_location.DataTextField = "pl_location";
        Drop_location.DataValueField = "pl_id";
        Drop_location.DataBind();
        Drop_location.Items.Insert(0, new ListItem("----select----", "0"));
    }

    protected void txt_dealername_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Btn_save_Click(object sender, EventArgs e)
    {
        if (Btn_save.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tbldealer(pl_id,dl_name,dl_cntnum,dealer_email,dl_address,dl_sitelink,dl_tstdrvlink,dl_img1,dl_img2,dl_mapimg,st_id,dt_id,password,dl_status)VALUES('"+ Convert.ToInt32(Drop_location.SelectedValue) + "','" + txt_dealername.Text + "','" + txt_dealercntnum.Text + "','" + txt_dealeremail.Text + "','" + txt_dealeraddress.Text + "','" + txt_dealerurl.Text + "','" + txt_dealertdurl.Text + "','" + img_dealer1.ImageUrl + "','" + img_dealer2.ImageUrl + "','" + img_dealermap.ImageUrl + "', '"+Convert.ToInt32( Drop_state.SelectedValue)+"','"+Convert.ToInt32(Drop_district.SelectedValue)+"','"+txt_pwd.Text+"','" +Drop_status.SelectedValue+ "')";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                fillItems();
                txt_dealername.Text = " ";
                txt_dealercntnum.Text = " ";
                txt_dealeremail.Text = " ";
                txt_dealeraddress.Text = " ";
                txt_dealerurl.Text = "https://";
                txt_dealertdurl.Text = "https://";
            }
        }
        else
        {
            //update
            cmd.CommandText = "update tbldealer set pl_id='" + Convert.ToInt32(Drop_location.SelectedValue) + "',dl_name='" + txt_dealername.Text + "',dl_cntnum='" + txt_dealercntnum.Text + "',dealer_email='" + txt_dealeremail.Text + "',dl_address='" + txt_dealeraddress.Text + "',dl_sitelink='" + txt_dealerurl.Text + "',dl_tstdrvlink='" + txt_dealertdurl.Text + "',dl_img1='" + img_dealer1.ImageUrl + "',dl_img2='" + img_dealer2.ImageUrl + "',dl_mapimg='" + img_dealermap.ImageUrl + "',dl_status='" + Drop_status.SelectedValue + "' where dl_id = '" + Convert.ToInt32(Session["mid"]) + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarDealer.aspx");
            }
        }
        Response.Redirect("CarDealer.aspx");
    }

    protected void btn_upload_Click(object sender, EventArgs e)
    {
        try
        {

            if (!Upload_dealerimg.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(Upload_dealerimg.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(Upload_dealerimg.FileName);
                    string path = directory + "/" + fileName;
                    Upload_dealerimg.PostedFile.SaveAs(Server.MapPath(path));
                    img_dealer1.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_dealer1.Width = PointXY.X;
                    img_dealer1.Height = PointXY.Y;
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
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {

            if (!FileUpload1.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(FileUpload1.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(FileUpload1.FileName);
                    string path = directory + "/" + fileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath(path));
                    img_dealer2.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_dealer2.Width = PointXY.X;
                    img_dealer2.Height = PointXY.Y;
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {

            if (!FileUpload2.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(FileUpload2.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "../images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(FileUpload2.FileName);
                    string path = directory + "/" + fileName;
                    FileUpload2.PostedFile.SaveAs(Server.MapPath(path));
                    img_dealermap.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    img_dealermap.Width = PointXY.X;
                    img_dealermap.Height = PointXY.Y;
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
    protected void grid_dealer_RowCommand(object sender, GridViewCommandEventArgs e)
    {

        if (e.CommandName == "Edit")
        {
            Btn_save.Text = "Update";
            ImageButton btnImg = (ImageButton)e.CommandSource;
            int dl_id = int.Parse(btnImg.CommandArgument);
            Session["mid"] = dl_id.ToString(); ;

            cmd.CommandText = "select * from tbldealer where dl_id='" + dl_id + "'";


            dt = da.GetRecords(cmd);
            if (dt.Rows.Count > 0)
            {

                DataRow dataRow = dt.Rows[0];
                //txt_fueleng.Text = dataRow["cen_name"].ToString();
                txt_pwd.Text = dataRow["password"].ToString();
                txt_dealername.Text = dataRow["dl_name"].ToString();
                txt_dealercntnum.Text = dataRow["dl_cntnum"].ToString();
                txt_dealeremail.Text = dataRow["dealer_email"].ToString();
                txt_dealeraddress.Text = dataRow["dl_address"].ToString();
                txt_dealerurl.Text = dataRow["dl_sitelink"].ToString();
                txt_dealertdurl.Text = dataRow["dl_tstdrvlink"].ToString();
                img_dealer1.ImageUrl = dataRow["dl_img1"].ToString();
                img_dealer2.ImageUrl = dataRow["dl_img2"].ToString();
                img_dealermap.ImageUrl = dataRow["dl_mapimg"].ToString();
                Drop_status.SelectedIndex = Drop_status.Items.IndexOf(Drop_status.Items.FindByValue(dataRow["dl_status"].ToString()));
                Drop_state.SelectedIndex = Drop_state.Items.IndexOf(Drop_state.Items.FindByValue(dataRow["st_id"].ToString()));
                int stid = Convert.ToInt32(Drop_state.SelectedValue);
                fill_district(stid);
                Drop_district.SelectedIndex = Drop_district.Items.IndexOf(Drop_district.Items.FindByValue(dataRow["dt_id"].ToString()));


                int diid = Convert.ToInt32(Drop_district.SelectedValue);

                fill_place( diid);

                Drop_location.SelectedIndex = Drop_location.Items.IndexOf(Drop_location.Items.FindByValue(dataRow["pl_id"].ToString()));
                int loid = Convert.ToInt32(Drop_location.SelectedValue);
            
                
            }
        }
        else
        {

            ImageButton btnImg = (ImageButton)e.CommandSource;
            int dl_id = int.Parse(btnImg.CommandArgument);


            cmd.CommandText = "delete from tbldealer where dl_id= '" + dl_id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Delete Successfully')</script>");
                fillItems();
            }
        }
    }
    protected void grid_dealer_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void grid_dealer_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }
    protected void grid_dealer_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void grid_dealer_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Drop_location_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}