using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/*
 * Class:OOSD Threaded project 2
 * 
 * This is the login page background code
 * 
 * Author: Hayden Belanger
 * Date: Feb 2019
 * Commentor: Eugenia Chiu
 * **/

namespace Website_Project_2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if page has postback and was reloaded, display incorrect text
			if (IsPostBack) {
				LblIncorrect.Visible = true;
			}

            
        }

        public void Login(object sender, EventArgs e) {


			string hash = null;
			string salt = null;
			int id = 0;

			using(SqlConnection con = new SqlConnection(GetConnectionString())) {
				con.Open();
				using(SqlCommand cmd = new SqlCommand("SELECT CustPassword, CustSalt, CustomerId FROM Customers WHERE CustUsername = @uname;", con)) {
					cmd.Parameters.AddWithValue("@uname", FieldUsername.Text);

					SqlDataReader sdr = cmd.ExecuteReader();

					while (sdr.Read()) { //while there is data

						if(!(sdr.IsDBNull(0) || sdr.IsDBNull(1))) { //if the input fields are not null
							hash = sdr.GetString(0); //insert data into variables
							salt = sdr.GetString(1);
							id = sdr.GetInt32(2);
						}
						
					}
				}
			}

            //if password and user is hashed and salted and valid, go to tripdetails page
			if(!((hash == null || salt == null) || SHA512Check(FieldPassword.Text, hash, salt) == false)) {
				Session["LoggedInId"] = id;
				Response.Redirect("TripDetails.aspx");
				return;
			}

		}

        //connection string method
		private static string GetConnectionString() {
			return ConfigurationManager.ConnectionStrings
				["ConnectionString"].ConnectionString;

		}

        //check if user and pass is hashed and salted. 
		public static bool SHA512Check(string plaintext, string oldhash, string salt) {

			plaintext = plaintext + salt;
			string nh;
			var bytes = System.Text.Encoding.UTF8.GetBytes(plaintext);
			using (var hash = System.Security.Cryptography.SHA512.Create()) {
				var hashed = hash.ComputeHash(bytes);

				var hashedInputStringBuilder = new System.Text.StringBuilder(128);
				foreach (var b in hashed)
					hashedInputStringBuilder.Append(b.ToString("X2"));
				nh = hashedInputStringBuilder.ToString();
			}

			return nh == oldhash;


		}

        //if signup button is clicked, redirect to register page
        protected void btnSignup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}