using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineEventManagementSystem.Website
{
    public partial class CustomerProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void EventList(object sender, EventArgs e)
        {
            SqlConnection connection = null;
            UserRepository.GetConnection(out connection);
            connection.Open();
            SqlCommand command = new SqlCommand("Select * from Events");
            EventDetails.DataSource = command.ExecuteReader();
            EventDetails.DataBind();
            connection.Close();
        }
    }
}