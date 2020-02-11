using System.Data;
using OnlineEventManagementSystem.DAL;

namespace OnlineEventManagementSystem.BL
{
    public class EventBL
    {
        public static DataTable DisplayEvent()
        {
            return AdminRepository.DisplayEvent();
        }
        public static void DeleteEvent(string eventID)
        {
            AdminRepository.DeleteEvent(eventID);
        }
        public static void InsertEvent(string eventID, string eventName, string eventType)
        {
            AdminRepository.InsertEvent(eventID, eventName, eventType);
        }
    }
}
