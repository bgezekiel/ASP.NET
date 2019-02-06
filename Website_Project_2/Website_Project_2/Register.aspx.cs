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
        private string currentDate = DateTime.Today.ToShortDateString();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               if (Session["Customer"] != null)
               {
                    DisplayCustomer();
               }
               else
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
                    txtUsername.Text = "";
                    txtPass.Text = "";
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
            txtEmail.Text = customer.CustEmail.ToString();
            txtUsername.Text = customer.CustUsername.ToString();


        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                Customer customer = new Customer();

				string hash = SHA512Hash(txtPass.Text, out string salt);

                customer.CustFirstName = Convert.ToString(txtFirstName.Text);
                customer.CustLastName = Convert.ToString(txtLastName.Text);
                customer.CustAddress = Convert.ToString(txtAddress.Text);
                customer.CustCity = Convert.ToString(txtCity.Text);
                customer.CustProv = Convert.ToString(ddlProvince.Text);
                customer.CustPost = Convert.ToString(txtPostalCode.Text);
                customer.CustCountry = Convert.ToString(txtCountry.Text);
                customer.CustHomePhone = Convert.ToString(txtPhone.Text);
                customer.CustBusPhone = Convert.ToString(txtBusinessPhone.Text);
                customer.CustEmail = Convert.ToString(txtEmail.Text);
                customer.CustUsername = Convert.ToString(txtUsername.Text);
				customer.CustPasswordHash = hash;
				customer.CustPasswordSalt = salt;





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
            txtUsername.Text = "";
            txtPass.Text = "";
        }

		public static string SHA512Hash(string input, out string saltout) {

			Random random = new Random();
			string chars = "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz0123456789";
			char[] vals = new char[12];

			for (int i = 0; i < vals.Length; i++) {
				vals[i] = chars[random.Next(chars.Length)];
			}

			saltout = new string(vals);

			input = input + saltout;

			var bytes = System.Text.Encoding.UTF8.GetBytes(input);
			using (var hash = System.Security.Cryptography.SHA512.Create()) {
				var hashed = hash.ComputeHash(bytes);

				var hashedInputStringBuilder = new System.Text.StringBuilder(128);
				foreach (var b in hashed)
					hashedInputStringBuilder.Append(b.ToString("X2"));
				return hashedInputStringBuilder.ToString();
			}
		}
	}
}
