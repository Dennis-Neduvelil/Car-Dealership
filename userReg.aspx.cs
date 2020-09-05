using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
public partial class userReg : System.Web.UI.Page
{
    MySqlCommand cmd = new MySqlCommand();
    DataAccess da = new DataAccess();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btn_submit_Click(object sender, EventArgs e)
    
    {
        string gender;
       
        if(radio1.SelectedIndex == 0)
        {
            gender="male";
        }
        else
        {
            gender="female";
        }
      
      cmd.CommandText=" insert into tbl_customer(user_name,gender,dob,housename,place,district,phoneno,emailid,adarno,user_username,user_password) values('" +txt_user_name.Text+ "','" +gender+ "','" +Convert.ToDateTime(txt_dob.Text).ToShortDateString()+ "','" +txt_housename.Text+ "','" +txt_place.Text+ "','" +txt_district.Text+ "','" +txt_phoneno.Text+ "','" +txt_emailid.Text+ "','" +txt_adarno.Text+ "','" +txt_username.Text+ "','" +txt_password.Text+ "')";
        da.ExecuteQuery(cmd);
         Response.Write("<Script>alert('Successfuly Entered')</script>");
         txt_user_name.Text = "";
        txt_dob.Text="";
            txt_housename.Text="";
                txt_place.Text="";
                    txt_district.Text="";
                        txt_phoneno.Text="";
                            txt_emailid.Text="";
                                txt_adarno.Text="";
                                    txt_username.Text="";
                                    txt_password.Text = "";
    }
   
}



     