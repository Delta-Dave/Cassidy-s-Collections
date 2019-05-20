using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cassidy
{
    public partial class Profile : System.Web.UI.Page
    {

        protected void PopulatePage()
        {

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sananda"].ConnectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand("select * from Customers where CustomerID = @userid", con);
            cmd.Parameters.AddWithValue("@userid", Session["UserID"]);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            UserID.Text = "" + Session["UserID"];
            Name.Text = dt.Rows[0].Field<String>(2) +" "+ dt.Rows[0].Field<String>(1);
            Username.Text = dt.Rows[0].Field<String>(3);
            Date.Text = "" + dt.Rows[0].Field<DateTime>(5);

            cmd = new SqlCommand("SELECT * FROM Orders WHERE IsComplete = 0", con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                Session.Add("OrderID", dt.Rows[0].Field<int>(0));
            }

            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
                Response.Redirect("Login.aspx");

            PopulatePage();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["UserID"] = null;
            Response.Redirect("Login.aspx");
        }
    }
}
