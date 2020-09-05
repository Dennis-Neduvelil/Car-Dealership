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

public partial class Admin_CarManageVersion : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataTable dt = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            filldropdown1();
            filldropdown2();
            if (Request.QueryString.Count != 0)
            {
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                fill_version_name(id);
                filledit(id);
            }
        }

    }
    public void  fill_version_name(int id)
    {
        cmd.CommandText = "select * from tblcarname cn,tblcarver cv where cn.cn_id=cv.cn_id and vr_id='" + id + "'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {

            DataRow dataRow = dt.Rows[0];
            Drop_carnamrvrmn.SelectedIndex = Drop_carnamrvrmn.Items.IndexOf(Drop_carnamrvrmn.Items.FindByValue(dataRow["cn_id"].ToString()));


            Drop_versionvermng.SelectedIndex = Drop_versionvermng.Items.IndexOf(Drop_versionvermng.Items.FindByValue(dataRow["vr_id"].ToString()));
            Btn_save.Text = "Update";
        }
    }
    public void filledit(int id)
    {
                  cmd.CommandText = "select * from tblcarint where vr_id='" + id + "'";
                  dt = da.GetRecords(cmd);
                  if (dt.Rows.Count > 0)
                  {

                      DataRow dataRow = dt.Rows[0];
                      Drop_ac.SelectedIndex = Drop_ac.Items.IndexOf(Drop_ac.Items.FindByValue(dataRow["ci_aircnt"].ToString()));
                      Drop_heater.SelectedIndex = Drop_heater.Items.IndexOf(Drop_heater.Items.FindByValue(dataRow["ci_heater"].ToString()));
                      Drop_adjseats.SelectedIndex = Drop_adjseats.Items.IndexOf(Drop_adjseats.Items.FindByValue(dataRow["ci_adjseat"].ToString()));
                      Drop_ciglighter.SelectedIndex = Drop_ciglighter.Items.IndexOf(Drop_ciglighter.Items.FindByValue(dataRow["ci_ciglighter"].ToString()));
                      Drop_dualtone.SelectedIndex = Drop_dualtone.Items.IndexOf(Drop_dualtone.Items.FindByValue(dataRow["ci_dutndshbrd"].ToString()));
                      Drop_ltrseats.SelectedIndex = Drop_ltrseats.Items.IndexOf(Drop_ltrseats.Items.FindByValue(dataRow["ci_ltrseats"].ToString()));
                      txt_intotrfrs.Text = dataRow["ci_otrfeatures"].ToString();
                      Btn_save.Text = "Update";
                  }
                  cmd.CommandText = "select * from tblcarext where vr_id='" + id + "'";
                  dt = da.GetRecords(cmd);
                  if (dt.Rows.Count > 0)
                  {

                      DataRow dataRow = dt.Rows[0];
                      Drop_fog.SelectedIndex = Drop_fog.Items.IndexOf(Drop_fog.Items.FindByValue(dataRow["ce_foglight"].ToString()));
                      Drop_rsviper.SelectedIndex = Drop_rsviper.Items.IndexOf(Drop_rsviper.Items.FindByValue(dataRow["ce_rnscngviper"].ToString()));
                      Drop_rerviper.SelectedIndex = Drop_rerviper.Items.IndexOf(Drop_rerviper.Items.FindByValue(dataRow["ce_rerwndwviper"].ToString()));
                      Drop_alloy.SelectedIndex = Drop_alloy.Items.IndexOf(Drop_alloy.Items.FindByValue(dataRow["ce_allywhl"].ToString()));
                      Drop_rerspoiler.SelectedIndex = Drop_rerspoiler.Items.IndexOf(Drop_rerspoiler.Items.FindByValue(dataRow["ce_rerspoiler"].ToString()));
                      Drop_sunroof.SelectedIndex = Drop_sunroof.Items.IndexOf(Drop_sunroof.Items.FindByValue(dataRow["ce_sunroof"].ToString()));
                      txt_extotrfrs.Text = dataRow["ce_otrfeatures"].ToString();
                      Btn_save.Text = "Update";
                  }
                  cmd.CommandText = "select * from tblcarsaftey where vr_id='" + id + "'";
                  dt = da.GetRecords(cmd);
                  if (dt.Rows.Count > 0)
                  {

                      DataRow dataRow = dt.Rows[0];
                      Drop_abs.SelectedIndex = Drop_abs.Items.IndexOf(Drop_abs.Items.FindByValue(dataRow["cs_abs"].ToString()));
                      Drop_cntrllck.SelectedIndex = Drop_cntrllck.Items.IndexOf(Drop_cntrllck.Items.FindByValue(dataRow["cs_cntrllck"].ToString()));
                      Drop_childlk.SelectedIndex = Drop_childlk.Items.IndexOf(Drop_childlk.Items.FindByValue(dataRow["cs_chldlck"].ToString()));
                      Drop_airbags.SelectedIndex = Drop_airbags.Items.IndexOf(Drop_airbags.Items.FindByValue(dataRow["cs_airbags"].ToString()));
                      Drop_rercam.SelectedIndex = Drop_rercam.Items.IndexOf(Drop_rercam.Items.FindByValue(dataRow["cs_rercam"].ToString()));
                      Drop_Crashsnr.SelectedIndex = Drop_Crashsnr.Items.IndexOf(Drop_Crashsnr.Items.FindByValue(dataRow["cs_crashsncr"].ToString()));
                      txt_sftyotrfrs.Text = dataRow["cs_otrfeatures"].ToString();
                      Btn_save.Text = "Update";
                  }
    }
    public void filldropdown1()
    {
        cmd.CommandText = "Select * from tblcarname";
        dt = da.GetRecords(cmd);
        Drop_carnamrvrmn.DataSource = dt;
        Drop_carnamrvrmn.DataTextField = "cn_name";
        Drop_carnamrvrmn.DataValueField = "cn_id";
        Drop_carnamrvrmn.DataBind();
        Drop_carnamrvrmn.Items.Insert(0, new ListItem("----select----", "0"));
    }
    public void filldropdown2()
    {
        cmd.CommandText = "Select * from tblcarver";
        dt = da.GetRecords(cmd);
        Drop_versionvermng.DataSource = dt;
        Drop_versionvermng.DataTextField = "vr_name";
        Drop_versionvermng.DataValueField = "vr_id";
        Drop_versionvermng.DataBind();
        Drop_versionvermng.Items.Insert(0, new ListItem("----select----", "0"));
    }

    protected void Btn_save_Click(object sender, EventArgs e)
    {
        if (Btn_save.Text == "Save")
        {
            cmd.CommandText = "INSERT INTO tblcarext(vr_id,ce_foglight,ce_rnscngviper,ce_rerwndwviper,ce_allywhl,ce_rerspoiler,ce_sunroof,ce_otrfeatures)VALUES('" + Convert.ToInt32(Drop_versionvermng.SelectedValue) + "','" + Drop_fog.SelectedValue + "','" + Drop_rsviper.SelectedValue + "','" + Drop_rerviper.SelectedValue + "','" + Drop_alloy.SelectedValue + "','" + Drop_rerspoiler.SelectedValue + "','" + Drop_sunroof.SelectedValue + "','" + txt_extotrfrs.Text + "')";
            da.ExecuteQuery(cmd);
            cmd.CommandText = "INSERT INTO tblcarsaftey(vr_id,cs_abs,cs_cntrllck,cs_chldlck,cs_airbags,cs_rercam,cs_crashsncr,cs_otrfeatures)VALUES('" + Convert.ToInt32(Drop_versionvermng.SelectedValue) + "','" + Drop_abs.SelectedValue + "','" + Drop_cntrllck.SelectedValue + "','" + Drop_childlk.SelectedValue + "','" + Drop_airbags.SelectedValue + "','" + Drop_rercam.SelectedValue + "','" + Drop_Crashsnr.SelectedValue + "','" + txt_sftyotrfrs.Text + "')";
            da.ExecuteQuery(cmd);

            cmd.CommandText = "INSERT INTO tblcarint(vr_id,ci_aircnt,ci_heater,ci_adjseat,ci_ciglighter,ci_dutndshbrd,ci_ltrseats,ci_otrfeatures)VALUES('" + Convert.ToInt32(Drop_versionvermng.SelectedValue) + "','" + Drop_ac.SelectedValue + "','" + Drop_heater.SelectedValue + "','" + Drop_adjseats.SelectedValue + "','" + Drop_ciglighter.SelectedValue + "','" + Drop_dualtone.SelectedValue + "','" + Drop_ltrseats.SelectedValue + "','" + txt_intotrfrs.Text + "')";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Succuess')</script>");
                txt_extotrfrs.Text = " ";
                txt_intotrfrs.Text = " ";
                txt_sftyotrfrs.Text = " ";
            }


        }
        else
        {
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            //update
            cmd.CommandText = "update tblcarext set ce_foglight= '" + Drop_fog.SelectedValue + "',ce_rnscngviper='" + Drop_rsviper.SelectedValue + "',ce_rerwndwviper= '" + Drop_rerviper.SelectedValue + "',ce_allywhl= '" + Drop_alloy.SelectedValue + "',ce_rerspoiler= '" + Drop_rerspoiler.SelectedValue + "',ce_sunroof= '" + Drop_sunroof.SelectedValue + "',ce_otrfeatures='" + txt_extotrfrs.Text + "' where vr_id = '" + id + "'";
            da.ExecuteQuery(cmd);
            cmd.CommandText = "update tblcarsaftey set vr_id='" + Convert.ToInt32(Drop_versionvermng.SelectedValue) + "',cs_abs= '" + Drop_abs.SelectedValue + "',cs_cntrllck='" + Drop_cntrllck.SelectedValue + "',cs_chldlck= '" + Drop_childlk.SelectedValue + "',cs_airbags= '" + Drop_airbags.SelectedValue + "',cs_rercam= '" + Drop_rercam.SelectedValue + "',cs_crashsncr= '" + Drop_Crashsnr.SelectedValue + "',cs_otrfeatures='" + txt_sftyotrfrs.Text + "' where vr_id = '" + id + "'";
            da.ExecuteQuery(cmd);
            cmd.CommandText = "update tblcarint set vr_id='" + Convert.ToInt32(Drop_versionvermng.SelectedValue) + "',ci_aircnt= '" + Drop_ac.SelectedValue + "',ci_heater='" + Drop_heater.SelectedValue + "',ci_adjseat= '" + Drop_adjseats.SelectedValue + "',ci_ciglighter= '" + Drop_ciglighter.SelectedValue + "',ci_dutndshbrd= '" + Drop_dualtone.SelectedValue + "',ci_ltrseats= '" + Drop_ltrseats.SelectedValue + "',ci_otrfeatures='" + txt_intotrfrs.Text + "' where vr_id = '" + id + "'";
            if (da.ExecuteQuery(cmd))
            {
                Response.Write("<Script>alert('Updated Succuesfully')</script>");
                Response.Redirect("CarVersion.aspx");
            }
        }
    }
    protected void Drop_carnamrvrmn_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from tblcarver where cn_id='" + Drop_carnamrvrmn.SelectedValue + "'";
  
        dt = da.GetRecords(cmd);
        Drop_versionvermng.DataSource = dt;
        Drop_versionvermng.DataTextField = "vr_name";
        Drop_versionvermng.DataValueField = "vr_id";
        Drop_versionvermng.DataBind();
        Drop_versionvermng.Items.Insert(0, new ListItem("----select----", "0"));
    }
    protected void Drop_versionvermng_SelectedIndexChanged(object sender, EventArgs e)
    {
        cmd.CommandText = "select * from tblcarsaftey where vr_id='"+Drop_versionvermng.SelectedValue+"'";
        dt = da.GetRecords(cmd);
        if (dt.Rows.Count > 0)
        {
            Response.Write("<Script>alert('Already Exist....')</script>");
            Drop_versionvermng.SelectedIndex = 0;
        }
        else
        {

        }
    }
}