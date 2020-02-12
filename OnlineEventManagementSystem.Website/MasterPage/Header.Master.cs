using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEventManagementSystem.Website
{
    public partial class Top : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignupClick(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void SigninClick(object sender, EventArgs e)
        {
            Response.Redirect("Signin.aspx");
        }

        protected void HomeClick(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}