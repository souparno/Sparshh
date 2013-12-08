using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

public partial class Users_MyPictures : System.Web.UI.Page
{
    string _connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["UserId"] == null)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("~/Home.aspx");
        }
        _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
    }

    public void UploadPic_Click(object sender, EventArgs e)
    {
        if (image_Upload.HasFile)
        {
            string path = Server.MapPath("Pictures//");
            image_Upload.SaveAs(path + image_Upload.FileName);
            string User_Id = Convert.ToString(Session["UserId"]);

            SqlConnection con = new SqlConnection(_connection);
            string sql = "select ISNULL(max(pic_id)+1,1) as 'id' from usr_pic_album;";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            int pic_id = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();


            sql = "insert into usr_pic_album(usr_id,pic_id,picture) values('"+User_Id+"','"+pic_id+"','"+image_Upload.FileName+"')";
            cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();


        }
    }


    [WebMethod]
    public static void MakeProfilePic(string Picture)
    {
        string userid = Convert.ToString(HttpContext.Current.Session["UserId"]);
        string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        SqlConnection con = new SqlConnection(_connection);
        string sql = "update usr_details set usr_profile_pic='"+Picture+"' where usr_id='" + userid + "';";
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
}