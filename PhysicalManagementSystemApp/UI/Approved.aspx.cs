﻿using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PhysicalManagementSystemApp.DAL;

namespace PhysicalManagementSystemApp.UI
{
    public partial class Approved : System.Web.UI.Page
    {
        ApprovedManager manager=new ApprovedManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            PopulatedGridView();
        }
        public void PopulatedGridView()
        {

            if (manager.ApproveDetail() !=null)
            {



                ApprovedGridView.DataSource = manager.ApproveDetail();
                ApprovedGridView.DataBind();
                for (int i = 0; i < ApprovedGridView.Rows.Count; i++)
                {
                    Label l1 = (Label)ApprovedGridView.Rows[i].FindControl("Label3");
                    string s = l1.Text;
                    if (s.Length > 10)
                        s = s.Substring(0, 10);
                    l1.Text = s;
                    Label l2 = (Label)ApprovedGridView.Rows[i].FindControl("Label4");
                    s = l2.Text;
                    if (s.Length > 10)
                        s = s.Substring(0, 10);
                    l2.Text = s;
                }
                int sl = 1;

                for (int i = 0; i < ApprovedGridView.Rows.Count; i++)
                {

                    Label l = (Label) ApprovedGridView.Rows[i].FindControl("Label1");

                    l.Text = sl.ToString();
                    sl++;

                }


                ApprovedGridView.Columns[9].Visible = false;
            }
            else
            {
                nulMsgLabel.Text = "There is no approved application";
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            //detailTextBox.Visible = true;
        }

        protected void ApprovedGridView_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {

            int r = e.NewSelectedIndex;
            Label l = (Label)ApprovedGridView.Rows[r].FindControl("Label2");
            headerLabel.Text = "Application Details";
            approveLabel.Text = l.Text;



        }
    }
}