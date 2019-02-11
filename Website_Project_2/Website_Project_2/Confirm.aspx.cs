using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Website_Project_2.Models;

/*
 * Class:OOSD Threaded project 2
 * This is the code behind the HTML confirm page. Note: when webpage loads, a active session is created
 * and the confirm page uses the information from the registration page.
 * Author: Hayden Belanger
 * CoAuthor: Brandon Ezekiel
 * Date: Feb 2019
 * Commentor: Eugenia Chiu
 * **/

namespace Website_Project_2
{
   
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayRegistration(); //when page loads, display the registration from last page
        }

        private void DisplayRegistration()
        {
            //take infro from registration page and display as toString()
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

        }

        //confirmation method for button
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            int insert = 0;
            // new customer object and add to active session
            Customer customer = (Customer)Session["Customer"];

            insert = CustomerDB.AddCustomer(customer);

            if (insert == 1)
            {
                lblMessage.Text = "Thank you for your Registration.<br />" +
                                 "Please log in at the login page";
            }
            else
            {
                lblMessage.Text = "Thank you for your Registration.< br /> " +
                                 "Please log in at the login page";
            }
                

            Response.Redirect("login.aspx");
        }

        protected void btnModify_Click(object sender, EventArgs e)
        {

        }
    }
}

