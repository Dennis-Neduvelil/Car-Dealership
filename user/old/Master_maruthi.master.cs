using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Master_maruthi : System.Web.UI.MasterPage
{
    MySqlCommand mysql = new MySqlCommand();
    DataTable dataTable = new DataTable();
    DataAccess da = new DataAccess();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            Session["userid"] = Convert.ToInt32(Session["userid"]);
           int userid = Convert.ToInt32(Session["userid"]);
           if ((Session["userid"] != "") && (userid != 0))
           {
               li_acc.Visible = true;
               li_lout.Visible = true;
               li_in.Visible = false;
               mybook.Visible = true;
               
           }
           else
           {
               mybook.Visible = false;
               li_acc.Visible = false;
               li_lout.Visible = false;
               li_in.Visible = true;
           }

        }
    }


    
}
