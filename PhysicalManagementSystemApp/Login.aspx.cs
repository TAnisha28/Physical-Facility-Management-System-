using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace phy_fac_bard
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\MSSQLSERVERNISHA;Initial Catalog=PhysicalFacilitiesDB;Integrated Security=True");

            con.Open();
            string checkuser = "select userid,Password,type,name,email from Login where userid='" + TextBox1.Text + "' and Password='" + TextBox2.Text + "' and userstatus='Active'";
            SqlCommand cmd = new SqlCommand(checkuser, con);

            SqlDataReader re = cmd.ExecuteReader();
            if (re.Read())
            {
                Session["UN"] = TextBox1.Text;
                Session["UserName"] = TextBox1.Text;
                Session["name"] = re.GetValue(3).ToString();
                Session["email"] = re.GetValue(4).ToString();
                if (re.GetValue(2).ToString() == "Admin")

                    Response.Redirect("/UI/home.aspx");
                else
                    Response.Redirect("/home.aspx");

            }

            else
            {
                Label3.Text = "Not Valid";
            }
            con.Close();



        }
    }
}