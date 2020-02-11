using System;
using System.Web.UI.WebControls;
using System.Data;
using OnlineEventManagementSystem.BL;

namespace OnlineEventManagementSystem.Website
{
    public partial class EventManipulation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindData();
        }

        void BindData()
        {
            DataTable table = EventBL.DisplayEvent();
            gvEvent.DataSource = table;
            gvEvent.DataBind();
        }

        protected void gvEvent_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvEvent.EditIndex = -1;
            BindData();
        }

        protected void gvEvent_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string eventID = gvEvent.DataKeys[e.RowIndex].Values["EventID"].ToString();
            EventBL.DeleteEvent(eventID);
            BindData();
        }

        protected void gvEvent_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvEvent.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void InsertEvent(object sender, EventArgs e)
        {
            string eventID = (gvEvent.FooterRow.FindControl("txtEventID") as TextBox).Text.Trim();
            string eventName = (gvEvent.FooterRow.FindControl("txtEventName") as TextBox).Text.Trim();
            string eventType = (gvEvent.FooterRow.FindControl("rbEventType") as RadioButtonList).Text.Trim();
            EventBL.InsertEvent(eventID, eventName, eventType);
            BindData();

        }

        protected void gvEvent_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}