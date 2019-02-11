using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Website_Project_2.App_Code;

/*
 * Class:OOSD Threaded project 2
 * This is the code behind the HTML bookings and booking details page. This allows users to view and see
 * their bookings and booking details
 * Author: Eugenia Chiu
 * Date: Feb 2019
 * Commentor: Eugenia Chiu
 * **/

namespace Website_Project_2
{
    public partial class TripDetails : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {

			
        }

        protected void GridLoaded(object sender, EventArgs e)
        {
            if (DropDownList1.Items.Count == 0)
            {
                DropDownList1.Visible = false;
                GridView2.Visible = false;
                Label1.Visible = false;
                Label2.Visible = false;
                Label3.Visible = false;
                txtPaymentOutstanding.Visible = false;
                txtPaymentReceieved.Visible = false;
                txtTotal.Visible = false;
                BookingsLabel.Visible = false;
                LblHidden.Visible = true;
                DetailsLabel.Visible = false;
                return;
            }


            double count = 0;

            foreach (GridViewRow gvr in GridView2.Rows)
            {

                if (!string.IsNullOrEmpty(gvr.Cells[5].Text))
                {
                    count += Convert.ToDouble(gvr.Cells[5].Text.Replace("$", "").Replace(",", ""));
                }
            }



            txtTotal.Text = count.ToString("c");
            txtPaymentReceieved.Text = "$0.00";
            txtPaymentOutstanding.Text = txtTotal.Text;


        }
	}
}