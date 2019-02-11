using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
 * Class:OOSD fall 2 threaded project 
 * This is the get packages class with all the getters and setters
 * 
 * Author: Eugenia Chiu
 * Date: Feb 2019
 * Commentor: Eugenia Chiu
 **/

namespace Website_Project_2.App_Code
{
    public class Package
    {
        public Package()
        {

        }
        public int PackageId { get; set; }
        public string PkgName { get; set; }
        public DateTime PkgStartDate { get; set; }
        public DateTime PkgEndDate { get; set; }
        public string PkgDesc { get; set; }
        public decimal PkgBasePrice { get; set; }
        public decimal PkgAgencyCommission { get; set; }

    }
}