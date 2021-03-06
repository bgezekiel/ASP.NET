﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/*
 * Class:OOSD fall 2 threaded project 
 * This is the get customer details class with all the getters and setters
 * 
 * Author: Mark Wessley
 * Date: Feb 2019
 * Commentor: Eugenia Chiu
 * 
 **/

namespace Website_Project_2
{
    public class Customer
    {
        public Customer() { }

        public int CustomerID { get; set; } 

        public string CustFirstName { get; set; }

        public string CustLastName { get; set; }

        public string CustAddress { get; set; }

        public string CustCity { get; set; }

        public string CustProv { get; set; }

        public string CustPost { get; set; }

        public string CustCountry { get; set; }

        public string CustEmail { get; set; }

        public string CustHomePhone { get; set; }

        public string CustBusPhone { get; set; }

        public string CustUsername { get; set; }

        public string CustPasswordHash { get; set; }

		public string CustPasswordSalt { get; set; }
 
    }
}