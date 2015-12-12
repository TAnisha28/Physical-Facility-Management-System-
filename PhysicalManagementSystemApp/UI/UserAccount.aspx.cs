using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace PhysicalManagementSystemApp
{
    public partial class UserAccount : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlDataReader dr;
        DataSet ds;

        SqlConnection con = new SqlConnection("Data Source=WAY2JANNAT\\sqlexpress;Initial Catalog=PFMSDB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetData();
                BindData();

            }
        }


        protected void GetData()
        {
            da = new SqlDataAdapter("select userid,name,type,email,designation,userstatus from login order by userstatus", con);
            ds = new DataSet();
            da.Fill(ds, "local");
            Session["ds"] = ds;
            SqlCommandBuilder cbd = new SqlCommandBuilder(da);
            Session["da"] = da;
        }

        protected void BindData()
        {
            DataTable dt = ((DataSet)Session["ds"]).Tables[0];
            gridviewShowUser.DataSource = ds.Tables[0];
            gridviewShowUser.DataBind();
        }

        protected void btnAddUser_Click(object sender, EventArgs e)
        {
            PanelAddUser.Visible = true;
        }


        protected void gridviewShowUser_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int row = e.RowIndex;
            DataTable dt = ((DataSet)Session["ds"]).Tables[0];
            SqlDataAdapter da = (SqlDataAdapter)Session["da"];

            TextBox name = (TextBox)gridviewShowUser.Rows[row].FindControl("TextBox2");
            string username = name.Text;
            dt.Rows[row][1] = username;


            TextBox mail = (TextBox)gridviewShowUser.Rows[row].FindControl("TextBox3");
            string email = mail.Text;
            dt.Rows[row][3] = email;

            TextBox desig = (TextBox)gridviewShowUser.Rows[row].FindControl("TextBox4");
            string designation = desig.Text;
            dt.Rows[row][4] = designation;




            da.Update(dt);
            GetData();
            gridviewShowUser.EditIndex = -1;
            BindData();
        }

        protected void gridviewShowUser_RowEditing(object sender, GridViewEditEventArgs e)
        {
            DataSet ds = (DataSet)Session["ds"];
            DataTable dt = ds.Tables[0];
            gridviewShowUser.DataSource = dt;
            gridviewShowUser.EditIndex = e.NewEditIndex;
            gridviewShowUser.DataBind();
        }

        protected void gridviewShowUser_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GetData();
            gridviewShowUser.EditIndex = -1;
            BindData();
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            string id = txtUserId.Text;
            SqlCommand cmd = new SqlCommand("Select userid from login where userid=@id", con);
            cmd.Parameters.AddWithValue("@id", id);
            con.Open();
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lblUserIdMessage.Text = "Already id taken. Please choose another one";
            }
            else
                lblUserIdMessage.Text = "This id is available";
            dr.Close();
            con.Close();
            
        }



        protected void txtUserType_TextChanged(object sender, EventArgs e)
        {

        }

        protected void drpdwnDesignation_SelectedIndexChanged(object sender, EventArgs e)
        {
            string designation = drpdwnDesignation.SelectedItem.ToString();
            if (designation == "Training Officer")
            {
                txtUserType.Text = "TO";
            }
            else if (designation == "Director Training")
            {
                txtUserType.Text = "Admin";
            }
            else if (designation == "Assistant Director Training" || designation == "Deputy Director Training" || designation == "Joint Director Training")
            {
                txtUserType.Text = "Supervisor";
            }
            string pass = CreateRandomPassword(5);
            txtPassword.Text = pass;
        }
        public static string CreateRandomPassword(int PasswordLength)
        {
            string _allowedChars = "0123456789abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ";
            Random randNum = new Random();
            char[] chars = new char[PasswordLength];
            int allowedCharCount = _allowedChars.Length;
            for (int i = 0; i < PasswordLength; i++)
            {
                chars[i] = _allowedChars[(int)((_allowedChars.Length) * randNum.NextDouble())];
            }
            return new string(chars);


        }

        protected void txtPassword_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string id = txtUserId.Text;
            string name = txtUserName.Text;
            string email = txtEmail.Text;
            string designation = drpdwnDesignation.SelectedItem.ToString();
            string usertype = txtUserType.Text;
            string password = txtPassword.Text;
            string Status = "Active";

            SqlCommand cmd = new SqlCommand("insert into login (userid,name,type,email,designation,password,userstatus) values (@id,@name,@type,@email,@desig,@pass,@Status)", con);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@name", name);
            cmd.Parameters.AddWithValue("@type", usertype);
            cmd.Parameters.AddWithValue("@email", email);
            cmd.Parameters.AddWithValue("@desig", designation);
            cmd.Parameters.AddWithValue("@pass", password);
            cmd.Parameters.AddWithValue("@Status", Status);
            //SqlDataReader dr;
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            lblAddMessage.Text = "Successfully USer Added ";

            txtUserId.Text = "";
            txtUserName.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtUserType.Text = "";
            drpdwnDesignation.Text = "Select Designation ";
            lblUserIdMessage.Text = "";

            GetData();
            BindData();
        }

        protected void btnConfirmUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void gridviewShowUser_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            PanelAddUser.Visible = false;
        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            Panel1.Visible = true;
           foreach (GridViewRow oldrow in gridviewShowUser.Rows)
            {
                ((RadioButton)oldrow.FindControl("RadioButton1")).Checked = false;
            }
           RadioButton rb = (RadioButton)sender;
           GridViewRow row = (GridViewRow)rb.NamingContainer;
           ((RadioButton)row.FindControl("RadioButton1")).Checked = true;
            
            for (int i = 0; i < gridviewShowUser.Rows.Count; i++)
            {
                RadioButton ch = (RadioButton)gridviewShowUser.Rows[i].FindControl("RadioButton1");
                if (ch.Checked == true)
                {
                    Label l1 = (Label)gridviewShowUser.Rows[i].FindControl("Label4");
                    Label l2 = (Label)gridviewShowUser.Rows[i].FindControl("Label5");
                    
                    if (l2.Text.Trim() == "Active")
                    {
                        lblUpdateUser.Text ="user id: " +l1.Text +  " is now Active. Do you want to Deactive now? ";
                        
                    }
                    else if (l2.Text.Trim()=="Deactive")
                    {
                        lblUpdateUser.Text = "user id: " +l1.Text + " is now Deactive. Do you want to Active now? ";
                        
                    }
                    break;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            for (int i = 0; i < gridviewShowUser.Rows.Count; i++)
            {
                string check;
                RadioButton ch = (RadioButton)gridviewShowUser.Rows[i].FindControl("RadioButton1");
                Label l1 = (Label)gridviewShowUser.Rows[i].FindControl("Label4");
                Label l2 = (Label)gridviewShowUser.Rows[i].FindControl("Label5");
                    
                if (ch.Checked == true)
                {
                    string id = l1.Text;
                    string status = l2.Text;




                    if (status == "Active")
                    {
                        check = "Deactive";
                        cmd = new SqlCommand("Update Login Set UserStatus=@check where  UserID='" + id + "'", con);

                        cmd.Parameters.AddWithValue("@check", check);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        GetData();
                        BindData();
                        lblUpdateUser.Text = "User Status Updated Successfully....";

                    }
                    else
                    {
                        check = "Active";
                        cmd = new SqlCommand("Update Login Set UserStatus=@check where  UserID='" + id + "'", con);

                        cmd.Parameters.AddWithValue("@check", check);

                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                        GetData();
                        BindData();
                        lblUpdateUser.Text = "User Status Updated Successfully....";
                    }



                }
              

            }

        }

        protected void btnCancelUpdate_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            
           
            
            
        }
    }
}