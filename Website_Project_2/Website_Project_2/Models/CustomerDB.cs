using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Website_Project_2.Models
{
    [DataObject(true)]
    public static class CustomerDB
    {
        private static string GetConnectionString()
        {
            return ConfigurationManager.ConnectionStrings
                ["ConnectionString"].ConnectionString;
        }

        [DataObjectMethod(DataObjectMethodType.Insert)]
        public static int AddCustomer(Customer cust)
        {
            int custID = 0;
            SqlConnection connection = new SqlConnection(GetConnectionString());

            string insertString = "insert into Customers " +
                                  "(CustFirstName, CustLastName, CustAddress, CustCity, CustProv, CustPostal, CustCountry, CustHomePhone, CustBusPhone, CustEmail, CustUsername, CustPassword, CustSalt) " +
                                  "values(@CustFirstName, @CustLastName, @CustAddress, @CustCity, @CustProv, @CustPostal, @CustCountry, @CustHomePhone, @CustBusPhone, @CustEmail, @CustUserName, @CustPassword, @CustSalt)";
            SqlCommand insertCommand = new SqlCommand(insertString, connection);



            insertCommand.Parameters.AddWithValue("@CustFirstName", cust.CustFirstName);
            insertCommand.Parameters.AddWithValue("@CustLastName", cust.CustLastName);
            insertCommand.Parameters.AddWithValue("@CustAddress", cust.CustAddress);
            insertCommand.Parameters.AddWithValue("@CustCity", cust.CustCity);
            insertCommand.Parameters.AddWithValue("@CustProv", cust.CustProv);
            insertCommand.Parameters.AddWithValue("@CustPostal", cust.CustPost);
            insertCommand.Parameters.AddWithValue("@CustCountry", cust.CustCountry);
            insertCommand.Parameters.AddWithValue("@CustHomePhone", cust.CustHomePhone);
            insertCommand.Parameters.AddWithValue("@CustBusPhone", cust.CustBusPhone);
            insertCommand.Parameters.AddWithValue("@CustEmail", cust.CustEmail);
            insertCommand.Parameters.AddWithValue("@CustUsername", cust.CustUsername);
            insertCommand.Parameters.AddWithValue("@CustPassword", cust.CustPasswordHash);
			insertCommand.Parameters.AddWithValue("@CustSalt", cust.CustPasswordSalt);

            try
            {
                
                connection.Open();

                // execute the statement
                int i = insertCommand.ExecuteNonQuery();
                if (i == 1) // one record inserted
                {
                    // retrieve customer id from the added record
                    string selectString = "select ident_current('Customers') " +
                                          "from Customers";
                    SqlCommand selectCommand = new SqlCommand(selectString, connection);
                    custID = Convert.ToInt32(selectCommand.ExecuteScalar());

                }
                
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return custID;
        }

		[DataObjectMethod(DataObjectMethodType.Update)]
        public static bool UpdateCustomer(Customer customer)
        {
            bool successful = false;
            int count = 0;
            SqlConnection connection = new SqlConnection(GetConnectionString());

            string updateString = "update Customers set " +
                                  "CustFirstName = @NewCustFirstName, " +
                                  "CustLastName = @NewCustLasrName, " +
                                  "CustAddress = @NewCustAddress, " +
                                  "CustCity = @NewCustCity " +
                                  "CustProv = @NewCustProv " +
                                  "CustCountry = @NewCustCountry " +
                                  "CustHomePhone = @NewCustHomePhone " +
                                  "CustBusPhone = @NewCustBusPhone " +
                                  "CustEmail = @NewCustEmail " +
                                  "CustUserName = @NewCustUsername " +
                                  "CustPassword = @NewCustPassword";
            SqlCommand updateCommand = new SqlCommand(updateString, connection);
            updateCommand.Parameters.AddWithValue("@CustFirstName", customer.CustFirstName);
            updateCommand.Parameters.AddWithValue("@CustLastName", customer.CustLastName);
            updateCommand.Parameters.AddWithValue("@CustAddress", customer.CustAddress);
            updateCommand.Parameters.AddWithValue("@CustCity", customer.CustCity);
            updateCommand.Parameters.AddWithValue("@CustProv", customer.CustProv);
            updateCommand.Parameters.AddWithValue("@CustCountry", customer.CustCountry);
            updateCommand.Parameters.AddWithValue("@NewCustHomePhone", customer.CustHomePhone);
            updateCommand.Parameters.AddWithValue("@NewCustBusPhone", customer.CustLastName);
            updateCommand.Parameters.AddWithValue("@NewCustEmail", customer.CustEmail);
            updateCommand.Parameters.AddWithValue("@NewCustUsername", customer.CustUsername);
            updateCommand.Parameters.AddWithValue("@CustEmail", customer.CustPasswordHash);

            try
            {
                connection.Open();

                count = updateCommand.ExecuteNonQuery();
                if (count == 1)
                    successful = true;

            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                connection.Close();
            }
            return successful;

        }
    }
}