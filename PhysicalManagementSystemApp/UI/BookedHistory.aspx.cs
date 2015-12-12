using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PhysicalManagementSystemApp.BLL;

namespace PhysicalManagementSystemApp.UI
{
    public partial class BookedHistory : System.Web.UI.Page
    {
        BookingManager manager = new BookingManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridView();
            }
        }
        public void PopulateGridView()
        {
            
            bookedGridView.DataSource = manager.PopulateGridview();
            bookedGridView.DataBind();
            for (int i = 0; i < bookedGridView.Rows.Count; i++)
            {
                Label l1 = (Label)bookedGridView.Rows[i].FindControl("Label1");
                string s = l1.Text;
                if (s.Length > 10)
                    s = s.Substring(0, 10);
                l1.Text = s;
                Label l2 = (Label)bookedGridView.Rows[i].FindControl("Label2");
                s = l2.Text;
                if (s.Length > 10)
                    s = s.Substring(0, 10);
                l2.Text = s;
            }
        }

        protected void bookedGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            bookedGridView.DataSource = manager.PopulateGridview();
            bookedGridView.PageIndex = e.NewPageIndex;
            bookedGridView.DataBind();
           
        }

        protected void bookedGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}