using System;
using System.Collections.Generic;

namespace OnlineEventManagementSystem
{

    public  class UserManager
    {
        public string userID { get; set; }
        public string userMailId { get; set; }
        public string userPassword { get; set; }
        public string userFirstName { get; set; }
        public string userLastName { get; set; }
        public long userMobileNumber { get; set; }
        public DateTime userDOB { get; set; }
        public string userGender { get; set; }
        public void Signup()
        {

        }
        public void Login(string mailId, string password)
        {

        }
        //public bool VerifyMailId(string mailId)
        //{
        //    bool isExist = true;
        //    foreach (var user in userDatabase)
        //    {
        //        if (user.userMailId.Equals(mailId))
        //        {
        //            return false;
        //        }
        //    }
        //    return isExist;
        //}
        //public bool ValidateAccount(string mailId, string password)
        //{
        //    bool isMatched = false;
        //    foreach (var user in userDatabase)
        //    {
        //        if (user.userMailId.Equals(mailId) && user.userPassword.Equals(password))
        //        {
        //            isMatched = true;
        //            break;
        //        }
        //    }
        //    return isMatched;
        //}
        public string GenerateUserID(string name, long mobileNumber)
        {
            string userId = "C" + name.Substring(0, 3).ToUpper() + mobileNumber.ToString().Substring(0, 4);
            return userId;
        }
    }

}
