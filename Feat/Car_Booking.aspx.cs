using System;
using System.Web.Configuration;
using System.Configuration;
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

public partial class Feat_Car_Booking : System.Web.UI.Page
{
    int did;
    public int userid, total_prize = 0, t = 0, qty = 0, c_avl = 0;
    public int vid = 0;
    MySqlCommand mysql = new MySqlCommand();
    DataTable dataTable = new DataTable();
    DataAccess da = new DataAccess();

    Car_Booking_Manager car_manager = new Car_Booking_Manager();
    Car_Booking_Var car_var = new Car_Booking_Var();
    protected void Page_Load(object sender, EventArgs e)
    {
        did = Convert.ToInt32(Request.QueryString["mid"]);
        vid = Convert.ToInt32(Request.QueryString["v_id"]);
        HiddenField1.Value = did.ToString();
        car_var.car_mid = did;
        car_var.car_vid = vid;
        if (!IsPostBack)
        {
            ddl_fuel.Visible = false;
            lbl_ddl_fuel.Visible = false;
            int uuid = Convert.ToInt32(Session["userid"]);
            if ((Session["userid"] != null) && (uuid!=0))
            {
                Session["userid"] = Convert.ToInt32(Session["userid"]);
                userid = Convert.ToInt32(Session["userid"]);
                HiddenField5.Value = userid.ToString();
                radio_option.SelectedIndex = 1;
                btn_reset_opt.Enabled = true;
                new_upcoming();
                Create_Book();
                fill_option_datalist();
                fill_color_ddl();
                int tstt = 0;
            }
            else
            {
                Response.Redirect("../Login.aspx");
            }


            // ProductView2(did);

            //fillArrivals();

            //  fill_car_details();

        }
    }


