using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PaymentMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        trans_id.InnerText = "Transaction ID : PBTID857419";
       
        if (!IsPostBack)
        {
            int bid = Convert.ToInt32(Request.QueryString["bid"]);
            float tprize =(float)Convert.ToDouble(Request.QueryString["pri"]);
            if (tprize > 0)
            {
                fill1(tprize,bid);

            }
            else
            {
                fill();
            }
        }
       
      

    }
    public void fill()
    {
        
        trans_amount.InnerText = "Rs " + Session["prize"];
    }
    public void fill1(float p ,int bid)
    {
        Session["prize"] = p;
        Session["bid"] = bid;
        trans_amount.InnerText = "Rs " + Session["prize"];
    }
}
