using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Configuration;

public partial class user_Home : System.Web.UI.Page
{
    MySqlCommand mysql = new MySqlCommand();
    DataTable dataTable = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
        fillNewArrivals();
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> getTitle(string prefixText)
    {
        List<string> nameList = new List<string>();

        string constr = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        using (MySqlConnection con = new MySqlConnection(constr))
        {
            using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM tbl_car_details WHERE car_model_name LIKE '" + prefixText + "%'"))
            {
                using (MySqlDataAdapter sda = new MySqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dataTable = new DataTable())
                    {
                        sda.Fill(dataTable);

                        if (dataTable.Rows.Count > 0 && dataTable != null)
                        {
                            for (int i = 0; i < dataTable.Rows.Count; i++)
                            {
                                nameList.Add(dataTable.Rows[i]["car_model_name"].ToString());
                            }
                        }
                    }
                }
            }
        }
        return nameList;
    }
    public void fillNewArrivals()
    {



        mysql.CommandText = "select * from tblcardetails";

        DataTable dt = da.GetRecords(mysql);

        HtmlGenericControl div01 = new HtmlGenericControl("div");
        div01.Attributes.Add("class", "arrivals");

        HtmlGenericControl div02 = new HtmlGenericControl("div");
        div02.Attributes.Add("class", "container");

        HtmlGenericControl h3 = new HtmlGenericControl("h3");
        h3.InnerText = "New Arrivals";
        div02.Controls.Add(h3);

        HtmlGenericControl div1 = new HtmlGenericControl("div");
        div1.Attributes.Add("class", "arrival-grids");


        HtmlGenericControl ul = new HtmlGenericControl("ul");
        ul.Attributes.Add("id", "flexiselDemo1");
        foreach (DataRow dr in dt.Rows)
        {
            //int id = Convert.ToInt32(dr["Iid"].ToString());
            //string name = dr["Iname"].ToString();
            // int price = Convert.ToInt32(dr["IMRP"].ToString());
            string imgpath = dr["car_image"].ToString();




            HtmlGenericControl li = new HtmlGenericControl("li");


            HtmlAnchor a = new HtmlAnchor();

            Session["userid"] = Convert.ToInt32(Session["userid"]);
            a.HRef = "singleproduct.aspx";


            li.Controls.Add(a);


            HtmlGenericControl div3 = new HtmlGenericControl("div");
            div3.Attributes.Add("class", "arrival-info");

            HtmlImage img = new HtmlImage();
            img.Src = imgpath;


            HtmlGenericControl h4 = new HtmlGenericControl("h4");
            h4.Attributes.Add("style", "font-size:15px");
            h4.InnerText = dr["cd_name"].ToString();
            div3.Controls.Add(h4);

            HtmlGenericControl p = new HtmlGenericControl("p");
            p.InnerText = "";



            div3.Controls.Add(p);
            li.Controls.Add(div3);



            HtmlGenericControl div4 = new HtmlGenericControl("div");
            div4.Attributes.Add("class", "view");


            HtmlAnchor a1 = new HtmlAnchor();
            Session["userid"] = Convert.ToInt32(Session["userid"]);
            a1.HRef = "singleproduct.aspx";
            a1.InnerText = "Quick View";

            HtmlGenericControl span = new HtmlGenericControl("span");
            span.Attributes.Add("class", "glyphicon glyphicon-eye-open");
            span.Attributes.Add("aria-hidden", "true");

            a1.Controls.Add(span);


            div4.Controls.Add(a1);


            HtmlGenericControl div5 = new HtmlGenericControl("div");
            div5.Attributes.Add("class", "shrt");

            HtmlAnchor a2 = new HtmlAnchor();
            a2.HRef = "product.html";
            a2.InnerText = "shortlist";


            HtmlGenericControl span1 = new HtmlGenericControl("span");
            span1.Attributes.Add("class", "glyphicon glyphicon-star");
            span1.Attributes.Add("aria-hidden", "true");

            a2.Controls.Add(span1);
            div5.Controls.Add(a2);

            a.Controls.Add(img);

            li.Controls.Add(a);



            ul.Controls.Add(li);
        }
        div1.Controls.Add(ul);


        div02.Controls.Add(div1);
        div01.Controls.Add(div02);
        divArrival.Controls.Add(div01);
    }
    protected void txt_search_TextChanged(object sender, EventArgs e)
    {
        string srch = txt_search.Text;
        Session["userid"] = Convert.ToInt32(Session["userid"]);
        Response.Redirect("~/user/Search.aspx?srch_qry=" + srch);
    }


    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txt_search_TextChanged1(object sender, EventArgs e)
    {
        string srch = txt_search.Text;
        Session["userid"] = Convert.ToInt32(Session["userid"]);
        Response.Redirect("~/user/Search.aspx?srch_qry=" + srch);
    }
}