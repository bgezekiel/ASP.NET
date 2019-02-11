using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/*
 * Class:OOSD fall 2 threaded project 
 * This is the packages DB class that contains all the objects and methods used in the 
 * HTML webpage to connect with database and use
 * 
 * Author: Eugenia Chiu
 * Date: Feb 2019
 * Commentor: Eugenia Chiu
 **/

namespace Website_Project_2.App_Code
{
    //set class to be dataobject so html GUI wizard can find and use
    [DataObject(true)] 
    public static class PackageDB
    {
        //setup connection string ("ConnectionString" is pulled from web.config file)
        private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings
                ["ConnectionString"].ConnectionString;
        }

        //set data object to select type
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Package> GetPackages(int packID)
        {
            List<Package> pack = new List<Package>(); //make empty list
            Package p;//set new variable p as a new package
            string sql = "SELECT PackageId, PkgName, PkgStartDate, PkgEndDate, PkgDesc FROM Packages WHERE PackageId = @PackageId";

            using (SqlConnection con = new SqlConnection(GetConnectionString())) //using sql connection
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))//using sql connection and string, make command
                {
                    cmd.Parameters.AddWithValue("@PackageId", packID); //protect against sql injection
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read()) //while there is data, read and add to empty list
                    {
                        p = new Package();
                        p.PackageId = (int)reader["PackageId"];
                        p.PkgName = reader["PkgName"].ToString();
                        p.PkgStartDate = (DateTime)reader["PkgStartDate"];
                        p.PkgEndDate = (DateTime)reader["PkgEndDate"];
                        p.PkgDesc = reader["PkgDesc"].ToString();
                        p.PkgBasePrice = (decimal)reader["PkgBasePrice"];

                        pack.Add(p);
                    }
                    reader.Close(); //close reader once done
                }
            }
            return pack;
        }

        //make data object for selecting booking details
        [DataObjectMethod(DataObjectMethodType.Select)]

        //take in customer id from session
        public static List<Bookings> GetNewBookings(int custid)
        {
            List<Bookings> booking = new List<Bookings>();
            Bookings b;
            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                con.Open();
				using (SqlCommand cmd = new SqlCommand("SELECT Bookings.BookingId,BookingDetails.Destination FROM Bookings JOIN BookingDetails ON Bookings.BookingId = BookingDetails.BookingId WHERE CustomerId = @cid;", con)) 
					{
						cmd.Parameters.AddWithValue("@cid", custid);
						SqlDataReader reader = cmd.ExecuteReader();
                        
                    //get customer bookings with the session customer id
						while (reader.Read()) {
							b = new Bookings();
							b.BookingId = (int)reader["BookingId"];
							b.BookingNo = reader["Destination"].ToString();

							booking.Add(b);
					}
					reader.Close();
				}

            }

            return booking;
        }

        //empty default one for testing purposes, is not bound to object in html
        //use this to test html page with no customer data
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Bookings> GetBookings() //customerId needs to be passed from session as parameter
        {
            List<Bookings> booking = new List<Bookings>();
            Bookings b;

            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT BookingId, BookingNo FROM Bookings " +
                    "order by len(BookingNo), BookingNo;", con))
                {
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        b = new Bookings();
                        b.BookingId = (int)reader["BookingId"];
                        b.BookingNo = reader["BookingNo"].ToString();

                        booking.Add(b);
                    }
                    reader.Close();
                }
            }

            return booking;
        }

        //get booking details method from the booking selected in dropdown
        [DataObjectMethod(DataObjectMethodType.Select)]

        public static List<BookingDetails> GetBookingDetails(int packageid)
        {
            List<BookingDetails> bdList = new List<BookingDetails>();
            BookingDetails bd;
            string sql = "SELECT BookingDetailId, ItineraryNo, TripStart, TripEnd," +
                           " Destination, BasePrice FROM BookingDetails WHERE BookingId = @pid;";
            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    con.Open();
                    cmd.Parameters.AddWithValue("@pid", packageid);
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
                        bd = new BookingDetails();
                        bd.BookingDetailId = (int)reader["BookingDetailId"];
                        bd.ItineraryNo = (double)reader["ItineraryNo"];
                        bd.TripStart = (DateTime)reader["TripStart"];
                        bd.TripEnd = (DateTime)reader["TripEnd"];
                        bd.Destination = reader["Destination"].ToString();
                        bd.BasePrice = Convert.ToDouble(reader["BasePrice"]);

                        bdList.Add(bd);
                    }
                    reader.Close();
                }
            }
            return bdList;
        }

    }
}