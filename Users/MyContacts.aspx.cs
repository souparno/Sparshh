using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Users_MyContacts : System.Web.UI.Page
{
    static string _connection;
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


    public void Fill_ExpressInterestReceived(object sender, EventArgs e)
    {
        string UserId = Convert.ToString(Session["UserId"]);
        string sql = "select usr_id,usr_mother_tongue,usr_religion,usr_height,usr_caste,usr_highest_education,usr_occupation,usr_income,usr_country,usr_profile_pic from usr_details join usr_ExpressInterest on usr_ExpressInterest.usr_id_from=usr_details.usr_id where usr_id_to='" + UserId + "' and InterestPending='0';";
        SqlConnection con = new SqlConnection(_connection);
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MotherTongue.xml");
        ds.ReadXml(path);
        DataTable MotherTongue = ds.Tables["MotherTongue"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Religion.xml");
        ds.ReadXml(path);
        DataTable Religion = ds.Tables["Religion"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Caste.xml");
        ds.ReadXml(path);
        DataTable Caste = ds.Tables["Caste"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Height.xml");
        ds.ReadXml(path);
        DataTable Height = ds.Tables["Height"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/EducationDetails.xml");
        ds.ReadXml(path);
        DataTable Education = ds.Tables["EducationDetails"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/OccupationDetails.xml");
        ds.ReadXml(path);
        DataTable Occupation = ds.Tables["OccupationDetails"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Income.xml");
        ds.ReadXml(path);
        DataTable Income = ds.Tables["Income"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Country.xml");
        ds.ReadXml(path);
        DataTable Country = ds.Tables["Country"];

        var query = from t15 in
                        (
                            from t13 in
                                (
                                    from t11 in
                                        (
                                            from t9 in
                                                (
                                                    from t7 in
                                                        (
                                                            from t5 in
                                                                (
                                                                    from t3 in
                                                                        (
                                                                            from t1 in dt.AsEnumerable()
                                                                            join t2 in MotherTongue.AsEnumerable()
                                                                            on t1.Field<string>("usr_mother_tongue") equals t2.Field<string>("Key") into table
                                                                            from p in table.DefaultIfEmpty()
                                                                            select new
                                                                            {
                                                                                usr_id = t1.Field<string>("usr_id"),
                                                                                MotherTongue = p == null ? "" : p.Field<string>("Value"),
                                                                                Religion = t1.Field<string>("usr_religion"),
                                                                                Height = t1.Field<string>("usr_height"),
                                                                                Caste = t1.Field<string>("usr_caste"),
                                                                                Education = t1.Field<string>("usr_highest_education"),
                                                                                Occupation = t1.Field<string>("usr_occupation"),
                                                                                Income = t1.Field<string>("usr_income"),
                                                                                Country = t1.Field<string>("usr_country"),
                                                                                ProfilePic = t1.Field<string>("usr_profile_pic"),
                                                                                
                                                                            }).AsEnumerable()
                                                                    join t4 in Religion.AsEnumerable()
                                                                    on t3.Religion equals t4.Field<string>("Key") into table
                                                                    from p in table.DefaultIfEmpty()
                                                                    select new
                                                                    {
                                                                        usr_id = t3.usr_id,
                                                                        MotherTongue = t3.MotherTongue,
                                                                        Religion = p == null ? "" : p.Field<string>("Value"),
                                                                        Height = t3.Height,
                                                                        Caste = t3.Caste,
                                                                        Education = t3.Education,
                                                                        Occupation = t3.Occupation,
                                                                        Income = t3.Income,
                                                                        Country = t3.Country,
                                                                        ProfilePic = t3.ProfilePic,
                                                                        
                                                                    }).AsEnumerable()
                                                            join t6 in Height.AsEnumerable()
                                                            on t5.Height equals t6.Field<string>("Key") into table
                                                            from p in table.DefaultIfEmpty()
                                                            select new
                                                            {
                                                                usr_id = t5.usr_id,
                                                                MotherTongue = t5.MotherTongue,
                                                                Religion = t5.Religion,
                                                                Height = p == null ? "" : p.Field<string>("Value"),
                                                                Caste = t5.Caste,
                                                                Education = t5.Education,
                                                                Occupation = t5.Occupation,
                                                                Income = t5.Income,
                                                                Country = t5.Country,
                                                                ProfilePic = t5.ProfilePic,
                                                                
                                                            }).AsEnumerable()
                                                    join t8 in Caste.AsEnumerable()
                                                    on t7.Caste equals t8.Field<string>("Key") into table
                                                    from p in table.DefaultIfEmpty()
                                                    select new
                                                    {
                                                        usr_id = t7.usr_id,
                                                        MotherTongue = t7.MotherTongue,
                                                        Religion = t7.Religion,
                                                        Height = t7.Height,
                                                        Caste = p == null ? "" : p.Field<string>("Value"),
                                                        Education = t7.Education,
                                                        Occupation = t7.Occupation,
                                                        Income = t7.Income,
                                                        Country = t7.Country,
                                                        ProfilePic = t7.ProfilePic,
                                                        
                                                    }).AsEnumerable()
                                            join t10 in Education.AsEnumerable()
                                            on t9.Education equals t10.Field<string>("Key") into table
                                            from p in table.DefaultIfEmpty()
                                            select new
                                            {
                                                usr_id = t9.usr_id,
                                                MotherTongue = t9.MotherTongue,
                                                Religion = t9.Religion,
                                                Height = t9.Height,
                                                Caste = t9.Caste,
                                                Education = p == null ? "" : p.Field<string>("Value"),
                                                Occupation = t9.Occupation,
                                                Income = t9.Income,
                                                Country = t9.Country,
                                                ProfilePic = t9.ProfilePic,
                                                
                                            }).AsEnumerable()
                                    join t12 in Occupation.AsEnumerable()
                                    on t11.Occupation equals t12.Field<string>("Key") into table
                                    from p in table.DefaultIfEmpty()
                                    select new
                                    {
                                        usr_id = t11.usr_id,
                                        MotherTongue = t11.MotherTongue,
                                        Religion = t11.Religion,
                                        Height = t11.Height,
                                        Caste = t11.Caste,
                                        Education = t11.Education,
                                        Occupation = p == null ? "" : p.Field<string>("Value"),
                                        Income = t11.Income,
                                        Country = t11.Country,
                                        ProfilePic = t11.ProfilePic,
                                        
                                    }).AsEnumerable()
                            join t14 in Income.AsEnumerable()
                            on t13.Income equals t14.Field<string>("Key") into table
                            from p in table.DefaultIfEmpty()
                            select new
                            {
                                usr_id = t13.usr_id,
                                MotherTongue = t13.MotherTongue,
                                Religion = t13.Religion,
                                Height = t13.Height,
                                Caste = t13.Caste,
                                Education = t13.Education,
                                Occupation = t13.Occupation,
                                Income = p == null ? "" : p.Field<string>("Value"),
                                Country = t13.Country,
                                ProfilePic = t13.ProfilePic,
                                
                            }).AsEnumerable()
                    join t16 in Country.AsEnumerable()
                    on t15.Country equals t16.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        usr_id = t15.usr_id,
                        MotherTongue = t15.MotherTongue,
                        Religion = t15.Religion,
                        Height = t15.Height,
                        Caste = t15.Caste,
                        Education = t15.Education,
                        Occupation = t15.Occupation,
                        Income = t15.Income,
                        Country = p == null ? "" : p.Field<string>("Value"),
                        ProfilePic = t15.ProfilePic,
                        
                    };

        Grd_Search_Result.DataSource = query;
        Grd_Search_Result.DataBind();

    }
    public void Fill_ExpressInterestSent(object sender, EventArgs e)
    {
        string UserId = Convert.ToString(Session["UserId"]);
        string sql = "select usr_id,usr_mother_tongue,usr_religion,usr_height,usr_caste,usr_highest_education,usr_occupation,usr_income,usr_country,usr_profile_pic from usr_details join usr_ExpressInterest on usr_ExpressInterest.usr_id_from=usr_details.usr_id where usr_id_from='" + UserId + "' and InterestPending='0';";
        SqlConnection con = new SqlConnection(_connection);
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MotherTongue.xml");
        ds.ReadXml(path);
        DataTable MotherTongue = ds.Tables["MotherTongue"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Religion.xml");
        ds.ReadXml(path);
        DataTable Religion = ds.Tables["Religion"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Caste.xml");
        ds.ReadXml(path);
        DataTable Caste = ds.Tables["Caste"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Height.xml");
        ds.ReadXml(path);
        DataTable Height = ds.Tables["Height"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/EducationDetails.xml");
        ds.ReadXml(path);
        DataTable Education = ds.Tables["EducationDetails"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/OccupationDetails.xml");
        ds.ReadXml(path);
        DataTable Occupation = ds.Tables["OccupationDetails"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Income.xml");
        ds.ReadXml(path);
        DataTable Income = ds.Tables["Income"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Country.xml");
        ds.ReadXml(path);
        DataTable Country = ds.Tables["Country"];

        var query = from t15 in
                        (
                            from t13 in
                                (
                                    from t11 in
                                        (
                                            from t9 in
                                                (
                                                    from t7 in
                                                        (
                                                            from t5 in
                                                                (
                                                                    from t3 in
                                                                        (
                                                                            from t1 in dt.AsEnumerable()
                                                                            join t2 in MotherTongue.AsEnumerable()
                                                                            on t1.Field<string>("usr_mother_tongue") equals t2.Field<string>("Key") into table
                                                                            from p in table.DefaultIfEmpty()
                                                                            select new
                                                                            {
                                                                                usr_id = t1.Field<string>("usr_id"),
                                                                                MotherTongue = p == null ? "" : p.Field<string>("Value"),
                                                                                Religion = t1.Field<string>("usr_religion"),
                                                                                Height = t1.Field<string>("usr_height"),
                                                                                Caste = t1.Field<string>("usr_caste"),
                                                                                Education = t1.Field<string>("usr_highest_education"),
                                                                                Occupation = t1.Field<string>("usr_occupation"),
                                                                                Income = t1.Field<string>("usr_income"),
                                                                                Country = t1.Field<string>("usr_country"),
                                                                                ProfilePic = t1.Field<string>("usr_profile_pic"),

                                                                            }).AsEnumerable()
                                                                    join t4 in Religion.AsEnumerable()
                                                                    on t3.Religion equals t4.Field<string>("Key") into table
                                                                    from p in table.DefaultIfEmpty()
                                                                    select new
                                                                    {
                                                                        usr_id = t3.usr_id,
                                                                        MotherTongue = t3.MotherTongue,
                                                                        Religion = p == null ? "" : p.Field<string>("Value"),
                                                                        Height = t3.Height,
                                                                        Caste = t3.Caste,
                                                                        Education = t3.Education,
                                                                        Occupation = t3.Occupation,
                                                                        Income = t3.Income,
                                                                        Country = t3.Country,
                                                                        ProfilePic = t3.ProfilePic,

                                                                    }).AsEnumerable()
                                                            join t6 in Height.AsEnumerable()
                                                            on t5.Height equals t6.Field<string>("Key") into table
                                                            from p in table.DefaultIfEmpty()
                                                            select new
                                                            {
                                                                usr_id = t5.usr_id,
                                                                MotherTongue = t5.MotherTongue,
                                                                Religion = t5.Religion,
                                                                Height = p == null ? "" : p.Field<string>("Value"),
                                                                Caste = t5.Caste,
                                                                Education = t5.Education,
                                                                Occupation = t5.Occupation,
                                                                Income = t5.Income,
                                                                Country = t5.Country,
                                                                ProfilePic = t5.ProfilePic,

                                                            }).AsEnumerable()
                                                    join t8 in Caste.AsEnumerable()
                                                    on t7.Caste equals t8.Field<string>("Key") into table
                                                    from p in table.DefaultIfEmpty()
                                                    select new
                                                    {
                                                        usr_id = t7.usr_id,
                                                        MotherTongue = t7.MotherTongue,
                                                        Religion = t7.Religion,
                                                        Height = t7.Height,
                                                        Caste = p == null ? "" : p.Field<string>("Value"),
                                                        Education = t7.Education,
                                                        Occupation = t7.Occupation,
                                                        Income = t7.Income,
                                                        Country = t7.Country,
                                                        ProfilePic = t7.ProfilePic,

                                                    }).AsEnumerable()
                                            join t10 in Education.AsEnumerable()
                                            on t9.Education equals t10.Field<string>("Key") into table
                                            from p in table.DefaultIfEmpty()
                                            select new
                                            {
                                                usr_id = t9.usr_id,
                                                MotherTongue = t9.MotherTongue,
                                                Religion = t9.Religion,
                                                Height = t9.Height,
                                                Caste = t9.Caste,
                                                Education = p == null ? "" : p.Field<string>("Value"),
                                                Occupation = t9.Occupation,
                                                Income = t9.Income,
                                                Country = t9.Country,
                                                ProfilePic = t9.ProfilePic,

                                            }).AsEnumerable()
                                    join t12 in Occupation.AsEnumerable()
                                    on t11.Occupation equals t12.Field<string>("Key") into table
                                    from p in table.DefaultIfEmpty()
                                    select new
                                    {
                                        usr_id = t11.usr_id,
                                        MotherTongue = t11.MotherTongue,
                                        Religion = t11.Religion,
                                        Height = t11.Height,
                                        Caste = t11.Caste,
                                        Education = t11.Education,
                                        Occupation = p == null ? "" : p.Field<string>("Value"),
                                        Income = t11.Income,
                                        Country = t11.Country,
                                        ProfilePic = t11.ProfilePic,

                                    }).AsEnumerable()
                            join t14 in Income.AsEnumerable()
                            on t13.Income equals t14.Field<string>("Key") into table
                            from p in table.DefaultIfEmpty()
                            select new
                            {
                                usr_id = t13.usr_id,
                                MotherTongue = t13.MotherTongue,
                                Religion = t13.Religion,
                                Height = t13.Height,
                                Caste = t13.Caste,
                                Education = t13.Education,
                                Occupation = t13.Occupation,
                                Income = p == null ? "" : p.Field<string>("Value"),
                                Country = t13.Country,
                                ProfilePic = t13.ProfilePic,

                            }).AsEnumerable()
                    join t16 in Country.AsEnumerable()
                    on t15.Country equals t16.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        usr_id = t15.usr_id,
                        MotherTongue = t15.MotherTongue,
                        Religion = t15.Religion,
                        Height = t15.Height,
                        Caste = t15.Caste,
                        Education = t15.Education,
                        Occupation = t15.Occupation,
                        Income = t15.Income,
                        Country = p == null ? "" : p.Field<string>("Value"),
                        ProfilePic = t15.ProfilePic,

                    };

        Grd_Search_Result.DataSource = query;
        Grd_Search_Result.DataBind();

    }
    public void Fill_Contact(object sender, EventArgs e)
    {
        string UserId = Convert.ToString(Session["UserId"]);
        string sql = "select usr_id,usr_mother_tongue,usr_religion,usr_height,usr_caste,usr_highest_education,usr_occupation,usr_income,usr_country,usr_profile_pic from usr_details join usr_ExpressInterest on usr_ExpressInterest.usr_id_to=usr_details.usr_id where usr_id_from='"+UserId+"' and InterestPending='1' union all select usr_id,usr_mother_tongue,usr_religion,usr_height,usr_caste,usr_highest_education,usr_occupation,usr_income,usr_country,usr_profile_pic from usr_details join usr_ExpressInterest on usr_ExpressInterest.usr_id_from=usr_details.usr_id where usr_id_to='"+UserId+"' and InterestPending='1';";
        SqlConnection con = new SqlConnection(_connection);
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MotherTongue.xml");
        ds.ReadXml(path);
        DataTable MotherTongue = ds.Tables["MotherTongue"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Religion.xml");
        ds.ReadXml(path);
        DataTable Religion = ds.Tables["Religion"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Caste.xml");
        ds.ReadXml(path);
        DataTable Caste = ds.Tables["Caste"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Height.xml");
        ds.ReadXml(path);
        DataTable Height = ds.Tables["Height"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/EducationDetails.xml");
        ds.ReadXml(path);
        DataTable Education = ds.Tables["EducationDetails"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/OccupationDetails.xml");
        ds.ReadXml(path);
        DataTable Occupation = ds.Tables["OccupationDetails"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Income.xml");
        ds.ReadXml(path);
        DataTable Income = ds.Tables["Income"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Country.xml");
        ds.ReadXml(path);
        DataTable Country = ds.Tables["Country"];

        var query = from t15 in
                        (
                            from t13 in
                                (
                                    from t11 in
                                        (
                                            from t9 in
                                                (
                                                    from t7 in
                                                        (
                                                            from t5 in
                                                                (
                                                                    from t3 in
                                                                        (
                                                                            from t1 in dt.AsEnumerable()
                                                                            join t2 in MotherTongue.AsEnumerable()
                                                                            on t1.Field<string>("usr_mother_tongue") equals t2.Field<string>("Key") into table
                                                                            from p in table.DefaultIfEmpty()
                                                                            select new
                                                                            {
                                                                                usr_id = t1.Field<string>("usr_id"),
                                                                                MotherTongue = p == null ? "" : p.Field<string>("Value"),
                                                                                Religion = t1.Field<string>("usr_religion"),
                                                                                Height = t1.Field<string>("usr_height"),
                                                                                Caste = t1.Field<string>("usr_caste"),
                                                                                Education = t1.Field<string>("usr_highest_education"),
                                                                                Occupation = t1.Field<string>("usr_occupation"),
                                                                                Income = t1.Field<string>("usr_income"),
                                                                                Country = t1.Field<string>("usr_country"),
                                                                                ProfilePic = t1.Field<string>("usr_profile_pic"),

                                                                            }).AsEnumerable()
                                                                    join t4 in Religion.AsEnumerable()
                                                                    on t3.Religion equals t4.Field<string>("Key") into table
                                                                    from p in table.DefaultIfEmpty()
                                                                    select new
                                                                    {
                                                                        usr_id = t3.usr_id,
                                                                        MotherTongue = t3.MotherTongue,
                                                                        Religion = p == null ? "" : p.Field<string>("Value"),
                                                                        Height = t3.Height,
                                                                        Caste = t3.Caste,
                                                                        Education = t3.Education,
                                                                        Occupation = t3.Occupation,
                                                                        Income = t3.Income,
                                                                        Country = t3.Country,
                                                                        ProfilePic = t3.ProfilePic,

                                                                    }).AsEnumerable()
                                                            join t6 in Height.AsEnumerable()
                                                            on t5.Height equals t6.Field<string>("Key") into table
                                                            from p in table.DefaultIfEmpty()
                                                            select new
                                                            {
                                                                usr_id = t5.usr_id,
                                                                MotherTongue = t5.MotherTongue,
                                                                Religion = t5.Religion,
                                                                Height = p == null ? "" : p.Field<string>("Value"),
                                                                Caste = t5.Caste,
                                                                Education = t5.Education,
                                                                Occupation = t5.Occupation,
                                                                Income = t5.Income,
                                                                Country = t5.Country,
                                                                ProfilePic = t5.ProfilePic,

                                                            }).AsEnumerable()
                                                    join t8 in Caste.AsEnumerable()
                                                    on t7.Caste equals t8.Field<string>("Key") into table
                                                    from p in table.DefaultIfEmpty()
                                                    select new
                                                    {
                                                        usr_id = t7.usr_id,
                                                        MotherTongue = t7.MotherTongue,
                                                        Religion = t7.Religion,
                                                        Height = t7.Height,
                                                        Caste = p == null ? "" : p.Field<string>("Value"),
                                                        Education = t7.Education,
                                                        Occupation = t7.Occupation,
                                                        Income = t7.Income,
                                                        Country = t7.Country,
                                                        ProfilePic = t7.ProfilePic,

                                                    }).AsEnumerable()
                                            join t10 in Education.AsEnumerable()
                                            on t9.Education equals t10.Field<string>("Key") into table
                                            from p in table.DefaultIfEmpty()
                                            select new
                                            {
                                                usr_id = t9.usr_id,
                                                MotherTongue = t9.MotherTongue,
                                                Religion = t9.Religion,
                                                Height = t9.Height,
                                                Caste = t9.Caste,
                                                Education = p == null ? "" : p.Field<string>("Value"),
                                                Occupation = t9.Occupation,
                                                Income = t9.Income,
                                                Country = t9.Country,
                                                ProfilePic = t9.ProfilePic,

                                            }).AsEnumerable()
                                    join t12 in Occupation.AsEnumerable()
                                    on t11.Occupation equals t12.Field<string>("Key") into table
                                    from p in table.DefaultIfEmpty()
                                    select new
                                    {
                                        usr_id = t11.usr_id,
                                        MotherTongue = t11.MotherTongue,
                                        Religion = t11.Religion,
                                        Height = t11.Height,
                                        Caste = t11.Caste,
                                        Education = t11.Education,
                                        Occupation = p == null ? "" : p.Field<string>("Value"),
                                        Income = t11.Income,
                                        Country = t11.Country,
                                        ProfilePic = t11.ProfilePic,

                                    }).AsEnumerable()
                            join t14 in Income.AsEnumerable()
                            on t13.Income equals t14.Field<string>("Key") into table
                            from p in table.DefaultIfEmpty()
                            select new
                            {
                                usr_id = t13.usr_id,
                                MotherTongue = t13.MotherTongue,
                                Religion = t13.Religion,
                                Height = t13.Height,
                                Caste = t13.Caste,
                                Education = t13.Education,
                                Occupation = t13.Occupation,
                                Income = p == null ? "" : p.Field<string>("Value"),
                                Country = t13.Country,
                                ProfilePic = t13.ProfilePic,

                            }).AsEnumerable()
                    join t16 in Country.AsEnumerable()
                    on t15.Country equals t16.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        usr_id = t15.usr_id,
                        MotherTongue = t15.MotherTongue,
                        Religion = t15.Religion,
                        Height = t15.Height,
                        Caste = t15.Caste,
                        Education = t15.Education,
                        Occupation = t15.Occupation,
                        Income = t15.Income,
                        Country = p == null ? "" : p.Field<string>("Value"),
                        ProfilePic = t15.ProfilePic,

                    };

        Grd_Search_Result.DataSource = query;
        Grd_Search_Result.DataBind();
    }
    


    //--function to accept the interest
    [System.Web.Services.WebMethod]
    public static void AcceptInterest(string UserIdFrom)
    {
        string ToUserId = Convert.ToString(HttpContext.Current.Session["UserId"]);
        string sql = "update usr_ExpressInterest set InterestPending='1' where Usr_id_to='"+ToUserId+"' and usr_id_from='"+UserIdFrom+"'";
        string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        SqlConnection con = new SqlConnection(_connection);
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

    }

}