using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PhysicalManagementSystemApp.BLL;
using PhysicalManagementSystemApp.Model;

namespace PhysicalManagementSystemApp.UI
{
    public partial class AllApplication : System.Web.UI.Page
    {
        AllApplicationManager manager = new AllApplicationManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridView();
            }
        }

        BookingHistoryByCat category = new BookingHistoryByCat();

        public void PopulateGridView()
        {
            List<Model.Application> gridList = manager.ViewAllAppliction();
            int isFull = gridList.Count;

            if (isFull>0)
            {

                AllAppGridView.DataSource = manager.ViewAllAppliction();
                AllAppGridView.DataBind();
                for (int i = 0; i < AllAppGridView.Rows.Count; i++)
                {
                    Label l1 = (Label)AllAppGridView.Rows[i].FindControl("Label4");
                    string s = l1.Text;
                    if (s.Length > 10)
                        s = s.Substring(0, 10);
                    l1.Text = s;
                    Label l2 = (Label)AllAppGridView.Rows[i].FindControl("Label5");
                    s = l2.Text;
                    if (s.Length > 10)
                        s = s.Substring(0, 10);
                    l2.Text = s;
                }

                int sl = 1;

                for (int i = 0; i < AllAppGridView.Rows.Count; i++)
                {

                    Label l = (Label) AllAppGridView.Rows[i].FindControl("Label1");

                    l.Text = sl.ToString();
                    sl++;

                }
            }
            else
            {
                nulMsgLabel.Text = "There is no applications";
            }
        }      

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }



        protected void appGridView_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            //detailLabel.Visible = true;
            //int r = e.NewSelectedIndex;
            //Label l = (Label)AllAppGridView.Rows[r].FindControl("Label4");

            //detailLabel.Text = l.Text;

        }

        protected void AllAppGridView_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            detailLabel.Visible = true;
            int r = e.NewSelectedIndex;
            Label l = (Label)AllAppGridView.Rows[r].FindControl("Label3");
            headerLabel.Text = "Application Details";
            detailLabel.Text = l.Text;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            detailLabel.Visible = true;
        }

        protected void AllAppGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
        }

       

    }
}