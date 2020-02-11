using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEventManagementSystem.Website
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ManipulateEvent(object sender, EventArgs e)
        {
            Response.Redirect("EventManipulation.aspx");
        }
    }
}