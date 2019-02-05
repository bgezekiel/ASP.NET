using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Website_Project_2.App_Code
{
    public class BookingDetails
    {
        public BookingDetails()
        {

        }

        public int BookingDetailId { get; set; }
        public double ItineraryNo { get; set; }
        public DateTime TripStart { get; set; }
        public DateTime TripEnd { get; set; }
        public string Description { get; set; }
        public string Destination { get; set; }
        public double BasePrice { get; set; }
        public double AgencyCommission { get; set; }
        public int BookingId { get; set; }
        public string RegionId { get; set; }
        public string ClassId { get; set; }
        public string FeeId { get; set; }
        public int ProductSupplierId { get; set; }


    }
}