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
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"]==null || Session["OrderID"]==null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void CompleteOrderbtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sananda"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("UPDATE Orders SET IsComplete = 1 WHERE OrderID = @id", con);
            cmd.Parameters.AddWithValue("@id", Session["OrderID"]);
            cmd.ExecuteNonQuery();
            cmd = new SqlCommand("UPDATE Orders SET SaleAmount = "+
                "(SELECT SUM(ProductPrice) FROM OrderItem a INNER JOIN Products b ON a.ProductID = b.ProductID WHERE a.OrderID = @id) "+
                "WHERE OrderID = @id", con);
            cmd.Parameters.AddWithValue("@id", Session["OrderID"]);
            cmd.ExecuteNonQuery();

            con.Close();

            Response.Redirect("Profile.aspx");
        }

        protected void Removebtn_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["sananda"].ConnectionString);
            con.Open();

            SqlCommand cmd = new SqlCommand("DELETE FROM OrderItem WHERE ID = @id", con);
            cmd.Parameters.AddWithValue("@id", DropDownList1.SelectedValue);
            cmd.ExecuteNonQuery();

            con.Close();
            Response.Redirect(Request.RawUrl);
        }
    }
}