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
    public partial class Booking : System.Web.UI.Page
    {
        SqlDataAdapter da;
        SqlDataReader dr;
        SqlCommand cmd;
        DataSet ds;
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=PhysicalFacilitiesDB;Integrated Security=True");
       

        protected void Page_Load(object sender, EventArgs e)
        {
            GetData();
            BindData();

        }
        protected void GetData()
        {
            da = new SqlDataAdapter("SELECT * from Booking", con);

            ds = new DataSet();// completely empty.dataadapet data nie ashbe
            da.Fill(ds, "book");//fill connection dey db er sthe,then selsct cmmnd chalay thn fill kore dataset ta oi adpet die

            Session["Booking"] = ds;
            SqlCommandBuilder cbd = new SqlCommandBuilder(da);
            Session["da"] = da;
        }
        protected void BindData()
        {
            DataTable dt = ((DataSet)Session["Booking"]).Tables[0];
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
            for(int i=0;i<GridView1.Rows.Count;i++)
            {
                Label l1 = (Label)GridView1.Rows[i].FindControl("Label1");
                string s = l1.Text;
                if(s.Length>10)
                s = s.Substring(0, 10);
                l1.Text = s;
                Label l2 = (Label)GridView1.Rows[i].FindControl("Label2");
                s = l2.Text;
                if (s.Length > 10)
                    s = s.Substring(0, 10);
                l2.Text = s;
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking_Update.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("/UI/Booking.aspx");
        }

    }
}