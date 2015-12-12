using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PhysicalManagementSystemApp.BLL;
using PhysicalManagementSystemApp.Model;

namespace PhysicalManagementSystemApp.UI
{
    public partial class BookHistoryByCat : System.Web.UI.Page
    {
        BookingManager manager=new BookingManager();
        BookingHistoryByCat category=new BookingHistoryByCat();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                categoryDropDownList.Items.Add("Select");
                PopulateDropdownList();
                
                // CategoryLabel.Visible = true;
                detailsGridView.Columns[2].Visible = true;
                detailsGridView.Columns[3].Visible = true;
                detailsGridView.DataSource = manager.PopulateGridviewByAll();
                string ss = "test:";
                detailsGridView.DataBind();
                for (int i = 0; i < detailsGridView.Rows.Count; i++)
                {
                    GridViewRow row = detailsGridView.Rows[i];
                    Label label1 = (Label)detailsGridView.Rows[i].FindControl("Label1");

                    label1.Text = label1.Text.Substring(0, 10);

                    Label l1 = (Label)detailsGridView.Rows[i].FindControl("Label2");
                    string s = l1.Text;
                    if (s.Length > 10)
                        s = s.Substring(0, 10);
                    l1.Text = s;
                    Label l2 = (Label)detailsGridView.Rows[i].FindControl("Label3");
                    s = l2.Text;
                    if (s.Length > 10)
                        s = s.Substring(0, 10);
                    l2.Text = s;
                    
                }
                
                Label2.Text = ss;
            }

        }

        public void PopulateDropdownList()
        {
         
            categoryDropDownList.DataSource = manager.PopulateDropDownlist();
            categoryDropDownList.DataTextField = "Category";
            categoryDropDownList.DataValueField = "Category";
            categoryDropDownList.DataBind();
        }

        protected void categoryDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            PopulateNameDropDownList();
           
        }

        public void PopulateNameDropDownList()
        {
        
             category.Category = categoryDropDownList.SelectedItem.ToString();

            nameDropDownList.DataSource = manager.PopulateNameDropDownlist(category.Category);
            nameDropDownList.DataTextField = "CatName";
            nameDropDownList.DataValueField = "CatName";
            nameDropDownList.DataBind();
        }

        protected void nameDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            detailsGridView.Visible = true;
           
            detailsGridView.Columns[2].Visible = false;
            detailsGridView.Columns[3].Visible = false;
            PopulateGridView();

        }

        public void PopulateGridView()
        {
            category.CatName = nameDropDownList.SelectedItem.ToString();
            category.Category = categoryDropDownList.SelectedItem.ToString();

            detailsGridView.DataSource = manager.PopulateGridview(category.Category, category.CatName);
            detailsGridView.DataBind();


        }

        protected void allLinkButton_Click(object sender, EventArgs e)
        {
            categoryDropDownList.SelectedIndex = 0;
            nameDropDownList.SelectedIndex = -1;
           // CategoryLabel.Visible = true;
            detailsGridView.Columns[2].Visible = true;
            detailsGridView.Columns[3].Visible = true;
            detailsGridView.DataSource = manager.PopulateGridviewByAll();
            detailsGridView.DataBind();
        }

        protected void detailsGridView_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void detailsGridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            var row = e.Row;
            if (row.RowType == DataControlRowType.DataRow)
            {
                // Just change the index of the cell 
                var description = row.Cells[0].Text;
                if (description.Length > 100)
                {
                    row.Cells[0].Text = description.Substring(0, 10) ;
                }
            }
        }

    }
}