    public void new_upcoming()
    {
        //int galid = Convert.ToInt32(Request.QueryString["id"]);
        MySqlCommand mysql1 = new MySqlCommand();
        vid = Convert.ToInt32(Request.QueryString["v_id"]);
        mysql1.CommandText = "select distinct m.car_master_id,v.car_version_id,v.car_version_name ,d.car_date ,m.car_thumb_image,m.car_model_name,p.prize from tbl_car_master m,tbl_car_prize p,tbl_car_version v,tbl_car_details d where d.car_version_id=v.car_version_id and v.car_version_id=?gal_id and p.car_version_id=p.car_version_id and v.car_master_id=m.car_master_id and p.prize in(select prize as car_p from tbl_car_prize p where p.car_version_id=v.car_version_id)";
        mysql1.Parameters.AddWithValue("?gal_id", vid);
        DataAccess da1 = new DataAccess();
        DataTable dt1 = da.GetRecords(mysql1);



        HtmlGenericControl div3 = new HtmlGenericControl("div");
        div3.Attributes.Add("class", "col-md-9 tips-info");

        foreach (DataRow dr in dt1.Rows)
        {
            int v_id = Convert.ToInt32(dr["car_version_id"].ToString());
            int m_id = Convert.ToInt32(dr["car_master_id"].ToString());
            int v_prize = Convert.ToInt32(dr["prize"].ToString());
            string name = dr["car_model_name"].ToString();
            // int book_st = Convert.ToInt32(dr["book_status"].ToString());
            string imgpath = dr["car_thumb_image"].ToString();
            string v_date = dr["car_date"].ToString();
            string v_name = dr["car_version_name"].ToString();
            HtmlGenericControl div4 = new HtmlGenericControl("div");
            div4.Attributes.Add("class", "news-grid");
            div4.Attributes.Add("style", "background-color:#e5e0e0");

            HtmlGenericControl div5 = new HtmlGenericControl("div");
            div5.Attributes.Add("class", "news-img up view second-effect");
            div5.Attributes.Add("style", "height:auto;");

            HtmlAnchor a1 = new HtmlAnchor();
            a1.HRef = "~/feat/Single_Car_View.aspx?mid=" + m_id + "&v_id=" + v_id;



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
            a2.HRef = "~/feat/Single_Car_View.aspx?mid=" + m_id + "&v_id=" + v_id;
            a2.InnerText = v_name;
            h3.Controls.Add(a2);
            div6.Controls.Add(h3);

            HtmlGenericControl h5 = new HtmlGenericControl("h5");
            h5.InnerText = "Arrived on : ";
            HtmlGenericControl p7 = new HtmlGenericControl("span");
            p7.Attributes.Add("class", "news");
            p7.InnerText = Convert.ToDateTime(v_date).ToShortDateString();
            h5.Controls.Add(p7);
            div6.Controls.Add(h5);

            HtmlGenericControl p1 = new HtmlGenericControl("p");
            p1.Attributes.Add("class", "news");
            p1.InnerText = "Price: $ " + v_prize + " Ex-showroom, Ernakulam";
            div6.Controls.Add(p1);

            HtmlGenericControl h6 = new HtmlGenericControl("h6");
            h6.InnerText = "Not Rated Yet?";

            HtmlAnchor a3 = new HtmlAnchor();
            a3.HRef = "~/feat/Single_Car_View.aspx?mid=" + m_id + "&v_id=" + v_id;
            a3.InnerText = "Be the first one to write a review";
            h6.Controls.Add(a3);
            div6.Controls.Add(h6);



            HtmlGenericControl ul1 = new HtmlGenericControl("ul");
            ul1.Attributes.Add("class", "p-t");

            HtmlGenericControl li1 = new HtmlGenericControl("li");
            HtmlAnchor a5 = new HtmlAnchor();
            a5.HRef = "~/feat/Single_Car_View.aspx?mid=" + m_id + "&v_id=" + v_id;
            a5.InnerText = "Photos";

            li1.Controls.Add(a5);
            ul1.Controls.Add(li1);

            HtmlGenericControl li2 = new HtmlGenericControl("li");
            HtmlAnchor a6 = new HtmlAnchor();
            a6.HRef = "~/feat/Single_Car_View.aspx?mid=" + m_id + "&v_id=" + v_id;
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
    public void Create_Book()
    {
        car_var.u_id = Convert.ToInt32(HiddenField5.Value);
        car_var.b_status = 0;
        car_var.bd_status = 0;
        car_var.car_mid = Convert.ToInt32(Request.QueryString["mid"]);
        car_var.car_vid = Convert.ToInt32(Request.QueryString["v_id"]);
        car_var.b_date = DateTime.Now.ToString("yyy-MM-dd");
        DataTable dataTable2 = car_manager.CarDetails(car_var);
        if (dataTable2.Rows.Count > 0)
        {
            DataRow dataRow2 = dataTable2.Rows[0];
            car_var.book_amt = Convert.ToInt32(dataRow2["book_ammount"].ToString());
            car_var.b_insurance = Convert.ToInt32(dataRow2["insurance"].ToString());
            car_var.b_tax = Convert.ToInt32(dataRow2["tax"].ToString());
            total_prize = Convert.ToInt32(dataRow2["on_road_prize"].ToString());
            DataTable dt = car_manager.Calcu_Amt(car_var); // to calculate orp as resp to option

            foreach (DataRow dr in dt.Rows)
            {
                t = t + Convert.ToInt32(dr["car_option_prize"].ToString());
            }
            txt_orp.Text = (total_prize - t).ToString();
            HiddenField_prize.Value = txt_orp.Text;
            DataTable dataTable1 = car_manager.Book_Details(car_var);
            if (dataTable1.Rows.Count > 0)
            {
                DataRow dataRow1 = dataTable1.Rows[0];
                car_var.book_id = Convert.ToInt32(dataRow1["book_id"].ToString());
                HiddenField2.Value = car_var.book_id.ToString();
            }
        }
    }


    public void fill_color_ddl()
    {
        car_var.grd_mid = Convert.ToInt32(Request.QueryString["mid"]);
        dataTable = car_manager.fill_color_details(car_var);
        ddl_color.DataTextField = "car_color_name";
        ddl_color.DataValueField = "car_color_id";
        ddl_color.DataSource = dataTable;
        ddl_color.DataBind();
        ddl_color.Items.Insert(0, new ListItem("--Select Color--", "0"));
    }
    public void fill_option_datalist()
    {
        car_var.car_mid = Convert.ToInt32(Request.QueryString["mid"]);
        MySqlCommand command = new MySqlCommand();
        DataAccess da = new DataAccess();
        command.CommandText = "select distinct m.car_option_name, m.car_option_id,d.car_option_details_id, d.car_option_prize, d.car_master_id from tbl_car_option_master m, tbl_car_option_details d where d.car_option_id=m.car_option_id and d.car_master_id=?i1;";
        command.Parameters.AddWithValue("?i1", car_var.car_mid);
        DataList2.DataSource = da.GetRecords(command);
        DataList2.DataBind();
    }
    protected void DataList2_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "options")
        {
            LinkButton lnk_btn = (LinkButton)e.CommandSource;

            car_var.grd_opt_did = int.Parse(lnk_btn.CommandArgument);
            car_var.book_id = Convert.ToInt32(HiddenField2.Value);
            if (radio_option.SelectedValue == "Customise")
            {
                DataTable dataTable2 = car_manager.IsExist(car_var);
                if (dataTable2.Rows.Count == 0)
                {
                    if (car_manager.IsOptionBooked(car_var))
                    {
                        DataTable dataTable3 = car_manager.SelectPrize(car_var);
                        if (dataTable3.Rows.Count > 0)
                        {
                            DataRow dataRow3 = dataTable3.Rows[0];
                            int list_amt = Convert.ToInt32(dataRow3["car_option_prize"].ToString());

                            int txtamt = Convert.ToInt32(txt_orp.Text);
                            txt_orp.Text = (txtamt + list_amt).ToString();
                            lnk_btn.Enabled = false;
                            lnk_btn.BackColor = System.Drawing.Color.Red;
                            lnk_btn.ForeColor = System.Drawing.Color.White;
                            lnk_btn.Text = "Seleted";
                        }
                    }
                }
                else
                {
                    Response.Write("<script>alert('Option Already Added')</script>");
                    lnk_btn.Enabled = false;
                    lnk_btn.BackColor = System.Drawing.Color.Red;
                    lnk_btn.ForeColor = System.Drawing.Color.White;
                    lnk_btn.Text = "Seleted";
                }
            }
            else
            {
                lnk_btn.Enabled = false;
                lnk_btn.BackColor = System.Drawing.Color.Red;
                lnk_btn.ForeColor = System.Drawing.Color.White;
                lnk_btn.Text = "Seleted";
            }
        }

    }
    protected void DataList2_ItemDataBound(object sender, DataListItemEventArgs e)
    {

        LinkButton lnk_btn = (LinkButton)(e.Item.FindControl("lnk_btn_opt"));
        car_var.grd_opt_did = Convert.ToInt32(lnk_btn.CommandArgument.ToString());
        //  LinkButton lnk_btn = (LinkButton)e.CommandSource;
        lnk_btn.Font.Bold = true;
        //      btn.ImageUrl = "images/green.jpg";
        lnk_btn.BackColor = System.Drawing.Color.Green;
        lnk_btn.ForeColor = System.Drawing.Color.White;
        if (radio_option.SelectedValue == "Customise")
        {
            btn_reset_opt.Enabled = true;
            DataTable dataTable2 = car_manager.IsExist(car_var);
            if (dataTable2.Rows.Count > 0)
            {
                lnk_btn.Enabled = false;
                lnk_btn.BackColor = System.Drawing.Color.Red;
                lnk_btn.ForeColor = System.Drawing.Color.White;
                lnk_btn.Text = "Seleted";
            }
        }
        else
        {
            btn_reset_opt.Enabled = false;
            lnk_btn.Enabled = false;
            lnk_btn.BackColor = System.Drawing.Color.Red;
            lnk_btn.ForeColor = System.Drawing.Color.White;
            lnk_btn.Text = "Seleted";
        }
    }

