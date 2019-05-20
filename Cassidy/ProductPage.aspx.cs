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
    public partial class ProductPage : System.Web.UI.Page
    {

        protected void LoadData()
        {
            Image[] pics = { Image1, Image2, Image3, Image4, Image5, Image6 };
            Label[] names = { Name1, Name2, Name3, Name4, Name5, Name6 };
            Label[] descs = { Desc1, Desc2, Desc3, Desc4, Desc5, Desc6 };

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Products", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            for (int i = 0; i < pics.Length; i++)
            {
                pics[i].ImageUrl = dt.Rows[i].Field<String>(4);
                names[i].Text = dt.Rows[i].Field<String>(1) + "     $" + Math.Round(dt.Rows[i].Field<Decimal>(2), 2);
                descs[i].Text = dt.Rows[i].Field<String>(3);
            }

            con.Close();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            LoadData();
            if (Session["UserID"] != null)
            {
                LoginStatus.Text = "" + Session["UserID"]+"'s Profile";
            }
            else
            {
                LoginStatus.Text = "Login";
            }
        }

        protected void Add_to_Cart(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                Response.Write("<script>alert('You must login to add to cart.');</script>");
                return;
            }

            Button sentButton = (Button)sender;
            int btnID;
            switch (sentButton.ID)
            {
                case "Button1":
                    btnID = 1;
                    break;
                case "Button2":
                    btnID = 2;
                    break;
                case "Button3":
                    btnID = 3;
                    break;
                case "Button4":
                    btnID = 4;
                    break;
                case "Button5":
                    btnID = 5;
                    break;
                case "Button6":
                    btnID = 6;
                    break;
                default:
                    btnID = -1;
                    break;
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM Orders WHERE IsComplete = 0", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count == 0)
            {
                cmd = new SqlCommand("INSERT INTO Orders (CustomerID) VALUES (@ID)", con);
                cmd.Parameters.AddWithValue("@ID", Session["UserID"]);
                cmd.ExecuteNonQuery();
                cmd = new SqlCommand("SELECT * FROM Orders WHERE IsComplete = 0", con);
                da = new SqlDataAdapter(cmd);
                dt = new DataTable();
                da.Fill(dt);
            }

            int orderID = dt.Rows[0].Field<int>(0);

            cmd = new SqlCommand("INSERT INTO OrderItem (Quantity, ProductID, OrderID) VALUES (1, @product, @order)", con);
            cmd.Parameters.AddWithValue("@product", btnID);
            cmd.Parameters.AddWithValue("@order", orderID);
            cmd.ExecuteNonQuery();

            Session.Add("OrderID", orderID);
        }
    }
}
