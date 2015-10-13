using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PhysicalManagementSystemApp.BLL;
using PhysicalManagementSystemApp.Model;

namespace PhysicalManagementSystemApp.UI
{
    public partial class Application : System.Web.UI.Page
    {
        private Label faciLabel;
          ApplicationManager manager=new ApplicationManager();
          BookingManager bManager=new BookingManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            CountApp();
          
          
            if (!IsPostBack)
            {
                CountApp();
               
                PopulateGridView(); 
            }
          
   

        }
      
        BookingHistoryByCat category=new BookingHistoryByCat();
        
        public void PopulateGridView()
        {

            List<Model.Application> gridList = manager.GetAllAppliction();
            bool isFull = gridList.Any();

            if (isFull)
            {

                appGridView.DataSource = manager.GetAllAppliction();
                appGridView.DataBind();


                int sl = 1;

                for (int i = 0; i < appGridView.Rows.Count; i++)
                {

                    Label l = (Label) appGridView.Rows[i].FindControl("Label2");

                    l.Text = sl.ToString();
                    sl++;


                }
            }
            else
            {
                nullMsgLabel.Text = "There is no new application";
                remarkTextBox.Visible = false;
                ApprButton.Visible = false;
                rejectButton.Visible = false;
                remarkLabel.Text = "";

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
             
        }

       

        protected void appGridView_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            detailsLabel.Visible = true;
            int r = e.NewSelectedIndex;
            Label l = (Label)appGridView.Rows[r].FindControl("Label4");
            headerlabel.Visible = true;
            headerlabel.Text = "Application Details";
            detailsLabel.Text = l.Text;
           
        }

        protected void catDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }

        protected void ApprButton_Click(object sender, EventArgs e)
        {
            Model.Application newApplication=new Model.Application();

            

            countLabel.Text=Convert.ToString(bManager.CountNewApp());
            newApplication.Status = "Approved";//Application Status
            
            newApplication.AppId = Label7.Text;
            newApplication.BookingStatus = "Pending";//Booking Status
            newApplication.UserName = Convert.ToString(Session["UserName"]);
            newApplication.prrocessingTime= DateTime.Now;
            newApplication.Remark = remarkTextBox.Text;
            newApplication.FaciId = facilityLabel.Text;
            int test=  manager.UpdateStatus(newApplication);
            if (test > 0)
            {
                notificLabel.Text = "Application Approved succesfully";
            }
            else
            {
                notificLabel.Text = "Application Approving failed";
            }


            PopulateGridView(); 
            
            
        }

        protected void appRadioButton_CheckedChanged(object sender, EventArgs e)
        {
            foreach (GridViewRow oldrow in appGridView.Rows)
            {
                ((RadioButton)oldrow.FindControl("appRadioButton")).Checked = false;
            }
            RadioButton rb = (RadioButton)sender;
            GridViewRow row = (GridViewRow)rb.NamingContainer;
            ((RadioButton)row.FindControl("appRadioButton")).Checked = true;
            int rowindex = row.RowIndex;
            for (int i = 0; i < appGridView.Rows.Count; i++)
            {
                RadioButton r=(RadioButton)appGridView.Rows[i].FindControl("appRadioButton");
                if(r.Checked==true)
                {
                    Label l = (Label)appGridView.Rows[i].FindControl("Label3");
                    Label7.Text = l.Text;
                    Label label = (Label) appGridView.Rows[i].FindControl("facIDLabel");
                    facilityLabel.Text = label.Text;


                    
                    break;
                }
            }
        }

        protected void rejButton_Click(object sender, EventArgs e)
        {

        }

        protected void rejectButton_Click(object sender, EventArgs e)
        {
            Model.Application newApplication = new Model.Application();



            countLabel.Text = Convert.ToString(bManager.CountNewApp());
            newApplication.Status = "Rejected";//Application Status

            newApplication.AppId = Label7.Text;
            newApplication.BookingStatus = "Rejected";//Booking Status
            newApplication.UserName = Convert.ToString(Session["UserName"]);
            newApplication.prrocessingTime = DateTime.Now;
            newApplication.Remark = remarkTextBox.Text;
            newApplication.FaciId = facilityLabel.Text;
            int test = manager.UpdateStatus(newApplication);
            if (test > 0)
            {
                notificLabel.Text = "Application Rejected succesfully";
            }
            else
            {
                notificLabel.Text = "Application Rejecting failed";
            }


            PopulateGridView(); 
        }

        protected void dateTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        public void CountApp()
        {
            headerlabel.Visible = false;
            countLabel.Text = Convert.ToString(bManager.CountNewApp());
            
        }

        }
    }
