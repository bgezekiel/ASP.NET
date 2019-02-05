using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Website_Project_2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

					while (sdr.Read()) {

						if(!(sdr.IsDBNull(0) || sdr.IsDBNull(1))) {
							hash = sdr.GetString(0);
							salt = sdr.GetString(1);
							id = sdr.GetInt32(2);
						}
						
					}
				}
			}

			if(!((hash == null || salt == null) || SHA512Check(FieldPassword.Text, hash, salt) == false)) {
				Session["LoggedInId"] = id;
				Response.Redirect("Main.aspx");
				return;
			}

			
		}

		private static string GetConnectionString() {
			return ConfigurationManager.ConnectionStrings
				["ConnectionString"].ConnectionString;

		}

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
	}
}