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

public partial class Feat_Upcoming_Cars : System.Web.UI.Page
{
    MySqlCommand mysql = new MySqlCommand();
    DataTable dataTable = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        new_upcoming();

    }
    public void new_upcoming()
    {
        MySqlCommand mysql1 = new MySqlCommand();
        mysql1.CommandText = "select distinct * from tbl_car_details d,tbl_car_prize p where p.car_d_id=d.car_d_id and d.car_status=  '" + 0 + "%' ";
        DataAccess da1 = new DataAccess();
        DataTable dt1 = da.GetRecords(mysql1);



        HtmlGenericControl div3 = new HtmlGenericControl("div");
        div3.Attributes.Add("class", "col-md-9 tips-info");

        foreach (DataRow dr in dt1.Rows)
        {
            int id = Convert.ToInt32(dr["car_d_id"].ToString());
            int c_prize = Convert.ToInt32(dr["prize"].ToString());
            int m_id = Convert.ToInt32(dr["car_model_id"].ToString());
            string c_name = dr["car_model_name"].ToString();
            DateTime c_date =Convert.ToDateTime( dr["car_date"].ToString());
            
          
            string imgpath = dr["car_image"].ToString();

            HtmlGenericControl div4 = new HtmlGenericControl("div");
            div4.Attributes.Add("class", "news-grid");

            HtmlGenericControl div5 = new HtmlGenericControl("div");
            div5.Attributes.Add("class", "news-img up");

            HtmlAnchor a1 = new HtmlAnchor();
            a1.HRef = "~/Feat/Single_Car_View.aspx?id=" + id + "&id1=" + m_id;


            HtmlImage img = new HtmlImage();
            img.Src = imgpath;
            img.Attributes.Add("class", "img-responsive");
            a1.Controls.Add(img);
            div5.Controls.Add(a1);


            HtmlGenericControl lispan1 = new HtmlGenericControl("span");
            lispan1.Attributes.Add("class", "price1");
            lispan1.InnerHtml = "NEW";
            div5.Controls.Add(lispan1);
            div4.Controls.Add(div5);

            HtmlGenericControl div6 = new HtmlGenericControl("div");
            div6.Attributes.Add("class", "news-text coming");


            HtmlGenericControl h3 = new HtmlGenericControl("h3");
            HtmlAnchor a2 = new HtmlAnchor();
            a2.HRef = "~/Feat/Single_Car_View.aspx?id=" + id + "&id1=" + m_id;
            a2.InnerText = c_name;
            h3.Controls.Add(a2);
            div6.Controls.Add(h3);

            HtmlGenericControl h5 = new HtmlGenericControl("h5");
            HtmlGenericControl span2 = new HtmlGenericControl("span");
            span2.InnerText = "Arrived on  ";
            h5.Controls.Add(span2);
            HtmlGenericControl span3 = new HtmlGenericControl("span");
            span3.InnerText = c_date.ToShortDateString();
            h5.Controls.Add(span3);
            div6.Controls.Add(h5);

            HtmlGenericControl p1 = new HtmlGenericControl("p");
            p1.Attributes.Add("class", "news");
            p1.InnerText = "Price: $"+ c_prize +  ", Ex-showroom, Ernakulam";

            div6.Controls.Add(p1);

            HtmlGenericControl h6 = new HtmlGenericControl("h6");
            h6.InnerText = "Not Rated Yet?";

            HtmlAnchor a3 = new HtmlAnchor();
            a3.HRef = "~/User/Single_Car_View.aspx?id=" + id + "&id1=" + m_id;
            a3.InnerText = "Be the first one to write a review";
            h6.Controls.Add(a3);
            div6.Controls.Add(h6);

            HtmlAnchor a4 = new HtmlAnchor();
            a4.HRef = "~/Feat/Single_Car_View.aspx?id=" + id + "&id1=" + m_id;
            a4.Attributes.Add("class", "read hvr-shutter-in-horizontal");
            a4.InnerText = "Check on-road price";
            div6.Controls.Add(a4);

            HtmlGenericControl ul1 = new HtmlGenericControl("ul");
            ul1.Attributes.Add("class", "p-t");

            HtmlGenericControl li1 = new HtmlGenericControl("li");
            HtmlAnchor a5 = new HtmlAnchor();
            a5.HRef = "~/Feat/Single_Car_View.aspx?id=" + id + "&id1=" + m_id;
            a5.InnerText = "Photos";

            li1.Controls.Add(a5);
            ul1.Controls.Add(li1);

            HtmlGenericControl li2 = new HtmlGenericControl("li");
            HtmlAnchor a6 = new HtmlAnchor();
            a6.HRef = "~/Feat/Single_Car_View.aspx?id=" + id + "&id1=" + m_id;
            a6.InnerText = "All Versions";

            li2.Controls.Add(a6);
            ul1.Controls.Add(li2);
            div6.Controls.Add(ul1);
            div4.Controls.Add(div6);

            HtmlGenericControl div7 = new HtmlGenericControl("div");
            div7.Attributes.Add("class", "clearfix");
            div4.Controls.Add(div7);
            div3.Controls.Add(div4);



        }
        div_upcoming.Controls.Add(div3);


    }
}