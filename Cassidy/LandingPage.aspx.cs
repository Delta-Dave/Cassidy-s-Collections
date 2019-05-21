using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cassidy
{
    public partial class LandingPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Add("conString", "dbconnection");
            if (Session["UserID"] != null)
            {
                LoginStatus.Text = ""+Session["UserID"]+"'s Profile";
            }
            else
            {
                LoginStatus.Text = "Login";
            }
        }
    }
}