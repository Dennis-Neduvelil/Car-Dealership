using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using MySql.Data.MySqlClient;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;


public partial class Default2 : System.Web.UI.Page
{
    public string p;
    MySqlCommand mysql = new MySqlCommand();
    DataTable dataTable = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        filldatalist();
       string ab = Request.Form["amount"];
       string n = String.Format("{0}", Request.Form["amount"]);
       string n1 = String.Format("{0}", Request.QueryString["amount"]);

       string abb = Request.Form["amt1"];
       string nb = String.Format("{0}", Request.Form["amt1"]);
       string n1b = String.Format("{0}", Request.QueryString["amt1"]);


       if (!IsPostBack)
       {
       }
      // TextBox4.
       //string myStringFromTheInput = amount.Value;
      // TextBox4.Text = ab;
       // product_view();
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
    public void filldatalist()
    {
        MySqlCommand command = new MySqlCommand();
        command.CommandText = "SELECT * FROM tbl_image;";
        DataList1.DataSource = da.GetRecords(command);
        DataList1.DataBind();
    }
    public void product_view()
    {
        try
        {
            int a=20;
            MySqlCommand mysql1 = new MySqlCommand();
            mysql1.CommandText = "select * from tbl_image";
            mysql1.Parameters.AddWithValue("?did", a );
            DataAccess da1 = new DataAccess();
            DataTable dt1 = da.GetRecords(mysql1);
           
            foreach (DataRow dr in dt1.Rows)
            {
                //int d_id = Convert.ToInt32(dr["car_d_id"].ToString());
                //int m_id = Convert.ToInt32(dr["car_model_id"].ToString());
               // string name = dr["car_model_name"].ToString();
                //int price = Convert.ToInt32(dr["prize"].ToString());
                string src1 = dr["path"].ToString();

                
                HtmlAnchor a1 = new HtmlAnchor();
                a1.HRef = src1;

                HtmlImage img = new HtmlImage();
                
                img.Src = src1 ;
             
                a1.Controls.Add(img);

                divProduct.Controls.Add(a1);
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void bt_upload1_Click1(object sender, EventArgs e)
    {
        try
        {
            if (!fup_item1.HasFile)
            {
                //lbl_msg.Text = "plase upload a file";
                return;
            }
            string fext = System.IO.Path.GetExtension(fup_item1.FileName).ToUpper();
            if (fext == ".BMP" || fext == ".JPG" || fext == ".PNG" || fext == ".JPEG")
            {
                string directory = "~/images";
                //lbn_Delete.Visible = true;
                if (Directory.Exists(Server.MapPath(directory)))
                {
                    string fileName = System.IO.Path.GetFileName(fup_item1.FileName);
                    string path = directory + "/" + fileName;
                    fup_item1.PostedFile.SaveAs(Server.MapPath(path));
                    image1.ImageUrl = path;
                    System.Drawing.Point PointXY = new System.Drawing.Point();
                    PointXY = GetThumbnailSize(Server.MapPath(path), 75);
                    image1.Width = PointXY.X;
                    image1.Height = PointXY.Y;
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        bool status;
        p = image1.ImageUrl;
        int p1 = 11;
        mysql.CommandText = "insert into tbl_image(path,id)" + "values(?cid,?iid)";
        mysql.Parameters.AddWithValue("?cid", p);
        mysql.Parameters.AddWithValue("?iid", p1);
        status = da.ExecuteQuery(mysql);
        filldatalist();
    }
    protected void txt_date1_TextChanged(object sender, EventArgs e)
    {
      // int d =Convert.ToInt32( Convert.ToDateTime(txt_date1.Text));
    }
}