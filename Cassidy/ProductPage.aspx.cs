using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cassidy
{
    public partial class ProductPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 1;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select ImagePath from Products where ProductID = @id", con);
            cmd.Parameters.AddWithValue("@id", id);
            Image1.ImageUrl = "" + cmd.ExecuteScalar();
            if (Session["UserID"] != null)
            {
                cmd = new SqlCommand("SELECT FirstName FROM Customers where UserID = @id", con);
                cmd.Parameters.AddWithValue("@id", Session["UserID"]);
                //UserID.Text = "" + cmd.ExecuteScalar();
            }
        }

        
    }
}