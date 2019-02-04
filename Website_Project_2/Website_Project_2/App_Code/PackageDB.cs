using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Website_Project_2.App_Code
{
    [DataObject(true)] 
    public class PackageDB
    {
        private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings
                ["ConnectionString"].ConnectionString;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Package> GetPackages(int packID)
        {
            List<Package> pack = new List<Package>();
            Package p;
            string sql = "SELECT PackageId, PkgName, PkgStartDate, PkgEndDate, PkgDesc FROM Packages WHERE PackageId = @PackageId";

            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@PackageId", packID);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
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
                    reader.Close();
                }
            }
            return pack;
        }

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static List<Bookings> GetNewBookings()
        {
            List<Bookings> booking = new List<Bookings>();
            Bookings b;
            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT Bookings.BookingId,BookingDetails.Destination FROM Bookings JOIN BookingDetails ON Bookings.BookingId = BookingDetails.BookingId;", con)) {

                    SqlDataReader reader = cmd.ExecuteReader();

                    while (reader.Read())
                    {
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

        [DataObjectMethod(DataObjectMethodType.Select)]
        public static DataSet getTripBookings(int packageid)
        {
            string sql = "SELECT BookingDetailId, ItineraryNo, TripStart, TripEnd," +
                " Destination, BasePrice FROM BookingDetails WHERE BookingId = @pid;"; //add @sPackageID

            using (SqlConnection con = new SqlConnection(GetConnectionString()))
            {
                using (SqlCommand cmd = new SqlCommand(sql, con))
                {
                    cmd.Parameters.AddWithValue("@pid", packageid);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);
                    return ds;
                }
            }
        }
    }
}