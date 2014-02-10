using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Users_Upgrade : System.Web.UI.Page
{
    string _connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["UserId"] == null)
        //{
        //    Session.Clear();
        //    Session.Abandon();
        //    Response.Redirect("~/Home.aspx");
        //}
        _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;

        //if (Request.Form["payment"] != null)
        //{
        //    string UserId = Convert.ToString(Session["UserId"]);


        //}

    }
}