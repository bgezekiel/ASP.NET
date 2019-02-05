using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_Project_2
{
    //Mark branch
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if (Session["Customer"] != null)
                {
                    DisplayCustomer();
                }
                    
            }

        }
        private void DisplayCustomer()
        {
            Customer customer = (Customer)Session["Customer"];

            txtFirstName.Text = customer.CustFirstName.ToString();
            txtLastName.Text = customer.CustLastName.ToString();
            txtAddress.Text = customer.CustAddress.ToString();
            txtCity.Text = customer.CustCity.ToString();
            ddlProvince.SelectedValue = customer.CustProv;
            txtPostalCode.Text = customer.CustPost.ToString();
            txtCountry.Text = customer.CustCountry.ToString();
            txtPhone.Text = customer.CustHomePhone.ToString();
            txtBusinessPhone.Text = customer.CustBusPhone.ToString();

            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Customer customer = new Customer();

                customer.CustFirstName = Convert.ToString(txtFirstName.Text);
                customer.CustLastName = Convert.ToString(txtLastName.Text);
                customer.CustAddress = Convert.ToString(txtAddress.Text);
                customer.CustCity = Convert.ToString(txtCity.Text);
                customer.CustProv = Convert.ToString(ddlProvince.Text);
                customer.CustPost = Convert.ToString(txtPostalCode.Text);
                customer.CustCountry = Convert.ToString(txtCountry.Text);
                customer.CustHomePhone = Convert.ToString(txtPhone.Text);
                customer.CustBusPhone = Convert.ToString(txtBusinessPhone.Text);

                Session["Customer"] = customer;
                Response.Redirect("Confirm.aspx");
            }

            
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtAddress.Text = "";
            txtCity.Text = "";
            ddlProvince.SelectedIndex = 0;
            txtPostalCode.Text = "";
            txtCountry.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtBusinessPhone.Text = "";
        }
    }
}