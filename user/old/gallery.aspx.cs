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
using System.Configuration;
using System.Web.Configuration;
public partial class gallery : System.Web.UI.Page
{
    MySqlCommand mysql = new MySqlCommand();
    DataTable dataTable = new DataTable();
    DataAccess da = new DataAccess();

    MySqlCommand mysql1 = new MySqlCommand();
    DataAccess da1 = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LinkButton1.BackColor = System.Drawing.Color.Red;
            ProductView();
           // filldatalist();
        }

      
      //  fillArrivals();
        showLeftMenu();
       
    }

    public void filldatalist()
    {

        
        MySqlCommand command = new MySqlCommand();
        DataAccess da = new DataAccess();
        command.CommandText = "SELECT * FROM tbl_category";
       
        DataList1.DataSource = da.GetRecords(command);
        DataList1.DataBind();
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



    public void fillArrivals()
    {



        mysql.CommandText = " select distinct m.car_master_id,v.car_version_id ,m.car_thumb_image,m.car_model_name,p.prize from tbl_car_master m,tbl_car_prize p,tbl_car_version v ,tbl_car_details d where p.car_version_id=p.car_version_id and  d.car_status= '" + 0 + "%' and v.car_master_id=m.car_master_id and p.prize in(select max(prize) as car_p from tbl_car_prize p,tbl_car_details d where d.car_version_id=v.car_version_id and p.car_version_id=v.car_version_id)";

        DataTable dt = da.GetRecords(mysql);

        HtmlGenericControl div01 = new HtmlGenericControl("div");
        div01.Attributes.Add("class", "arrivals");

        HtmlGenericControl div02 = new HtmlGenericControl("div");
        div02.Attributes.Add("class", "container");

        HtmlGenericControl h3 = new HtmlGenericControl("h3");
        h3.InnerText = "Upcoming Cars";
        div02.Controls.Add(h3);

        HtmlGenericControl div1 = new HtmlGenericControl("div");
        div1.Attributes.Add("class", "arrival-grids");


        HtmlGenericControl ul = new HtmlGenericControl("ul");
        ul.Attributes.Add("id", "flexiselDemo1");
        foreach (DataRow dr in dt.Rows)
        {
            int id = Convert.ToInt32(dr["car_master_id"].ToString());
            int c_prize = Convert.ToInt32(dr["prize"].ToString());
            int m_id = Convert.ToInt32(dr["car_master_id"].ToString());
            string c_name = dr["car_model_name"].ToString();
          //  DateTime c_date = Convert.ToDateTime(dr["car_date"].ToString());


            string imgpath = dr["car_thumb_image"].ToString();
           




            HtmlGenericControl li = new HtmlGenericControl("li");


            HtmlAnchor a = new HtmlAnchor();

            Session["userid"] = Convert.ToInt32(Session["userid"]);
            a.HRef = "~/users/Version_List.aspx?id=" + id + "&id1=" + m_id;


            li.Controls.Add(a);


            HtmlGenericControl div3 = new HtmlGenericControl("div");
            div3.Attributes.Add("class", "arrival-info");

            HtmlImage img = new HtmlImage();
            img.Src = imgpath;


            HtmlGenericControl h4 = new HtmlGenericControl("h4");
            h4.InnerText = c_name;
            div3.Controls.Add(h4);

            HtmlGenericControl p = new HtmlGenericControl("p");
            p.InnerText ="Prize $"+ c_prize.ToString();



            div3.Controls.Add(p);
            li.Controls.Add(div3);



            HtmlGenericControl div4 = new HtmlGenericControl("div");
            div4.Attributes.Add("class", "view");


            HtmlAnchor a1 = new HtmlAnchor();
            Session["userid"] = Convert.ToInt32(Session["userid"]);
            a1.HRef = "~/Users/Version_List.aspx?id=" + id + "&id1=" + m_id;
            a1.InnerText = "Quick View";

            HtmlGenericControl span = new HtmlGenericControl("span");
            span.Attributes.Add("class", "glyphicon glyphicon-eye-open");
            span.Attributes.Add("aria-hidden", "true");

            a1.Controls.Add(span);


            div4.Controls.Add(a1);


            HtmlGenericControl div5 = new HtmlGenericControl("div");
            div5.Attributes.Add("class", "shrt");

            HtmlAnchor a2 = new HtmlAnchor();
            a2.HRef = "#";
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


    public void ProductView()
    {
        try
        {
            //select query
            //mysql.CommandText = "select * from tbl_car_details";
            //DataAccess da = new DataAccess();
            //DataTable dt = da.GetRecords(mysql);


            MySqlCommand mysql1 = new MySqlCommand();
            mysql1.CommandText = "select * from tblcardetails";
            DataAccess da1 = new DataAccess();
            DataTable dt1 = da.GetRecords(mysql1);



            //dtatabl
            //HtmlGenericControl h3 = new HtmlGenericControl("h3");
            //h3.InnerText = "Featured Products";


            //divProduct.Controls.Add(h3);
          //  int uid = Convert.ToInt32(Session["userid"]);



            foreach (DataRow dr in dt1.Rows)
            {
               // int c_v_id = Convert.ToInt32(dr["car_version_id"].ToString());
                int c_m_id = Convert.ToInt32(dr["cd_id"].ToString());
              //  int m_id = Convert.ToInt32(dr["car_model_id"].ToString());
                string name = dr["cd_name"].ToString();
         //      int price = Convert.ToInt32(dr["prize"].ToString());
                string imgpath = dr["car_image"].ToString();

                HtmlGenericControl div1 = new HtmlGenericControl("div");
                div1.Attributes.Add("class", "feature-grids");

                HtmlGenericControl div2 = new HtmlGenericControl("div");
                div2.Attributes.Add("class", "col-md-3 feature-grid jewel responsive");

                HtmlAnchor a = new HtmlAnchor();
               // a.HRef = "~/Feat/Single_Car_View.aspx?id=" + c_m_id;
                Session["userid"] = Convert.ToInt32(Session["userid"]);
                a.HRef = "~/user/Version_List.aspx?id=" + c_m_id;

                HtmlImage img = new HtmlImage();
                img.Attributes.Add("class", "img-responsive");
                img.Src = imgpath;

                HtmlGenericControl div3 = new HtmlGenericControl("div");
                div3.Attributes.Add("class", "arrival-info");

                HtmlGenericControl h4 = new HtmlGenericControl("h4");
                h4.InnerText ="All New " + name;

               // HtmlGenericControl p = new HtmlGenericControl("p");
                //p.InnerText = "Price Starts with Rs : " + price;
               // p.InnerText = "Rs";

                div3.Controls.Add(h4);
               // div3.Controls.Add(p);

                HtmlGenericControl div4 = new HtmlGenericControl("div");
                div4.Attributes.Add("class", "viw");

                HtmlAnchor a1 = new HtmlAnchor();
                Session["userid"] = Convert.ToInt32(Session["userid"]);
                a1.HRef = "Version_List.aspx?id=" + c_m_id;
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
                Session["userid"] = Convert.ToInt32(Session["userid"]);
                a3.HRef = "~/user/Version_List.aspx?id=" + c_m_id;
                a3.Attributes.Add("class", "item_add items");
                a3.InnerText = "Book Now";


                //HtmlGenericControl div9 = new HtmlGenericControl("button");
                //div9.Attributes.Add("class", "item_add items");
                
               // div9.Attributes.Add("button", "item_add items");
                //div9.InnerText = "Book Now";

                //a3.Controls.Add(div9);


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
    protected void txt_search_TextChanged(object sender, EventArgs e)
    {
        string srch = txt_search.Text;
        Session["userid"] = Convert.ToInt32(Session["userid"]);
        Response.Redirect("~/user/Search.aspx?srch_qry=" + srch);
    }



    

    public void showLeftMenu()
    {
        HtmlGenericControl prodrgh = new HtmlGenericControl("div");
        prodrgh.Attributes.Add("class", "product_right");
        catSection.Controls.Add(prodrgh);
        HtmlGenericControl h4 = new HtmlGenericControl("h4");
        h4.Attributes.Add("class", "m_2");
        prodrgh.Controls.Add(h4);
        HtmlGenericControl h4span = new HtmlGenericControl("span");
        h4span.Attributes.Add("class", "glyphicon glyphicon-minus");
        h4span.Attributes.Add("aria-hidden", "true");
        h4span.InnerHtml = "CATEGORIES";
        h4.Controls.Add(h4span);

        MySqlCommand mySqlCommand2 = new MySqlCommand();
        mySqlCommand2.CommandText = "select * from tblcarname";
        dataTable = da.GetRecords(mySqlCommand2);
        int tabCount = 0;
        if (dataTable != null && dataTable.Rows.Count > 0)
        {
            foreach (DataRow dataRow in dataTable.Rows)
            {
                tabCount += 1;
                string catId = dataRow["cn_id"].ToString();
                HtmlGenericControl tabDiv = new HtmlGenericControl("div");
                tabDiv.Attributes.Add("class", "tab" + tabCount.ToString());
                catSection.Controls.Add(tabDiv);
                HtmlGenericControl tabDivUl = new HtmlGenericControl("ul");
                tabDivUl.Attributes.Add("class", "place");
                tabDiv.Controls.Add(tabDivUl);
                HtmlGenericControl tabDivLi = new HtmlGenericControl("li");
                tabDivLi.Attributes.Add("class", "sort");
                tabDivLi.InnerHtml = dataRow["cn_name"].ToString();
                tabDivUl.Controls.Add(tabDivLi);
                HtmlGenericControl tabDivLi2 = new HtmlGenericControl("li");
                tabDivLi2.Attributes.Add("class", "by");
                tabDivUl.Controls.Add(tabDivLi2);
                HtmlGenericControl tabDivLImg = new HtmlGenericControl("img");
                tabDivLImg.Attributes.Add("src", "../images/do.png");
                tabDivLi2.Controls.Add(tabDivLImg);
                HtmlGenericControl clrfx1 = new HtmlGenericControl("div");
                clrfx1.Attributes.Add("class", "clearfix");
                tabDivUl.Controls.Add(clrfx1);

                MySqlCommand mySqlCommand3 = new MySqlCommand();
                DataTable dataTable2 = new DataTable();
                mySqlCommand3.CommandText = " select * from tblcarver c , tblcarname v where v.cn_id= c.cn_id and v.cn_id=" + catId;
                dataTable2 = da.GetRecords(mySqlCommand3);
                if (dataTable2 != null && dataTable2.Rows.Count > 0)
                {
                    foreach (DataRow dataRowSub in dataTable2.Rows)
                    {
                        HtmlGenericControl btmDiv = new HtmlGenericControl("div");
                        btmDiv.Attributes.Add("class", "single-bottom");
                        btmDiv.Style.Add("display", "none");
                        tabDiv.Controls.Add(btmDiv);
                        HtmlGenericControl btmDiva = new HtmlGenericControl("a");
                        Session["userid"] = Convert.ToInt32(Session["userid"]);
                        btmDiva.Attributes.Add("href", "../user/Single_Car_View.aspx?mid=" + dataRowSub["cn_id"].ToString() + "&v_id=" + dataRowSub["vr_id"].ToString());
                        btmDiv.Controls.Add(btmDiva);
                        HtmlGenericControl btmDivap = new HtmlGenericControl("p");
                        btmDivap.InnerHtml = dataRowSub["vr_name"].ToString();
                        btmDiva.Controls.Add(btmDivap);
                    }
                }
            }
        }
    }



    //protected void btn_all_Click(object sender, EventArgs e)
    //{
    //    btn_all.BackColor = System.Drawing.Color.Red;
    //    btn_car.BackColor = System.Drawing.Color.Gray;
    //    btn_mpv.BackColor = System.Drawing.Color.Gray;
    //    btn_suv.BackColor = System.Drawing.Color.Gray;
    //    btn_hybrid.BackColor = System.Drawing.Color.Gray;
    //    ProductView();
    //}
    //protected void btn_car_Click(object sender, EventArgs e)
    //{
    //    btn_all.BackColor = System.Drawing.Color.Gray;    
    //    btn_car.BackColor = System.Drawing.Color.Red;
    //    btn_mpv.BackColor = System.Drawing.Color.Gray;
    //    btn_suv.BackColor = System.Drawing.Color.Gray;
    //    btn_hybrid.BackColor = System.Drawing.Color.Gray;
    //    ProductView("car");

    //}
    //protected void btn_mpv_Click(object sender, EventArgs e)
    //{
    //    btn_all.BackColor = System.Drawing.Color.Gray;
    //    btn_car.BackColor = System.Drawing.Color.Gray;
    //    btn_mpv.BackColor = System.Drawing.Color.Red;
    //    btn_suv.BackColor = System.Drawing.Color.Gray;
    //    btn_hybrid.BackColor = System.Drawing.Color.Gray;
    //    ProductView("mpv");
    //}
    //protected void btn_suv_Click(object sender, EventArgs e)
    //{
    //    btn_all.BackColor = System.Drawing.Color.Gray;
    //    btn_car.BackColor = System.Drawing.Color.Gray;
    //    btn_mpv.BackColor = System.Drawing.Color.Gray;
    //    btn_suv.BackColor = System.Drawing.Color.Red;
    //    btn_hybrid.BackColor = System.Drawing.Color.Gray;
    //    ProductView("suv");
    //}
    //protected void btn_hybrid_Click(object sender, EventArgs e)
    //{
    //    btn_all.BackColor = System.Drawing.Color.Gray;
    //    btn_car.BackColor = System.Drawing.Color.Gray;
    //    btn_mpv.BackColor = System.Drawing.Color.Gray;
    //    btn_suv.BackColor = System.Drawing.Color.Red;
    //    btn_hybrid.BackColor = System.Drawing.Color.Gray;
    //    ProductView("hybrid");
    //}
    protected void btn_compare_Click(object sender, EventArgs e)
    {

    }


    public void ProductView(string cat)
    {
        try
        {




            mysql1.CommandText = "select distinct m.car_master_id,v.car_version_id ,m.car_thumb_image,m.car_model_name,p.prize,cat.category_name from tbl_category cat, tbl_car_master m,tbl_car_prize p,tbl_car_version v ,tbl_car_details d,tbl_car car where  d.car_version_id=v.car_version_id and v.car_version_id=p.car_version_id and cat.category_id=car.category_id and car.car_id=m.car_id and m.car_master_id=v.car_master_id and cat.category_name=?cat_hybrid";
                mysql1.Parameters.AddWithValue("?cat_hybrid", cat );
 
            DataTable dt1 = da.GetRecords(mysql1);
            foreach (DataRow dr1 in dt1.Rows)
            {
                int c_m_id = Convert.ToInt32(dr1["car_master_id"].ToString());
              int m_id = Convert.ToInt32(dr1["car_master_id"].ToString());
                string name = dr1["car_model_name"].ToString();
                int price = Convert.ToInt32(dr1["prize"].ToString());
                string imgpath = dr1["car_thumb_image"].ToString();

                HtmlGenericControl div1 = new HtmlGenericControl("div");
                div1.Attributes.Add("class", "feature-grids");

                HtmlGenericControl div2 = new HtmlGenericControl("div");
                div2.Attributes.Add("class", "col-md-3 feature-grid jewel responsive");

                HtmlAnchor a = new HtmlAnchor();
                Session["userid"] = Convert.ToInt32(Session["userid"]);
                a.HRef = "~/User/Version_List.aspx?id=" + c_m_id;

                HtmlImage img = new HtmlImage();
                img.Attributes.Add("class", "img-responsive");
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
                Session["userid"] = Convert.ToInt32(Session["userid"]);
                a1.HRef = "~/User/Version_List.aspx?id=" + c_m_id;
                a1.InnerText = "Quick View";

                HtmlGenericControl span = new HtmlGenericControl("span");
                span.Attributes.Add("class", "glyphicon glyphicon-eye-open");
                span.Attributes.Add("aria-hidden", "true");

                a1.Controls.Add(span);


                div4.Controls.Add(a1);

                HtmlGenericControl div5 = new HtmlGenericControl("div");
                div5.Attributes.Add("class", "shrt");

                HtmlAnchor a2 = new HtmlAnchor();
                a2.HRef = "#";
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
                Session["userid"] = Convert.ToInt32(Session["userid"]);
                a3.HRef = "~/user/Home.aspx?id=" + c_m_id;
                a3.Attributes.Add("class", "item_add items");
                a3.InnerText = "Book Now";


                //HtmlGenericControl div9 = new HtmlGenericControl("button");
                //div9.Attributes.Add("class", "item_add items");

                // div9.Attributes.Add("button", "item_add items");
                //div9.InnerText = "Book Now";

                //a3.Controls.Add(div9);


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
    protected void btn_all1_Click(object sender, EventArgs e)
    {
        
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        LinkButton1.BackColor = System.Drawing.Color.Gray;
        LinkButton lnkbtn = (LinkButton)e.CommandSource;
        lnkbtn.BackColor = System.Drawing.Color.Gray;
        if (e.CommandName == "view")
        {


            lnkbtn.BackColor =  System.Drawing.Color.Red;
           
            
            string name=lnkbtn.CommandArgument;

            ProductView(name);


            //if (lnkbtn.BackColor == System.Drawing.Color.Red)
            //{
            //    lnkbtn.BackColor = System.Drawing.Color.Gray;
            //}
            //else
            //{
            //    lnkbtn.BackColor = System.Drawing.Color.Red;
            //}
           

         
       
        }
       
    }
    protected void DataList1_Load(object sender, EventArgs e)
    {

       
    }
    protected void btn_all_Click(object sender, EventArgs e)
    {
        LinkButton1.BackColor = System.Drawing.Color.Red;
        ProductView();
    }
    protected void DataList1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
        {


            LinkButton lnkbtn = (LinkButton)(e.Item.FindControl("btn_all1"));
            lnkbtn.BackColor = System.Drawing.Color.Gray;
          

              
        }
    }
}