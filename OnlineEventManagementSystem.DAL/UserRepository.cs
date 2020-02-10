using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace OnlineEventManagementSystem
{
    public class UserRepository
    {
        public static void GetConnection(out SqlConnection sqlConnection)
        {
            string DBConnection = ConfigurationManager.ConnectionStrings["EventManagement"].ConnectionString;
            sqlConnection = new SqlConnection(DBConnection);
        }
        public static void RetriveMailId()
        {
            string DBConnection = ConfigurationManager.ConnectionStrings["EventManagement"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(DBConnection))
            {
                connection.Open();
                string procedureString = "SP_Retrive_MailID";        
                SqlCommand sqlCommand = new SqlCommand(procedureString, connection);
                sqlCommand.CommandType = CommandType.StoredProcedure;
                SqlDataReader sdr = sqlCommand.ExecuteReader();
                while (sdr.Read())
                {
                    UserManager.CustomerMailId.Add((string)sdr["MailID"]);
                }
                sqlCommand.Dispose();
            }
        }
        public static void InsertUser(UserManager userManager)
        {
            string DBConnection = ConfigurationManager.ConnectionStrings["EventManagement"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(DBConnection))
            {
                connection.Open();
                string procedureString = "SP_Insert_User";        //Stored procedure to insert user
                SqlCommand sqlCommand = new SqlCommand(procedureString, connection);
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Parameters.Add(new SqlParameter("@ID", userManager.userID));                         //Passing ID to the stored procedure
                sqlCommand.Parameters.Add(new SqlParameter("@MailID", userManager.userMailId));                 //Passing mail id to the stored procedure
                sqlCommand.Parameters.Add(new SqlParameter("@Password", userManager.userPassword));             //Passing password to the stored procedure
                sqlCommand.Parameters.Add(new SqlParameter("@FirstName", userManager.userFirstName));           //Passing first name to the stored procedure
                sqlCommand.Parameters.Add(new SqlParameter("@LastName", userManager.userLastName));             //Passing last name to the stored procedure
                sqlCommand.Parameters.Add(new SqlParameter("@MobileNumber", userManager.userMobileNumber));     //Passing mobile number to the stored procedure
                sqlCommand.Parameters.Add(new SqlParameter("@DateOfBirth", userManager.userDOB));               //Passing dob to the stored procedure
                sqlCommand.Parameters.Add(new SqlParameter("@Gender", userManager.userGender));                 //Passing gender to the stored procedure
                sqlCommand.ExecuteNonQuery();
                sqlCommand.Dispose();
            }
        }
        //internal void DeleteUser(string id)
        //{
        //    connection.Open();
        //    string procedureString = "SP_Insert_Delete";                                    //Stored procedure to delete user
        //    SqlCommand sqlCommand = new SqlCommand(procedureString, connection);
        //    sqlCommand.Parameters.Add(new SqlParameter("@ID", id));                         //Passing ID to the stored procedure
        //    sqlCommand.ExecuteNonQuery();
        //    sqlCommand.Dispose();
        //    connection.Close();
        //}
        //internal void UpdateDetails(string id, int choice, dynamic updatingfield)
        //{

        //}
        //internal void DisplayUser()
        //{
        //    connection.Open();
        //    string procedureString = "Select * From UserAccountDetails";
        //    SqlCommand sqlCommand = new SqlCommand(procedureString, connection);
        //    // = sqlCommand.ExecuteReader();

        //    connection.Close();

        //}
    }
}