    protected void btn_reset_opt_Click(object sender, EventArgs e)
    {
        car_var.book_id = Convert.ToInt32(HiddenField2.Value);
        if (car_manager.IsResetOption(car_var))
        {
            txt_orp.Text = HiddenField_prize.Value;
            fill_option_datalist();
        }
    }
    protected void radio_option_SelectedIndexChanged(object sender, EventArgs e)
    {
        car_var.rbtn_option = radio_option.SelectedValue;
        if (car_var.rbtn_option == "Full Option")
        {
            btn_reset_opt.Enabled = false;
            car_var.car_mid = Convert.ToInt32(Request.QueryString["mid"]);
            car_var.car_vid = Convert.ToInt32(Request.QueryString["v_id"]);
            DataTable dt = car_manager.Calcu_Orp(car_var); // to calculate orp as resp to option
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                txt_orp.Text = "0";
                txt_orp.Text = dr["on_road_prize"].ToString();

                DataList2.Enabled = false;
            }
            car_var.book_id = Convert.ToInt32(HiddenField2.Value);
            if (car_manager.IsDelete(car_var))
            {
                fill_option_datalist();
            }
        }
        else
        {
            btn_reset_opt.Enabled = true;
            DataList2.Enabled = true;
            txt_orp.Text = "0";
            txt_orp.Text = HiddenField_prize.Value;
            fill_option_datalist();
        }
    }
    protected void btn_book_Click(object sender, EventArgs e)
    {
        if (ddl_color.SelectedIndex != 0)
        {

            car_var.car_mid = Convert.ToInt32(Request.QueryString["mid"]);
            car_var.car_vid = Convert.ToInt32(Request.QueryString["v_id"]);
            car_var.book_id = Convert.ToInt32(HiddenField2.Value);
            car_var.car_color_id = Convert.ToInt32(ddl_color.SelectedValue);
            car_var.book_fuel = ddl_fuel.SelectedValue;
            car_var.b_status = 1;
            if (car_var.rbtn_option == "Full Option")
            {
                DataTable dt = car_manager.Calcu_Orp(car_var); // to calculate orp as resp to option
                if (dt.Rows.Count > 0)
                {
                    DataRow dr = dt.Rows[0];
                    car_var.orp = Convert.ToInt32(dr["on_road_prize"].ToString());

                    DataTable dt1 = car_manager.GetQuantity(car_var); // to calculate quantity
                    if (dt1.Rows.Count > 0)
                    {
                        DataRow dr1 = dt1.Rows[0];
                        qty = Convert.ToInt32(dr1["car_version_quantity"].ToString());
                        if (qty != 0)
                        {
                            qty = qty - 1;
                            c_avl = 1;
                        }
                        else
                        {
                            qty = 0;
                            c_avl = 0;
                        }
                        car_var.c_quantity = qty;
                        car_var.car_availab = c_avl;
                        if (car_manager.IsBookSaved(car_var))
                        {
                            if (car_manager.UpdateQty(car_var))
                            {
                                Response.Redirect("../user/My_Booking.aspx");
                            }
                        }

                    }
                }
            }
            else
            {

                car_var.orp = Convert.ToInt32(txt_orp.Text);

                DataTable dt1 = car_manager.GetQuantity(car_var); // to calculate quantity
                if (dt1.Rows.Count > 0)
                {
                    DataRow dr1 = dt1.Rows[0];
                    qty = Convert.ToInt32(dr1["car_version_quantity"].ToString());
                    if (qty != 0)
                    {
                        qty = qty - 1;
                        c_avl = 1;
                    }
                    else
                    {
                        qty = 0;
                        c_avl = 0;
                    }
                    car_var.c_quantity = qty;
                    car_var.car_availab = c_avl;
                    if (car_manager.IsBookSaved(car_var))
                    {
                        if (car_manager.UpdateQty(car_var))
                        {
                            Session["userid"] = Convert.ToInt32(HiddenField5.Value);
                            Response.Redirect("../Payment/selectPayment.aspx");
                        }
                    }

                }
            }
        }
        else
        {
            Response.Write("<Script>alert('Please select Color')</script>");
        }
    }
    

}

    
