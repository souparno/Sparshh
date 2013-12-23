using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Data.SqlClient;

public partial class MasterPage : System.Web.UI.MasterPage
{
    //string _connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*_connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        string sql = "IF NOT EXISTS (SELECT * FROM information_schema.columns WHERE table_name='usr_details' AND column_name = 'usr_state') alter table usr_details add usr_state text null";
        SqlConnection con = new SqlConnection(_connection);
        SqlCommand cmd=new SqlCommand(sql,con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        sql="IF NOT EXISTS (SELECT * FROM information_schema.columns WHERE table_name='usr_details' AND column_name = 'usr_city') alter table usr_details add usr_city text null";
        con = new SqlConnection(_connection);
        cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();*/


        if (Session["UserId"] == null)
        {
            Page.ClientScript.RegisterStartupScript(typeof(Page), "LogoutInvisible", "<script type='text/javascript'>document.getElementById('logout').style.display='none';</script>");
            Page.ClientScript.RegisterStartupScript(typeof(Page), "ToplistVisible", "<script type='text/javascript'>document.getElementById('top_list').style.display='block';</script>");
            
        }
        else
        {
            Page.ClientScript.RegisterStartupScript(typeof(Page), "LogoutInvisible", "<script type='text/javascript'>document.getElementById('logout').style.display='block';</script>");
            Page.ClientScript.RegisterStartupScript(typeof(Page), "ToplistInVisible", "<script type='text/javascript'>document.getElementById('top_list').style.display='none';</script>");
        }

    }


    protected void LogOut_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/Home.aspx");
    }


    
}
