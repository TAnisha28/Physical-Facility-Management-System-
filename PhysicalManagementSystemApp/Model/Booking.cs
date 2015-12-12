using System;
using System.Collections.Generic;

using System.Web;

namespace PhysicalManagementSystemApp.Model
{
    public class Booking
    {
        //start change
        public int SlNo { get; set; }
        public string BookID { get; set; }
        public string AppID { get; set; }
        public string FaciID { get; set; }
        public string CatName { get; set; }
        public string subject { get; set; }
        public string OrgName { get; set; }
        public string TimeSlot { get; set; }
        public string StartDate { get; set; }
        public string EndDate { get; set; }
        public DateTime BookDate { get; set; }
        public string BookStatus { get; set; }

        public string UserName { get; set; }
        //end change



    }
}