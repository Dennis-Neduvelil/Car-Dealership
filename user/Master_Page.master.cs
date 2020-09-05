using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user_Master_Page : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["userid"] != null)
            {
                int uid = Convert.ToInt32(Session["userid"]);
                if (uid > 0)
                {
                    Session["userid"] = uid;
                    id_login.Visible = false;
                    id_logout.Visible = true;

                }
                else
                {
                    id_login.Visible = true;
                    id_logout.Visible = false;
                }
            }
            else
            {
                id_login.Visible = true;
                id_logout.Visible = false;
            }
        }
    }
    protected void id_logout_ServerClick(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("UserHome.aspx");
    }
}
