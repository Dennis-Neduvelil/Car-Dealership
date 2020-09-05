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

public partial class _Default : System.Web.UI.Page
{
    MySqlCommand mysql = new MySqlCommand();
    DataTable dataTable = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
       // new_view();
       // ProductView();
       // new_view2();
     //   new_loan();
      new_upcoming();
       // new_single_view();
    }



    public void new_single_view()
    {

        MySqlCommand mysql1 = new MySqlCommand();
        mysql1.CommandText = "select distinct m.car_master_id,v.car_version_id,v.car_version_name ,m.car_thumb_image,m.car_model_name,p.prize from tbl_car_master m,tbl_car_prize p,tbl_car_version v where p.car_version_id=p.car_version_id and v.car_master_id=m.car_master_id and p.prize in(select min(prize) as car_p from tbl_car_prize p where p.car_version_id=v.car_version_id)";
        DataAccess da1 = new DataAccess();
        DataTable dt1 = da.GetRecords(mysql1);

        HtmlGenericControl div2 = new HtmlGenericControl("div");
        div2.Attributes.Add("class", "on-road-price w3l");

        HtmlGenericControl div3 = new HtmlGenericControl("div");
        div3.Attributes.Add("class", "container");

        HtmlGenericControl div4 = new HtmlGenericControl("div");
        div4.Attributes.Add("class", "price-top");



        foreach (DataRow dr in dt1.Rows)
        {
            int d_id = Convert.ToInt32(dr["car_master_id"].ToString());
            int m_id = Convert.ToInt32(dr["car_master_id"].ToString());
            string name = dr["car_model_name"].ToString();

            string imgpath = dr["car_thumb_image"].ToString();


            HtmlGenericControl div5 = new HtmlGenericControl("div");
            div5.Attributes.Add("class", "price-info");

            HtmlGenericControl div6 = new HtmlGenericControl("div");
            div6.Attributes.Add("class", "col-md-5 price-img");

            HtmlGenericControl div7 = new HtmlGenericControl("div");
            div7.Attributes.Add("class", "view second-effect");

            HtmlAnchor a1 = new HtmlAnchor();
            a1.HRef = "singleproduct.aspx?id=" + d_id + m_id;
            a1.Attributes.Add("tittle","Car Crachy");

            HtmlImage img = new HtmlImage();
            img.Src = imgpath;
            img.Attributes.Add("class", "img-responsive");
            a1.Controls.Add(img);

            HtmlGenericControl div8 = new HtmlGenericControl("div");
            div8.Attributes.Add("class", "mask");


            HtmlGenericControl p1 = new HtmlGenericControl("p");
            p1.InnerText = "Cracy";
            HtmlGenericControl lispan1 = new HtmlGenericControl("span");
            lispan1.InnerText = "Cars";
            p1.Controls.Add(lispan1);
            div8.Controls.Add(p1);
            a1.Controls.Add(div8);
            div7.Controls.Add(a1);
            div6.Controls.Add(div7);

            HtmlGenericControl h4 = new HtmlGenericControl("h4");
            h4.InnerText = "Toyota";
            div6.Controls.Add(h4);
            div5.Controls.Add(div6);
            //


           



            //

            HtmlGenericControl div9 = new HtmlGenericControl("div");
            div9.Attributes.Add("class", "col-md-4 price-text");

            HtmlGenericControl div10 = new HtmlGenericControl("div");
            div10.Attributes.Add("class", "price-text-sec");


            HtmlGenericControl div11 = new HtmlGenericControl("div");
            div11.Attributes.Add("class", "clearfix");
            div10.Controls.Add(div11);

            HtmlGenericControl div12 = new HtmlGenericControl("div");
            div12.Attributes.Add("class", "inner-price");

            HtmlGenericControl h51 = new HtmlGenericControl("h5");
            h51.InnerText = "Ex Sh Pr";
            div12.Controls.Add(h51);


            HtmlGenericControl p11 = new HtmlGenericControl("p");
            p11.InnerText = "8,66,555";
            div12.Controls.Add(p11);

            HtmlGenericControl div13 = new HtmlGenericControl("div");
            div13.Attributes.Add("class", "clearfix");
            div12.Controls.Add(div13);
            div10.Controls.Add(div12);










            HtmlGenericControl div14 = new HtmlGenericControl("div");
            div14.Attributes.Add("class", "inner-price");

            HtmlGenericControl h52 = new HtmlGenericControl("h5");
            h52.InnerText = "RTO";
            div14.Controls.Add(h52);


            HtmlGenericControl p12 = new HtmlGenericControl("p");
            p12.InnerText = "8,555";
            div14.Controls.Add(p12);

            HtmlGenericControl div15 = new HtmlGenericControl("div");
            div15.Attributes.Add("class", "clearfix");
            div14.Controls.Add(div15);
            div10.Controls.Add(div14);











            HtmlGenericControl div16 = new HtmlGenericControl("div");
            div16.Attributes.Add("class", "inner-price");

            HtmlGenericControl h53 = new HtmlGenericControl("h5");
            h53.InnerText = "Insurance";
            div16.Controls.Add(h53);


            HtmlGenericControl p13 = new HtmlGenericControl("p");
            p13.InnerText = "87,66,555";
            div16.Controls.Add(p13);

            HtmlGenericControl div17 = new HtmlGenericControl("div");
            div17.Attributes.Add("class", "clearfix");
            div16.Controls.Add(div17);
            div10.Controls.Add(div16);









            HtmlGenericControl div18 = new HtmlGenericControl("div");
            div18.Attributes.Add("class", "nner-price lost");

            HtmlGenericControl h54 = new HtmlGenericControl("h5");
            h54.InnerText = "On Road Pr";
            div18.Controls.Add(h54);


            HtmlGenericControl p14 = new HtmlGenericControl("p");
            p14.InnerText = "$18,66,555";
            div18.Controls.Add(p14);

            HtmlGenericControl div19 = new HtmlGenericControl("div");
            div19.Attributes.Add("class", "clearfix");
            div18.Controls.Add(div19);
            div10.Controls.Add(div18);
            div9.Controls.Add(div10);

            div5.Controls.Add(div9);



            //////




            HtmlGenericControl div21 = new HtmlGenericControl("div");
            div21.Attributes.Add("class", "col-md-3 ad-benefits");

            HtmlGenericControl ul1 = new HtmlGenericControl("ul");
            ul1.Attributes.Add("class", "p-t");


            HtmlGenericControl li1 = new HtmlGenericControl("li");
            HtmlAnchor a2 = new HtmlAnchor();
            a2.HRef = "singleproduct.aspx?id=" + d_id + m_id;

            HtmlGenericControl i1 = new HtmlGenericControl("i");
            i1.Attributes.Add("class", "fa fa-check");
          
            a2.Controls.Add(i1);
            a2.InnerText = "Aliquam dapibus tincidunt";
            li1.Controls.Add(a2);
            ul1.Controls.Add(li1);

            //
            HtmlGenericControl li2 = new HtmlGenericControl("li");
            HtmlAnchor a3 = new HtmlAnchor();
            a3.HRef = "singleproduct.aspx?id=" + d_id + m_id;

            HtmlGenericControl i2 = new HtmlGenericControl("i");
            i2.Attributes.Add("class", "fa fa-check");
           
            a3.Controls.Add(i2);
            a3.InnerText = "Aliquam dapibus tincidunt";
            li2.Controls.Add(a3);
            ul1.Controls.Add(li2);

            //
            HtmlGenericControl li3 = new HtmlGenericControl("li");
            HtmlAnchor a4 = new HtmlAnchor();
            a4.HRef = "singleproduct.aspx?id=" + d_id + m_id;

            HtmlGenericControl i3 = new HtmlGenericControl("i");
            i3.Attributes.Add("class", "fa fa-check");
            i3.Attributes.Add("aria-hidden", "True");
            a4.Controls.Add(i3);
            a4.InnerText = "Aliquam dapibus tincidunt";
            li3.Controls.Add(a4);
            ul1.Controls.Add(li3);
            //
            HtmlGenericControl li4 = new HtmlGenericControl("li");
            HtmlAnchor a5 = new HtmlAnchor();
            a2.HRef = "singleproduct.aspx?id=" + d_id + m_id;

            HtmlGenericControl i4 = new HtmlGenericControl("i");
            i4.Attributes.Add("class", "fa fa-check");
            i4.Attributes.Add("aria-hidden", "True");
            a5.Controls.Add(i4);
            a5.InnerText = "Aliquam dapibus tincidunt";
            li4.Controls.Add(a5);
            ul1.Controls.Add(li4);
            //
            HtmlGenericControl li5 = new HtmlGenericControl("li");
            HtmlAnchor a6 = new HtmlAnchor();
            a6.HRef = "singleproduct.aspx?id=" + d_id + m_id;

            HtmlGenericControl i5 = new HtmlGenericControl("i");
            i5.Attributes.Add("class", "fa fa-check");
            i5.Attributes.Add("aria-hidden", "True");
            a6.Controls.Add(i5);
            a6.InnerText = "Aliquam dapibus tincidunt";
            li5.Controls.Add(a6);
            ul1.Controls.Add(li5);
            //
            HtmlGenericControl li6 = new HtmlGenericControl("li");
            HtmlAnchor a7 = new HtmlAnchor();
            a7.HRef = "singleproduct.aspx?id=" + d_id + m_id;

            HtmlGenericControl i6 = new HtmlGenericControl("i");
            i6.Attributes.Add("class", "fa fa-check");
            i6.Attributes.Add("aria-hidden", "True");
            a7.Controls.Add(i6);
            a7.InnerText = "Aliquam dapibus tincidunt";
            li6.Controls.Add(a7);
            ul1.Controls.Add(li6);
            //
            HtmlGenericControl li7 = new HtmlGenericControl("li");
            HtmlAnchor a8 = new HtmlAnchor();
            a8.HRef = "singleproduct.aspx?id=" + d_id + m_id;

            HtmlGenericControl i7 = new HtmlGenericControl("i");
            i7.Attributes.Add("class", "fa fa-check");
            i7.Attributes.Add("aria-hidden", "True");
            a8.Controls.Add(i7);
            a8.InnerText = "Aliquam dapibus tincidunt";
            li7.Controls.Add(a8);
            ul1.Controls.Add(li7);
            //



            HtmlGenericControl li8 = new HtmlGenericControl("li");
            HtmlAnchor a9 = new HtmlAnchor();
            a9.Attributes.Add("class", "get");
            a9.HRef = "singleproduct.aspx?id=" + d_id + m_id;
            a9.Attributes.Add("data-toggle", "modal");
            a9.Attributes.Add("data-target", "#myModal3");
            a9.InnerText = "Get Insatant Quaote";

            li8.Controls.Add(a9);
            ul1.Controls.Add(li8);

            HtmlGenericControl str = new HtmlGenericControl("strong");
            HtmlGenericControl i9 = new HtmlGenericControl("i");
            i9.Attributes.Add("class", "fa fa-phone-square");
            str.Controls.Add(i9);
            ul1.Controls.Add(str);




            div21.Controls.Add(ul1);
            div5.Controls.Add(div21);




            ////////


            HtmlGenericControl div20 = new HtmlGenericControl("div");
            div20.Attributes.Add("class", "clearfix");
            div5.Controls.Add(div20);
            div4.Controls.Add(div5);
            div3.Controls.Add(div4);


        }
        div2.Controls.Add(div3);
        div_single.Controls.Add(div2);


    }


    public void new_upcoming()
    {
        MySqlCommand mysql1 = new MySqlCommand();
        mysql1.CommandText = "select distinct m.car_master_id,v.car_version_id,v.car_version_name ,m.car_thumb_image,m.car_model_name,p.prize from tbl_car_master m,tbl_car_prize p,tbl_car_version v where p.car_version_id=p.car_version_id and v.car_master_id=m.car_master_id and p.prize in(select min(prize) as car_p from tbl_car_prize p where p.car_version_id=v.car_version_id) ";
        DataAccess da1 = new DataAccess();
        DataTable dt1 = da.GetRecords(mysql1);



        HtmlGenericControl div3 = new HtmlGenericControl("div");
        div3.Attributes.Add("class", "col-md-9 tips-info");

        foreach (DataRow dr in dt1.Rows)
        {
            int d_id = Convert.ToInt32(dr["car_master_id"].ToString());
            int m_id = Convert.ToInt32(dr["car_master_id"].ToString());
            string name = dr["car_model_name"].ToString();
           // int book_st = Convert.ToInt32(dr["book_status"].ToString());
            string imgpath = dr["car_thumb_image"].ToString();

            HtmlGenericControl div4 = new HtmlGenericControl("div");
            div4.Attributes.Add("class", "news-grid");

            HtmlGenericControl div5 = new HtmlGenericControl("div");
            div5.Attributes.Add("class", "news-img up view second-effect");
            div5.Attributes.Add("style", "height:auto;");

            HtmlAnchor a1 = new HtmlAnchor();
            a1.HRef = "singleproduct.aspx?id=" + d_id + m_id;


            HtmlImage img = new HtmlImage();
            img.Src = imgpath;
            img.Attributes.Add("class", "img-responsive");
            a1.Controls.Add(img);

            HtmlGenericControl div8 = new HtmlGenericControl("div");
            div8.Attributes.Add("class", "mask");
            HtmlGenericControl p2 = new HtmlGenericControl("p");
            p2.InnerText = "Cracy";
            HtmlGenericControl lispan2 = new HtmlGenericControl("span");
            lispan2.InnerText = "Cars";
            p2.Controls.Add(lispan2);
            div8.Controls.Add(p2);


            a1.Controls.Add(div8);
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
            a2.HRef = "singleproduct.aspx?id=" + d_id + m_id;
            a2.InnerText = "Bance";
            h3.Controls.Add(a2);
            div6.Controls.Add(h3);

            HtmlGenericControl h5 = new HtmlGenericControl("h5");
            h5.InnerText = "Arrived on";
            div6.Controls.Add(h5);

            HtmlGenericControl p1 = new HtmlGenericControl("p");
            p1.Attributes.Add("class", "news");
            p1.InnerText = "Price: $ 30,000 Ex-showroom, New York";
            div6.Controls.Add(p1);

            HtmlGenericControl h6 = new HtmlGenericControl("h6");
            h6.InnerText = "Not Rated Yet?";

            HtmlAnchor a3 = new HtmlAnchor();
            a3.HRef = "singleproduct.aspx?id=" + d_id + m_id;
            a3.InnerText = "Be the first one to write a review";
            h6.Controls.Add(a3);
            div6.Controls.Add(h6);

            HtmlAnchor a4 = new HtmlAnchor();
            a4.HRef = "singleproduct.aspx?id=" + d_id + m_id;
            a4.Attributes.Add("class", "read hvr-shutter-in-horizontal");
            a4.InnerText = "Check on-road price";
            div6.Controls.Add(a4);

            HtmlGenericControl ul1 = new HtmlGenericControl("ul");
            ul1.Attributes.Add("class", "p-t");

            HtmlGenericControl li1 = new HtmlGenericControl("li");
            HtmlAnchor a5 = new HtmlAnchor();
            a5.HRef = "singleproduct.aspx?id=" + d_id + m_id;
            a5.InnerText = "Photos";

            li1.Controls.Add(a5);
            ul1.Controls.Add(li1);

            HtmlGenericControl li2 = new HtmlGenericControl("li");
            HtmlAnchor a6 = new HtmlAnchor();
            a6.HRef = "singleproduct.aspx?id=" + d_id + m_id;
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


    public void new_view()
    {

        MySqlCommand mysql1 = new MySqlCommand();
        mysql1.CommandText = "select * from tbl_car_details";
        DataAccess da1 = new DataAccess();
        DataTable dt1 = da.GetRecords(mysql1);

       

        HtmlGenericControl div2 = new HtmlGenericControl("div");
        div2.Attributes.Add("class", "container");

        HtmlGenericControl h3 = new HtmlGenericControl("h3");
        h3.Attributes.Add("class", "tittle");
        h3.InnerText = "Featured Products";

        div2.Controls.Add(h3);

        HtmlGenericControl div3 = new HtmlGenericControl("div");
        div3.Attributes.Add("class", "agile_gallery_grids w3-agile");

        HtmlGenericControl ul1 = new HtmlGenericControl("ul");
        ul1.Attributes.Add("class", "clearfix demo");

        

        foreach (DataRow dr in dt1.Rows)
        {
            int d_id = Convert.ToInt32(dr["car_d_id"].ToString());
            int m_id = Convert.ToInt32(dr["car_model_id"].ToString());
            string name = dr["car_model_name"].ToString();
           
            string imgpath = dr["car_image"].ToString();


            HtmlGenericControl li1 = new HtmlGenericControl("li");

            HtmlGenericControl div4 = new HtmlGenericControl("div");
            div4.Attributes.Add("class", "gallery-grid1");


            HtmlImage img = new HtmlImage();
            img.Src = imgpath;
            img.Attributes.Add("class", "preview img-responsive");
            div4.Controls.Add(img);

            HtmlGenericControl div5 = new HtmlGenericControl("div");
            div5.Attributes.Add("class", "p-mask");


            HtmlGenericControl h4 = new HtmlGenericControl("h4");
            h4.InnerText = "inner";

            HtmlGenericControl h4span = new HtmlGenericControl("span");
            h4span.InnerHtml = "cooler";

            h4.Controls.Add(h4span);
            div5.Controls.Add(h4);

            HtmlGenericControl p1 = new HtmlGenericControl("p");
            p1.InnerHtml = "Neque porro quisquam est, qui dolorem ipsum.";

            div5.Controls.Add(p1);

            div4.Controls.Add(div5);
            li1.Controls.Add(div4);

            ul1.Controls.Add(li1);

        }

        div3.Controls.Add(ul1);
        div2.Controls.Add(div3);
        gallery.Controls.Add(div2);


    }

    public void new_loan()
    {
        MySqlCommand mysql1 = new MySqlCommand();
        mysql1.CommandText = "select * from tbl_image";
        DataAccess da1 = new DataAccess();
        DataTable dt1 = da.GetRecords(mysql1);


        HtmlGenericControl h= new HtmlGenericControl("h3");
        h.Attributes.Add("class", "tittle");
        h.InnerText = "My Loans";
        div_loan.Controls.Add(h);

        HtmlGenericControl div3 = new HtmlGenericControl("div");
        div3.Attributes.Add("class", "categories");

        foreach (DataRow dr in dt1.Rows)
        {
            string imgpath = dr["path"].ToString();
            HtmlGenericControl div4 = new HtmlGenericControl("div");
            div4.Attributes.Add("class", "col-md-3 focus-grid");

            HtmlGenericControl a1 = new HtmlGenericControl("a");
            a1.Attributes.Add("href", "../Feat/Single_Car_View.aspx");

            HtmlGenericControl div5 = new HtmlGenericControl("div");
            div5.Attributes.Add("class", "focus-border");

            HtmlGenericControl div6 = new HtmlGenericControl("div");
            div6.Attributes.Add("class", "focus-layout");

            HtmlGenericControl div7 = new HtmlGenericControl("div");
            div7.Attributes.Add("class", "focus-image");

            HtmlImage img = new HtmlImage();
            img.Src = imgpath;
            img.Attributes.Add("class", "preview img-responsive");

            HtmlGenericControl i1 = new HtmlGenericControl("image");
            i1.Attributes.Add("class", "fa");
            i1.Attributes.Add("class", "fa-car");
            div7.Controls.Add(i1);
            div7.Controls.Add(img);
            div6.Controls.Add(div7);

            HtmlGenericControl h4 = new HtmlGenericControl("h4");
            h4.Attributes.Add("class", "clrchg");
            h4.InnerText = "ddf";
            div6.Controls.Add(h4);
            div5.Controls.Add(div6);
            a1.Controls.Add(div5);
            div4.Controls.Add(a1);
            div3.Controls.Add(div4);
 
        }
        HtmlGenericControl div8 = new HtmlGenericControl("div");
        div8.Attributes.Add("class", "clearfix");
        div3.Controls.Add(div8);

        HtmlGenericControl div9 = new HtmlGenericControl("div");
        div9.Attributes.Add("class", "serch-button");

        HtmlGenericControl a2 = new HtmlGenericControl("a");
        a2.Attributes.Add("href", "../Feat/Single_Car_View.aspx");
        a2.Attributes.Add("class", "read hvr-shutter-in-horizontal scroll");
        a2.InnerText = "Continue";

        div9.Controls.Add(a2);
        div3.Controls.Add(div9);
        div_loan.Controls.Add(div3);
       


    }


    public void new_view2()
    {
        MySqlCommand mysql1 = new MySqlCommand();
        mysql1.CommandText = "select * from tbl_car_image";
        DataAccess da1 = new DataAccess();
        DataTable dt1 = da.GetRecords(mysql1);


        HtmlGenericControl div2 = new HtmlGenericControl("div");
        div2.Attributes.Add("class", "container");

        HtmlGenericControl div3 = new HtmlGenericControl("div");
        div3.Attributes.Add("class", "col-md-8 single-left");

        HtmlGenericControl div4 = new HtmlGenericControl("div");
        div4.Attributes.Add("class", "sample1");

        HtmlGenericControl div5 = new HtmlGenericControl("div");
        div5.Attributes.Add("class", "carousel");
        div5.Attributes.Add("style", "height: 341px;");

        HtmlGenericControl ul1 = new HtmlGenericControl("ul");


        foreach (DataRow dr in dt1.Rows)
        {

            string imgpath = dr["car_image_path"].ToString();

            HtmlGenericControl li1 = new HtmlGenericControl("li");
            li1.Attributes.Add("class", "");

            HtmlImage img = new HtmlImage();
            img.Src = imgpath;
            li1.Controls.Add(img);


            HtmlGenericControl div6 = new HtmlGenericControl("div");
            div6.Attributes.Add("class", "caption1");

            HtmlGenericControl h4span = new HtmlGenericControl("span");
            h4span.InnerHtml = "quibusdam et aut offi";

            div6.Controls.Add(h4span);
            li1.Controls.Add(div6);
            ul1.Controls.Add(li1);

        }
        div5.Controls.Add(ul1);

        HtmlGenericControl div7 = new HtmlGenericControl("div");
        div7.Attributes.Add("class", "controls"); 
						

    HtmlGenericControl div8 = new HtmlGenericControl("div");
        div8.Attributes.Add("class", "prev");
        div7.Controls.Add(div8);

        HtmlGenericControl div9 = new HtmlGenericControl("div");
        div9.Attributes.Add("class", "next");
        div7.Controls.Add(div9);
        div5.Controls.Add(div7);
        div4.Controls.Add(div5);

        HtmlGenericControl div10 = new HtmlGenericControl("div");
        div10.Attributes.Add("class", "thumbnails");

        HtmlGenericControl ul2 = new HtmlGenericControl("ul");

        MySqlCommand mysql2 = new MySqlCommand();
        mysql2.CommandText = "select * from tbl_image";
        DataAccess da2 = new DataAccess();
        DataTable dt2 = da.GetRecords(mysql2);

        foreach (DataRow dr1 in dt2.Rows)
        {
            string imgpath1 = dr1["path"].ToString();

           

            HtmlGenericControl li2 = new HtmlGenericControl("li");
            li2.Attributes.Add("class", "selected");

            HtmlGenericControl div11 = new HtmlGenericControl("div");

            HtmlImage img1 = new HtmlImage();
            img1.Src = imgpath1;
            div11.Controls.Add(img1);
            li2.Controls.Add(div11);
            ul2.Controls.Add(li2);
           
        }
        div4.Controls.Add(div10);
        div3.Controls.Add(div4);
        div2.Controls.Add(div3);
        div_display.Controls.Add(div2);



    }

    public void ProductView()
    {
        try
        {
            //select query
            //mysql.CommandText = "select * from tbl_car_details";
            //DataAccess da = new DataAccess();
            //DataTable dt = da.GetRecords(mysql);


            MySqlCommand mysql1 = new MySqlCommand();
            mysql1.CommandText = "select * from tbl_car_prize p,tbl_car_details d where d.car_model_id=p.car_model_id";
            DataAccess da1 = new DataAccess();
            DataTable dt1 = da.GetRecords(mysql1);



            //dtatabl
            HtmlGenericControl h3 = new HtmlGenericControl("h3");
            h3.InnerText = "Featured Products";


            divProduct.Controls.Add(h3);
            //  int uid = Convert.ToInt32(Session["userid"]);



            foreach (DataRow dr in dt1.Rows)
            {
                int d_id = Convert.ToInt32(dr["car_d_id"].ToString());
                int m_id = Convert.ToInt32(dr["car_model_id"].ToString());
                string name = dr["car_model_name"].ToString();
                int price = Convert.ToInt32(dr["prize"].ToString());
                string imgpath = dr["car_image"].ToString();

                HtmlGenericControl div1 = new HtmlGenericControl("div");
                div1.Attributes.Add("class", "feature-grids");

                HtmlGenericControl div2 = new HtmlGenericControl("div");
                div2.Attributes.Add("class", "col-md-3 feature-grid jewel");

                HtmlAnchor a = new HtmlAnchor();
                a.HRef = "product.html";

                HtmlImage img = new HtmlImage();
                img.Src = imgpath;

                HtmlGenericControl div3 = new HtmlGenericControl("div");
                div3.Attributes.Add("class", "arrival-info");

                HtmlGenericControl h4 = new HtmlGenericControl("h4");
                h4.InnerText = name;

                HtmlGenericControl p = new HtmlGenericControl("p");
                p.InnerText = "Rs : " + price;
                // p.InnerText = "Rs";

                div3.Controls.Add(h4);
                div3.Controls.Add(p);

                HtmlGenericControl div4 = new HtmlGenericControl("div");
                div4.Attributes.Add("class", "viw");

                HtmlAnchor a1 = new HtmlAnchor();
                a1.HRef = "singleproduct.aspx?id=" + d_id + m_id;
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
                a.Controls.Add(div3);

                a.Controls.Add(div4);

                a.Controls.Add(div5);
                div2.Controls.Add(a);






                HtmlGenericControl div7 = new HtmlGenericControl("div");
                div7.Attributes.Add("class", "product-info simpleCart_shelfItem");

                HtmlGenericControl div8 = new HtmlGenericControl("div");
                div8.Attributes.Add("class", "product-info-cust");

                HtmlAnchor a3 = new HtmlAnchor();
                a3.HRef = "product.html";

                HtmlGenericControl div9 = new HtmlGenericControl("button");
                div9.Attributes.Add("class", "item_add items");
                div9.Attributes.Add("button", "item_add items");
                div9.InnerText = "Book Now";

                a3.Controls.Add(div9);
                div8.Controls.Add(a3);              
                div7.Controls.Add(div8);
                div2.Controls.Add(div7);


                div1.Controls.Add(div2);


                



                divProduct.Controls.Add(div1);
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }


}