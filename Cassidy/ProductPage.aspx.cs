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
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select ProductImage from Products where ProductID = @id", con);
            cmd.Parameters.AddWithValue("@id", id);
            Image1.ImageUrl = ""+cmd.ExecuteScalar();
        }

        
    }
}