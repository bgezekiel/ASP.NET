using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Website_Project_2.App_Code;

namespace Website_Project_2
{
    public partial class TripDetails : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Customer customer = (Customer)Session["Customer"];
        }

    }
}