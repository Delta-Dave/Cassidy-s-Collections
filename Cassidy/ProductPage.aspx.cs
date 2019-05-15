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
            
        }

        
    }
}
