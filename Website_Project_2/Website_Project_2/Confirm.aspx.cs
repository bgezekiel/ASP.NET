using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_Project_2
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayRegistration();
        }

        private void DisplayRegistration()
        {
            Customer customer = (Customer)Session["Customer"];

            lblFirstName.Text = customer.CustFirstName.ToString();
            lblLastName.Text = customer.CustLastName.ToString();
            lblAddress.Text = customer.CustAddress.ToString();
            lblCity.Text = customer.CustCity.ToString();
            lblProvince.Text = customer.CustProv.ToString();
            lblPostal.Text = customer.CustPost.ToString();
            lblCountry.Text = customer.CustCountry.ToString();
            lblHome.Text = customer.CustHomePhone.ToString();
            lblBusiness.Text = customer.CustBusPhone.ToString();
            lblEmail.Text = customer.CustEmail.ToString();
            lblUsername.Text = customer.CustUsername.ToString();
            lblPassword.Text = customer.CustPassword.ToString();

        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            lblMessage.Text = "Thank you for your Registration.<br />" +
                             "PLease log in at the login page";
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {

        }
    }
}

