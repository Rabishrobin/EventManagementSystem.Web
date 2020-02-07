using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEventManagementSystem.Website
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit(object sender, EventArgs e)
        {
            
            UserManager userManager = new UserManager();
            userManager.userID = userManager.GenerateUserID(txtFirstName.Text, long.Parse(txtMobileNumber.Text));
            userManager.userFirstName = txtFirstName.Text;
            userManager.userLastName = txtLastName.Text;
            userManager.userMailId = txtEmail.Text;
            userManager.userMobileNumber = long.Parse(txtMobileNumber.Text);
            userManager.userDOB = DateTime.Parse(txtDOB.Text).Date;
            userManager.userGender = rbGender.Text;
            UserRepository userRepository = new UserRepository();
            UserRepository.InsertUser(userManager);
            Response.Redirect("CustomerProfile.aspx");
        }
        
    }
} 