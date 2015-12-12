using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PhysicalManagementSystemApp.BLL;
using PhysicalManagementSystemApp.Model;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;


namespace PhysicalManagementSystemApp.UI
{
    public partial class Booking : System.Web.UI.Page
    {
        BookingManager manager=new BookingManager();
        Model.Application newApplication=new Model.Application();
        Model.Booking newBooking=new Model.Booking();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulatePreBookingGridview();
            }
        }
    

        protected void showButton_Click(object sender, EventArgs e)
        {
           



        }
        protected void ShowEmail()
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["PhysicalFacilityConDB"].ConnectionString);
      
            SqlCommand  cmd = new SqlCommand("select distinct name,details from Details where type='Dept'", con);
            con.Open();
            SqlDataReader  dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            con.Close();
            GridView6.DataSource = dt;
            GridView6.DataBind();
        }

        protected void preBookingGridView_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
           // int r = e.NewSelectedIndex;
           // Label l = (Label)preBookingGridView.Rows[r].FindControl("idLabel");
           
            
           //IdLabel.Text = l.Text;
        }

        protected void preBookingGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void selectRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow oldrow in preBookingGridView.Rows)
            {
                ((RadioButton)oldrow.FindControl("selectRadioButton")).Checked = false;
            }
            RadioButton rb = (RadioButton)sender;
            GridViewRow row = (GridViewRow)rb.NamingContainer;
            ((RadioButton)row.FindControl("selectRadioButton")).Checked = true;
            int rowindex = row.RowIndex;
            for (int i = 0; i < preBookingGridView.Rows.Count; i++)
            {
                RadioButton r = (RadioButton)preBookingGridView.Rows[i].FindControl("selectRadioButton");
                if (r.Checked == true)
                {
                    Label l = (Label)preBookingGridView.Rows[i].FindControl("idLabel");
                    newApplication.AppId= l.Text;
                    Session["AppId"] = l.Text;
                    break;
                }
            }
            newApplication.AppId = IdLabel.Text;
            if (Session["AppId"] != null)

                PopulateApplicationGridView();

            else
                IdLabel.Text = "Please select Application ID";
            appDetailsGridView.Columns[6].Visible = false;
            if (appDetailsGridView.Rows.Count > 0)
            {
                confirmButton.Visible = true;
                ShowEmail();
            }
        }

        protected void displayButton_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow oldrow in appDetailsGridView.Rows)
            {
                CheckBox check = (CheckBox) oldrow.FindControl("addCheckBox");
                if (check != null && check.Checked)
                {
                      
                      newBooking.FaciID= oldrow.Cells[0].Text;
                      newBooking.TimeSlot = oldrow.Cells[3].Text;
                      newBooking.AppID = Session["AppId"].ToString();
                      string key = "B";

                      newBooking.BookID = key + GenerateBookingId(0, 999999);
                      newBooking.UserName = Session["UserName"].ToString();
                      newBooking.BookDate = DateTime.Now;
                      newBooking.BookStatus = "Booked";
                      int insert= manager.StoreBookingInformation(newBooking);                   
                    
                }
            }
            PopulateApplicationGridView();
            PopulatePreBookingGridview();



        }
        public int GenerateBookingId(int min, int max)
        {
      
            Random randoms = new Random();
            return randoms.Next(min, max);

        }

        public void PopulateApplicationGridView()
        {
            string appid1 = Session["AppID"].ToString();
            appDetailsGridView.DataSource = manager.GetApplicationDetails(appid1);
            appDetailsGridView.DataBind();
            for (int i = 0; i < appDetailsGridView.Rows.Count; i++)
            {
                GridViewRow row = appDetailsGridView.Rows[i];
                Label label1 = (Label)appDetailsGridView.Rows[i].FindControl("Label1");

                label1.Text = label1.Text.Substring(0, 10);

                Label l1 = (Label)appDetailsGridView.Rows[i].FindControl("Label2");
                string s = l1.Text;
                if (s.Length > 10)
                    s = s.Substring(0, 10);
                l1.Text = s;
                

            }
            
        }

        public void PopulatePreBookingGridview()
        {
            if (manager.GetAllPendingApplication() != null)
            {
                preBookingGridView.DataSource = manager.GetAllPendingApplication();
                preBookingGridView.DataBind();
                for (int i = 0; i < preBookingGridView.Rows.Count; i++)
                {
                    GridViewRow row = preBookingGridView.Rows[i];
                    Label label1 = (Label)preBookingGridView.Rows[i].FindControl("Label1");

                    label1.Text = label1.Text.Substring(0, 10);

                  }
            }
            else
            {
                nullMsgLabel.Text = "There is no pending application";
            }
        }
    }
}