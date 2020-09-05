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
public partial class user_ViewVersion : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fill_details();
            fill_colour();
            fill_version();
            fill_price();
            fill_list2();
            fill_image();
            fill_review();
        }
    }
    public void fill_image()
    {
        int cnid = Convert.ToInt32(Request.QueryString["id"]);
        cmd.CommandText = "select * from tblcarimg ci, tblcarver cv, tblcarname cn where cv.cn_id=cn.cn_id and ci.cn_id=cn.cn_id and cv.vr_id='" + cnid + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {

            DataRow dataRow = dt.Rows[0];
            img1.Src = dataRow["cimg_1"].ToString();
            Img2.Src = dataRow["cimg_2"].ToString();
            Img3.Src = dataRow["cimg_3"].ToString();
            Img4.Src = dataRow["cimg_4"].ToString();
            Img5.Src = dataRow["cimg_5"].ToString();
            Img6.Src = dataRow["cimg_6"].ToString();      
        }
    }
    public void fill_list2()
    {
        cmd.CommandText = "select * from tblcardetails cd , tblcarname cn where cn.cn_status = 'Enabled' and cd.cn_id=cn.cn_id";
        dt = da.GetRecords(cmd);
        ListView3.DataSource = dt;
        ListView3.DataBind();
    }
    public void fill_version()
    {
        int cnid = Convert.ToInt32(Request.QueryString["id"]);
        cmd.CommandText = "select * from  tblcarname cn, tblcarver cv,tblcardetails cd  where cv.vr_status='Enabled' and cd.cn_id=cn.cn_id and cn.cn_id=cv.cn_id and cv.cn_id in(select cn.cn_id from tblcarver cv,tblcarname cn,tblcardetails cd where cn.cn_id=cv.cn_id and cd.cn_id=cn.cn_id and cv.vr_id='" + cnid + "')";
        dt = da.GetRecords(cmd);
        ListView2.DataSource = dt;
        ListView2.DataBind();

    }
    public void fill_review()
    {
        int cnid = Convert.ToInt32(Request.QueryString["id"]);
        cmd.CommandText = "select * from  tblreview rw, tblcarver cv  where cv.cn_id=rw.cn_id and cv.vr_id='" + cnid + "' order by rw_id desc limit 2 ";
        dt = da.GetRecords(cmd);
        ListView4.DataSource = dt;
        ListView4.DataBind();

    }
    public void fill_details()
    {
        int vrid = Convert.ToInt32(Request.QueryString["id"]);
        cmd.CommandText = "select * from tblcarver cv,tblcarext ce,tblcarint ci,tblcarsaftey cs where cv.vr_id=ci.vr_id  and ce.vr_id=cv.vr_id and cv.vr_id=ce.vr_id and cv.vr_id='" + vrid + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {

            DataRow dataRow = dt.Rows[0];
            id_ac.InnerText = dataRow["ci_aircnt"].ToString();
            id_heater.InnerText = dataRow["ci_heater"].ToString();
            id_adjseat.InnerText = dataRow["ci_adjseat"].ToString();
            id_cig.InnerText = dataRow["ci_ciglighter"].ToString();
            id_dual.InnerText = dataRow["ci_dutndshbrd"].ToString();
            id_ltr.InnerText = dataRow["ci_ltrseats"].ToString();
            id_otr.InnerText = dataRow["ci_otrfeatures"].ToString();

            id_fog.InnerText = dataRow["ce_foglight"].ToString();
            id_rain.InnerText = dataRow["ce_rnscngviper"].ToString();
            id_revip.InnerText = dataRow["ce_rerwndwviper"].ToString();
            id_alloy.InnerText = dataRow["ce_allywhl"].ToString();
            id_resp.InnerText = dataRow["ce_rerspoiler"].ToString();
            id_sun.InnerText = dataRow["ce_sunroof"].ToString();
            id_otrext.InnerText = dataRow["ce_otrfeatures"].ToString();

            id_abs.InnerText = dataRow["cs_abs"].ToString();
            id_ctrlk.InnerText = dataRow["cs_cntrllck"].ToString();
            id_chlk.InnerText = dataRow["cs_chldlck"].ToString();
            id_airbag.InnerText = dataRow["cs_airbags"].ToString();
            id_rear.InnerText = dataRow["cs_rercam"].ToString();
            id_crash.InnerText = dataRow["cs_crashsncr"].ToString();
            id_otrsaf.InnerText = dataRow["cs_otrfeatures"].ToString();


        }

        cmd.CommandText = "select * from tblcarname cn,tblcarengine cen, tblcarver cvr,tblmeasurments cm where cvr.cn_id=cn.cn_id and cen.cn_id=cn.cn_id and cm.cn_id=cn.cn_id and cvr.vr_id='"+vrid+"'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {

            DataRow dataRow = dt.Rows[0];
            id_carname2.InnerText = dataRow["cn_dispname"].ToString() + "  " + dataRow["vr_name"].ToString();
            //txt_cardetailname.Text = dataRow["cd_name"].ToString();
            //txt_launchyear.Text = dataRow["cd_year"].ToString();
            //Drop_carname.SelectedIndex = Drop_carname.Items.IndexOf(Drop_carname.Items.FindByValue(dataRow["cn_id"].ToString()));
            //Drop_cartype.SelectedIndex = Drop_cartype.Items.IndexOf(Drop_cartype.Items.FindByValue(dataRow["cd_type"].ToString()));
            //Drop_carwarrenty.SelectedIndex = Drop_carwarrenty.Items.IndexOf(Drop_carwarrenty.Items.FindByValue(dataRow["cd_warrenty"].ToString()));
            //img_car6.ImageUrl = dataRow["car_image"].ToString();

            name1.InnerText = dataRow["cn_dispname"].ToString();
            name2.InnerText = dataRow["cn_dispname"].ToString();
            name3.InnerText = dataRow["cn_dispname"].ToString();
            name4.InnerText = dataRow["cn_dispname"].ToString();
            name5.InnerText = dataRow["cn_dispname"].ToString();
            name6.InnerText = dataRow["cn_dispname"].ToString();

            id_eng.InnerText = dataRow["cen_name"].ToString();
            id_cc.InnerText = dataRow["cen_cc"].ToString();
            id_pwr.InnerText = dataRow["cen_pwr"].ToString();
            id_milg.InnerText = dataRow["cen_milg"].ToString();
            id_tpspd.InnerText = dataRow["cen_tpspd"].ToString();
            id_torq.InnerText = dataRow["cen_torq"].ToString();
            id_accl.InnerText = dataRow["cen_accl"].ToString();
            id_gear.InnerText = dataRow["cen_nogear"].ToString();
            id_cyl.InnerText = dataRow["cen_nocylinder"].ToString();
            id_trans.InnerText = dataRow["cen_transmission"].ToString();

            id_cl.InnerText = dataRow["cm_crlength"].ToString();
            id_cw.InnerText = dataRow["cm_crwidth"].ToString();
            id_ch.InnerText = dataRow["cm_crheight"].ToString();
            id_ft.InnerText = dataRow["cm_ftsize"].ToString();
            id_rt.InnerText = dataRow["cm_rtsize"].ToString();
            id_gd.InnerText = dataRow["cm_ground"].ToString();
            id_ot.InnerText = dataRow["cm_other"].ToString();
        }
         cmd.CommandText = "select * from tblcarname cn,tblcardetails cd, tblcarver cv where cv.cn_id=cn.cn_id and cd.cn_id=cn.cn_id and cv.vr_id='"+vrid+"'";
         dt = da.GetRecords(cmd);
         if (dt.Rows.Count > 0)
         {

             DataRow dataRow = dt.Rows[0];
             image_car.HRef = dataRow["car_image"].ToString();
             image_car2.Src = dataRow["car_image"].ToString();
             img_desc.InnerText = dataRow["cd_desc"].ToString();
             car_type.InnerText = dataRow["cd_type"].ToString() + ",";
             car_seat.InnerText = dataRow["cd_seat"].ToString() + ",";
             car_fuel.InnerText = dataRow["cn_fuel"].ToString();
         }
    }
    public void fill_colour()
    {
        int vrid = Convert.ToInt32(Request.QueryString["id"]);
        cmd.CommandText = "select * from tblcarname cn,tblcarcolour clr, tblcarver cvr where clr.cclr_status='Enabled' and cvr.cn_id=cn.cn_id and clr.cn_id=cn.cn_id and cvr.vr_id='"+vrid+"'";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    public void fill_price()
    {
        int vrid = Convert.ToInt32(Request.QueryString["id"]);
        cmd.CommandText = "select * from tblcarprice cp, tblcarver cv where cp.vr_id=cv.vr_id and cv.vr_id='" + vrid + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {

            DataRow dataRow = dt.Rows[0];
            id_price.InnerText ="RS." + dataRow["cp_onroad"].ToString();
            id_bkamt.InnerText = "Booking Amount: RS." + dataRow["cp_bookingamt"].ToString();

            prc_bk.InnerText = "RS." + dataRow["cp_bookingamt"].ToString();
            prc_bsc.InnerText = "RS." + dataRow["cp_price"].ToString();
            prc_desc.InnerText = dataRow["cp_desc"].ToString();
            prc_ins.InnerText = "RS." + dataRow["cp_insurance"].ToString();
            prc_onrd.InnerText = "RS." + dataRow["cp_onroad"].ToString();
            prc_otr.InnerText = "RS." + dataRow["cp_otr"].ToString();
            prc_tax.InnerText = "RS." + dataRow["cp_tax"].ToString();
            prc_tot.InnerText = "RS." + dataRow["cp_total"].ToString();
        }
    }
    protected void book_ServerClick(object sender, EventArgs e)
    {
        
    }
    protected void ListView2_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
      
        fill_details(id);
        fill_colour(id);
        fill_version(id);
        fill_price(id);
        fill_list();
        fill_image2();
    }
    public void fill_image2()
    {
        int cnid = Convert.ToInt32(Request.QueryString["id"]);
        cmd.CommandText = "select * from tblcarimg ci, tblcarver cv, tblcarname cn where cv.cn_id=cn.cn_id and ci.cn_id=cn.cn_id and cv.vr_id='" + cnid + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {

            DataRow dataRow = dt.Rows[0];
            img1.Src = dataRow["cimg_1"].ToString();
            Img2.Src = dataRow["cimg_2"].ToString();
            Img3.Src = dataRow["cimg_3"].ToString();
            Img4.Src = dataRow["cimg_4"].ToString();
            Img5.Src = dataRow["cimg_5"].ToString();
            Img6.Src = dataRow["cimg_6"].ToString();
        }
    }
    public void fill_list()
    {
        cmd.CommandText = "select * from tblcardetails cd , tblcarname cn where cn.cn_status = 'Enabled' and cd.cn_id=cn.cn_id";
        dt = da.GetRecords(cmd);
        ListView3.DataSource = dt;
        ListView3.DataBind();
    }
    public void fill_version(int id)
    {
        int cnid = id;
        cmd.CommandText = "select * from  tblcarname cn, tblcarver cv, tblcardetails cd  where cv.vr_status='Enabled' and cd.cn_id=cn.cn_id and cn.cn_id=cv.cn_id and cv.cn_id in(select cn.cn_id from tblcarver cv,tblcarname cn,tblcardetails cd where cn.cn_id=cv.cn_id and cd.cn_id=cn.cn_id and cv.vr_id='" + cnid + "')";
        dt = da.GetRecords(cmd);
        ListView2.DataSource = dt;
        ListView2.DataBind();

    }
    public void fill_details(int id)
    {
        int vrid = id;
        cmd.CommandText = "select * from tblcarver cv,tblcarext ce,tblcarint ci,tblcarsaftey cs where cv.vr_id=ci.vr_id  and ce.vr_id=cv.vr_id and cv.vr_id=ce.vr_id and cv.vr_id='" + vrid + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {

            DataRow dataRow = dt.Rows[0];
            id_ac.InnerText = dataRow["ci_aircnt"].ToString();
            id_heater.InnerText = dataRow["ci_heater"].ToString();
            id_adjseat.InnerText = dataRow["ci_adjseat"].ToString();
            id_cig.InnerText = dataRow["ci_ciglighter"].ToString();
            id_dual.InnerText = dataRow["ci_dutndshbrd"].ToString();
            id_ltr.InnerText = dataRow["ci_ltrseats"].ToString();
            id_otr.InnerText = dataRow["ci_otrfeatures"].ToString();

            id_fog.InnerText = dataRow["ce_foglight"].ToString();
            id_rain.InnerText = dataRow["ce_rnscngviper"].ToString();
            id_revip.InnerText = dataRow["ce_rerwndwviper"].ToString();
            id_alloy.InnerText = dataRow["ce_allywhl"].ToString();
            id_resp.InnerText = dataRow["ce_rerspoiler"].ToString();
            id_sun.InnerText = dataRow["ce_sunroof"].ToString();
            id_otrext.InnerText = dataRow["ce_otrfeatures"].ToString();

            id_abs.InnerText = dataRow["cs_abs"].ToString();
            id_ctrlk.InnerText = dataRow["cs_cntrllck"].ToString();
            id_chlk.InnerText = dataRow["cs_chldlck"].ToString();
            id_airbag.InnerText = dataRow["cs_airbags"].ToString();
            id_rear.InnerText = dataRow["cs_rercam"].ToString();
            id_crash.InnerText = dataRow["cs_crashsncr"].ToString();
            id_otrsaf.InnerText = dataRow["cs_otrfeatures"].ToString();


        }

        cmd.CommandText = "select * from tblcarname cn,tblcarengine cen, tblcarver cvr,tblmeasurments cm where cvr.cn_id=cn.cn_id and cen.cn_id=cn.cn_id and cm.cn_id=cn.cn_id and cvr.vr_id='" + vrid + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {

            DataRow dataRow = dt.Rows[0];
            id_carname2.InnerText = dataRow["cn_dispname"].ToString() + "  " + dataRow["vr_name"].ToString();
            //txt_cardetailname.Text = dataRow["cd_name"].ToString();
            //txt_launchyear.Text = dataRow["cd_year"].ToString();
            //Drop_carname.SelectedIndex = Drop_carname.Items.IndexOf(Drop_carname.Items.FindByValue(dataRow["cn_id"].ToString()));
            //Drop_cartype.SelectedIndex = Drop_cartype.Items.IndexOf(Drop_cartype.Items.FindByValue(dataRow["cd_type"].ToString()));
            //Drop_carwarrenty.SelectedIndex = Drop_carwarrenty.Items.IndexOf(Drop_carwarrenty.Items.FindByValue(dataRow["cd_warrenty"].ToString()));
            //img_car6.ImageUrl = dataRow["car_image"].ToString();

            name1.InnerText = dataRow["cn_dispname"].ToString();
            name2.InnerText = dataRow["cn_dispname"].ToString();
            name3.InnerText = dataRow["cn_dispname"].ToString();
            name4.InnerText = dataRow["cn_dispname"].ToString();
            name5.InnerText = dataRow["cn_dispname"].ToString();
            name6.InnerText = dataRow["cn_dispname"].ToString();

            id_eng.InnerText = dataRow["cen_name"].ToString();
            id_cc.InnerText = dataRow["cen_cc"]+" cab".ToString();
            id_pwr.InnerText = dataRow["cen_pwr"].ToString();
            id_milg.InnerText = dataRow["cen_milg"].ToString();
            id_tpspd.InnerText = dataRow["cen_tpspd"].ToString();
            id_torq.InnerText = dataRow["cen_torq"].ToString();
            id_accl.InnerText = dataRow["cen_accl"].ToString();
            id_gear.InnerText = dataRow["cen_nogear"].ToString();
            id_cyl.InnerText = dataRow["cen_nocylinder"].ToString();
            id_trans.InnerText = dataRow["cen_transmission"].ToString();

            id_cl.InnerText = dataRow["cm_crlength"].ToString();
            id_cw.InnerText = dataRow["cm_crwidth"].ToString();
            id_ch.InnerText = dataRow["cm_crheight"].ToString();
            id_ft.InnerText = dataRow["cm_ftsize"].ToString();
            id_rt.InnerText = dataRow["cm_rtsize"].ToString();
            id_gd.InnerText = dataRow["cm_ground"].ToString();
            id_ot.InnerText = dataRow["cm_other"].ToString();
        }
        cmd.CommandText = "select * from tblcarname cn,tblcardetails cd, tblcarver cv where cv.cn_id=cn.cn_id and cd.cn_id=cn.cn_id and cv.vr_id='" + vrid + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {

            DataRow dataRow = dt.Rows[0];
            image_car.HRef = dataRow["car_image"].ToString();
            image_car2.Src = dataRow["car_image"].ToString();
            img_desc.InnerText = dataRow["cd_desc"].ToString();
            car_type.InnerText = dataRow["cd_type"].ToString() + ",";
            car_seat.InnerText = dataRow["cd_seat"].ToString() + ",";
            car_fuel.InnerText = dataRow["cn_fuel"].ToString();
        }
    }
    public void fill_colour(int id)
    {
        int vrid = id;
        cmd.CommandText = "select * from tblcarname cn,tblcarcolour clr, tblcarver cvr where clr.cclr_status='Enabled' and cvr.cn_id=cn.cn_id and clr.cn_id=cn.cn_id and cvr.vr_id='" + vrid + "'";
        dt = da.GetRecords(cmd);
        ListView1.DataSource = dt;
        ListView1.DataBind();
    }
    public void fill_price(int id)
    {
        int vrid = id;
        cmd.CommandText = "select * from tblcarprice cp, tblcarver cv where cp.vr_id=cv.vr_id and cv.vr_id='" + vrid + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {

            DataRow dataRow = dt.Rows[0];
            id_price.InnerText = "RS." + dataRow["cp_onroad"].ToString();
            id_bkamt.InnerText = "Booking Amount: RS." + dataRow["cp_bookingamt"].ToString();

            prc_bk.InnerText = "RS." + dataRow["cp_bookingamt"].ToString();
            prc_bsc.InnerText = "RS." + dataRow["cp_price"].ToString();
            prc_desc.InnerText = dataRow["cp_desc"].ToString();
            prc_ins.InnerText = "RS." + dataRow["cp_insurance"].ToString();
            prc_onrd.InnerText = "RS." + dataRow["cp_onroad"].ToString();
            prc_otr.InnerText = "RS." + dataRow["cp_otr"].ToString();
            prc_tax.InnerText = "RS." + dataRow["cp_tax"].ToString();
            prc_tot.InnerText = "RS." + dataRow["cp_total"].ToString();
        }
    }
    protected void btn_rw_Click(object sender, EventArgs e)
    {
        cmd.CommandText = "Select * from tblcarname cn, tblcarver cv where cn.cn_id=cv.cn_id and cv.vr_id='" + Convert.ToInt32(Request.QueryString["id"]) + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {

            DataRow dataRow = dt.Rows[0];
            int vrid = Convert.ToInt32(dataRow["cn_id"]);

            cmd.CommandText = "INSERT INTO tblreview(rw_name,rw_email,rw_rev,rw_stars,rw_date,cn_id)VALUES('" + rw_name.Text + "','" + rw_email.Text + "','" + rw_rev.Text + "','" + Drop_rw.SelectedValue + "','" + Convert.ToDateTime(System.DateTime.Now).ToString("yyyy-MM-dd") + "','" + vrid + "')";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                rw_name.Text = "";
                rw_email.Text = "";
                rw_rev.Text = "";
                Drop_rw.SelectedIndex = 0;
                fill_review();
            }
        }
    }
}