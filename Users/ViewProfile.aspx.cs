using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;



public partial class Users_ViewProfile : System.Web.UI.Page
{

    string _connection;

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["ProfileView"] == null)
        {
            Response.Redirect("~/Users/MyMatches.aspx");
        }
        _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;


        if (!IsPostBack)
        {
            fill_user_picture();
            fill_about_user();
            fill_basic_info();
            fill_education_occupation();
            fill_religious_attributes();
            fill_Physical_Attributes();
            fill_ContactInformation();
            FillFamilyDetails();
        }


    }

    private void fill_user_picture()
    {
        string usr_id = Request.QueryString["ProfileView"];

        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(_connection);
        string sql = "select usr_profile_pic from usr_details where usr_id='" + usr_id + "';";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(dt);

        Frm_ProfilePic.DataSource = dt;
        Frm_ProfilePic.DataBind();
    }

    private void fill_about_user()
    {
        string usr_id = Request.QueryString["ProfileView"];

        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(_connection);
        string sql = "select usr_about from usr_details where usr_id='" + usr_id + "';";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(dt);

        Frm_About_User.DataSource = dt;
        Frm_About_User.DataBind();

    }
    private void fill_basic_info()
    {
        string usr_id = Request.QueryString["ProfileView"];


        DataTable dt = new DataTable();
        DataTable Profile_Posted_By = new DataTable();
        DataTable Marital_status = new DataTable();
        DataTable NoOfChildren = new DataTable();
        DataTable ChildrenStayingWith = new DataTable();


        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/ProfilePostedBy.xml");
        ds.ReadXml(path);
        Profile_Posted_By = ds.Tables["ProfilePostedBy"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/MaritalStatus.xml");
        ds.ReadXml(path);
        Marital_status = ds.Tables["MaritalStatus"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/NoOfChildren.xml");
        ds.ReadXml(path);
        NoOfChildren = ds.Tables["NoOfChildren"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/ChildrenStayingWith.xml");
        ds.ReadXml(path);
        ChildrenStayingWith = ds.Tables["ChildrenStayingWith"];


        SqlConnection con = new SqlConnection(_connection);
        string sql = "select usr_profile_posted_by,usr_name,usr_gender,usr_dob_day,usr_dob_month,usr_dob_year,usr_marital_status,usr_no_of_children,usr_children_living_with from usr_details where usr_id='" + usr_id + "';";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(dt);



        var query = from t7 in
                        (
                            from t5 in
                                (
                                 from t3 in
                                     (from t1 in dt.AsEnumerable()
                                      join t2 in Profile_Posted_By.AsEnumerable()
                                      on t1.Field<string>("usr_profile_posted_by") equals t2.Field<string>("Key") into table
                                      from p in table.DefaultIfEmpty()
                                      select new
                                      {
                                          ProfilePostedBy_Key = p == null ? "" : p.Field<string>("Key"),
                                          ProfilePostedBy = p == null ? "" : p.Field<string>("Value"),
                                          usr_name = t1.Field<string>("usr_name"),
                                          usr_gender = t1.Field<string>("usr_gender"),
                                          usr_dob_day = t1.Field<int>("usr_dob_day"),
                                          usr_dob_month = t1.Field<int>("usr_dob_month"),
                                          usr_dob_year = t1.Field<int>("usr_dob_year"),
                                          marital_status_key = t1.Field<string>("usr_marital_status"),
                                          NoOfChildren_Key = t1.Field<string>("usr_no_of_children"),
                                          ChildrenLivingWith = t1.Field<string>("usr_children_living_with"),
                                      }).AsEnumerable()
                                 join t4 in Marital_status.AsEnumerable()
                                 on t3.marital_status_key equals t4.Field<string>("Key") into table
                                 from p in table.DefaultIfEmpty()
                                 select new
                                 {
                                     ProfilePostedBy_Key = t3.ProfilePostedBy_Key,
                                     ProfilePostedBy = t3.ProfilePostedBy,
                                     usr_name = t3.usr_name,
                                     usr_gender = t3.usr_gender,
                                     usr_dob_day = t3.usr_dob_day,
                                     usr_dob_month = t3.usr_dob_month,
                                     usr_dob_year = t3.usr_dob_year,
                                     marital_status_key = p == null ? "" : p.Field<string>("Key"),
                                     Marital_status = p == null ? "" : p.Field<string>("Value"),
                                     NoOfChildren_Key = t3.NoOfChildren_Key,
                                     ChildrenLivingWith = t3.ChildrenLivingWith,
                                 }).AsEnumerable()
                            join t6 in NoOfChildren.AsEnumerable()
                            on t5.NoOfChildren_Key equals t6.Field<string>("Key") into table
                            from p in table.DefaultIfEmpty()
                            select new
                            {
                                ProfilePostedBy_Key = t5.ProfilePostedBy_Key,
                                ProfilePostedBy = t5.ProfilePostedBy,
                                usr_name = t5.usr_name,
                                usr_gender = t5.usr_gender,
                                usr_dob_day = t5.usr_dob_day,
                                usr_dob_month = t5.usr_dob_month,
                                usr_dob_year = t5.usr_dob_year,
                                marital_status_key = t5.marital_status_key,
                                Marital_status = t5.Marital_status,
                                NoOfChildrenKey = p == null ? "" : p.Field<string>("Key"),
                                NoOfChildren = p == null ? "" : p.Field<string>("Value"),
                                ChildrenLivingWith = t5.ChildrenLivingWith,
                            }).AsEnumerable()
                    join t8 in ChildrenStayingWith.AsEnumerable()
                    on t7.ChildrenLivingWith equals t8.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        ProfilePostedBy_Key=t7.ProfilePostedBy,
                        ProfilePostedBy=t7.ProfilePostedBy,
                        usr_name=t7.usr_name,
                        usr_gender=t7.usr_gender,
                        usr_dob_day=t7.usr_dob_day,
                        usr_dob_month=t7.usr_dob_month,
                        usr_dob_year=t7.usr_dob_year,
                        marital_status_key=t7.marital_status_key,
                        Marital_status=t7.Marital_status,
                        NoOfChildrenKey=t7.NoOfChildrenKey,
                        NoOfChildren=t7.NoOfChildren,
                        ChildrenLivingWithKey=p==null?"":p.Field<string>("Key"),
                        ChildrenLivingWith=p==null?"":p.Field<string>("Value")
                    };





        frm_basic_info.DataSource = query;
        frm_basic_info.DataBind();

    }
    private void fill_education_occupation()
    {
        string usr_id = Request.QueryString["ProfileView"];


        DataTable dt = new DataTable();
        DataTable OccupationDetails = new DataTable();
        DataTable EducationDetails = new DataTable();
        DataTable Income = new DataTable();

        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/OccupationDetails.xml");
        ds.ReadXml(path);
        OccupationDetails = ds.Tables["OccupationDetails"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/EducationDetails.xml");
        ds.ReadXml(path);
        EducationDetails = ds.Tables["EducationDetails"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Income.xml");
        ds.ReadXml(path);
        Income = ds.Tables["Income"];




        SqlConnection con = new SqlConnection(_connection);
        string sql = "select usr_occupation,usr_highest_education,usr_income,usr_occupation_details,usr_education_details from usr_details where usr_id='" + usr_id + "';";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(dt);


        var query = from t5 in
                        (
                            from t3 in
                                (
                                    from t1 in dt.AsEnumerable()
                                    join t2 in OccupationDetails.AsEnumerable()
                                    on t1.Field<string>("usr_occupation") equals t2.Field<string>("Key") into table
                                    from p in table.DefaultIfEmpty()
                                    select new
                                    {
                                        Education_Key = t1.Field<string>("usr_highest_education"),
                                        Occupation_Key = p == null ? "" : p.Field<string>("Key"),
                                        Occupation = p == null ? "" : p.Field<string>("Value"),
                                        Income_Key = t1.Field<string>("usr_income"),
                                        Education_details = t1.Field<string>("usr_education_details"),
                                        Occupation_details = t1.Field<string>("usr_occupation_details"),
                                    }).AsEnumerable()
                            join t4 in EducationDetails.AsEnumerable()
                            on t3.Education_Key equals t4.Field<string>("Key") into table
                            from p in table.DefaultIfEmpty()
                            select new
                            {
                                Education_Key = p == null ? "" : p.Field<string>("Key"),
                                Education = p == null ? "" : p.Field<string>("Value"),
                                Occupation_Key = t3.Occupation_Key,
                                Occupation = t3.Occupation,
                                Income_Key = t3.Income_Key,
                                Occupation_details = t3.Occupation_details,
                                Education_details = t3.Education_details,
                            }).AsEnumerable()
                    join t6 in Income.AsEnumerable()
                    on t5.Income_Key equals t6.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        Education_Key = t5.Education_Key,
                        Education = t5.Education,
                        Occupation_Key = t5.Occupation_Key,
                        Occupation = t5.Occupation,
                        Income_Key = p == null ? "" : p.Field<string>("Key"),
                        Income = p == null ? "" : p.Field<string>("Value"),
                        Occupation_details = t5.Occupation_details,
                        Education_details = t5.Education_details,
                    };



        Frm_Education_Occupation.DataSource = query;
        Frm_Education_Occupation.DataBind();
    }
    private void fill_religious_attributes()
    {

        string usr_id = Request.QueryString["ProfileView"];


        DataTable dt = new DataTable();
        DataTable Caste = new DataTable();
        DataTable Religion = new DataTable();
        DataTable MotherTongue = new DataTable();
        DataTable Mangalik = new DataTable();
        DataTable Nakshatra = new DataTable();
        DataTable Sunsign = new DataTable();


        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Religion.xml");
        ds.ReadXml(path);
        Religion = ds.Tables["Religion"];


        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Caste.xml");
        ds.ReadXml(path);
        Caste = ds.Tables["Caste"];


        ds = new DataSet();
        path = Server.MapPath("~/App_Data/MotherTongue.xml");
        ds.ReadXml(path);
        MotherTongue = ds.Tables["MotherTongue"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Mangalik.xml");
        ds.ReadXml(path);
        Mangalik = ds.Tables["Mangalik"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Nakshatra.xml");
        ds.ReadXml(path);
        Nakshatra = ds.Tables["Nakshatra"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/SunSign.xml");
        ds.ReadXml(path);
        Sunsign = ds.Tables["SunSign"];


        SqlConnection con = new SqlConnection(_connection);
        string sql = "select usr_religion,usr_mother_tongue,usr_caste,usr_mangalik,usr_nakshatra,usr_sunsign,usr_subcaste,usr_gotra,usr_birth_place from usr_details where usr_id='" + usr_id + "';";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(dt);


        var query = from t11 in
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
                                                            join t2 in Religion.AsEnumerable()
                                                            on t1.Field<string>("usr_religion") equals t2.Field<string>("Key") into table
                                                            from p in table.DefaultIfEmpty()
                                                            select new
                                                            {
                                                                Religion_Key = p == null ? "" : p.Field<string>("Key"),
                                                                Religion = p == null ? "" : p.Field<string>("Value"),
                                                                MotherTongue_Key = t1.Field<string>("usr_mother_tongue"),
                                                                Caste_Key = t1.Field<string>("usr_caste"),
                                                                Mangalik_Key = t1.Field<string>("usr_mangalik"),
                                                                Nakshatra_Key = t1.Field<string>("usr_nakshatra"),
                                                                SunSign_Key = t1.Field<string>("usr_sunsign"),
                                                                SubCaste = t1.Field<string>("usr_subcaste"),
                                                                Gotra = t1.Field<string>("usr_gotra"),
                                                                BirthPlace = t1.Field<string>("usr_birth_place"),
                                                            }).AsEnumerable()
                                                    join t4 in Caste.AsEnumerable()
                                                    on t3.Caste_Key equals t4.Field<string>("Key") into table
                                                    from p in table.DefaultIfEmpty()
                                                    select new
                                                    {
                                                        Religion_Key = t3.Religion_Key,
                                                        Religion = t3.Religion,
                                                        Caste_Key = p == null ? "" : p.Field<string>("Key"),
                                                        Caste = p == null ? "" : p.Field<string>("Value"),
                                                        MotherTongue_Key = t3.MotherTongue_Key,
                                                        Mangalik_Key = t3.Mangalik_Key,
                                                        Nakshatra_Key = t3.Nakshatra_Key,
                                                        SunSign_Key = t3.SunSign_Key,
                                                        SunCaste = t3.SubCaste,
                                                        Gotra = t3.Gotra,
                                                        BirthPlace = t3.BirthPlace,
                                                    }).AsEnumerable()
                                            join t6 in MotherTongue.AsEnumerable()
                                            on t5.MotherTongue_Key equals t6.Field<string>("Key") into table
                                            from p in table.DefaultIfEmpty()
                                            select new
                                            {
                                                Religion_Key = t5.Religion_Key,
                                                Religion = t5.Religion,
                                                MotherTongue_Key = p == null ? "" : p.Field<string>("Key"),
                                                MotherTongue = p == null ? "" : p.Field<string>("Value"),
                                                Caste_Key = t5.Caste_Key,
                                                Caste = t5.Caste,
                                                Mangalik_Key = t5.Mangalik_Key,
                                                Nakshatra_Key = t5.Nakshatra_Key,
                                                SunSign_Key = t5.SunSign_Key,
                                                SubCaste = t5.SunCaste,
                                                Gotra = t5.Gotra,
                                                BirthPlace = t5.BirthPlace,
                                            }).AsEnumerable()
                                    join t8 in Mangalik.AsEnumerable()
                                    on t7.Mangalik_Key equals t8.Field<string>("Key") into table
                                    from p in table.DefaultIfEmpty()
                                    select new
                                    {
                                        Religion_Key = t7.Religion_Key,
                                        Religion = t7.Religion,
                                        Caste_Key = t7.Caste_Key,
                                        Caste = t7.Caste,
                                        MotherTongue_Key = t7.MotherTongue_Key,
                                        MotherTongue = t7.MotherTongue,
                                        Mangalik_Key = p == null ? "" : p.Field<string>("Key"),
                                        Mangalik = p == null ? "" : p.Field<string>("Value"),
                                        Nakshatra_Key = t7.Nakshatra_Key,
                                        Sunsign_Key = t7.SunSign_Key,
                                        SubCaste = t7.SubCaste,
                                        Gotra = t7.Gotra,
                                        BirthPlace = t7.BirthPlace,
                                    }).AsEnumerable()
                            join t10 in Nakshatra.AsEnumerable()
                            on t9.Nakshatra_Key equals t10.Field<string>("Key") into table
                            from p in table.DefaultIfEmpty()
                            select new
                            {
                                Religion_Key = t9.Religion_Key,
                                Religion = t9.Religion,
                                Caste_Key = t9.Caste_Key,
                                Caste = t9.Caste,
                                MotherTongue_Key = t9.MotherTongue_Key,
                                MotherTongue = t9.MotherTongue,
                                Mangalik_Key = t9.Mangalik_Key,
                                Mangalik = t9.Mangalik,
                                Nakshatra_Key = p == null ? "" : p.Field<string>("Key"),
                                Nakshatra = p == null ? "" : p.Field<string>("Value"),
                                SunSign_Key = t9.Sunsign_Key,
                                SubCaste = t9.SubCaste,
                                Gotra = t9.Gotra,
                                BirthPlace = t9.BirthPlace,
                            }).AsEnumerable()
                    join t12 in Sunsign.AsEnumerable()
                    on t11.SunSign_Key equals t12.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        Religion_Key = t11.Religion_Key,
                        Religion = t11.Religion,
                        Caste_Key = t11.Caste_Key,
                        Caste = t11.Caste,
                        MotherTongue_Key = t11.MotherTongue_Key,
                        MotherTongue = t11.MotherTongue,
                        Mangalik_Key = t11.Mangalik_Key,
                        Mangalik = t11.Mangalik,
                        Nakshatra_Key = t11.Nakshatra_Key,
                        Nakshatra = t11.Nakshatra,
                        SunSign_key = p == null ? "" : p.Field<string>("Key"),
                        SunSign = p == null ? "" : p.Field<string>("Value"),
                        SubCaste = t11.SubCaste,
                        Gotra = t11.Gotra,
                        BirthPlace = t11.BirthPlace,
                    };






        Frm_Religious_Attributes.DataSource = query;
        Frm_Religious_Attributes.DataBind();

    }
    private void fill_Physical_Attributes()
    {
        string usr_id = Request.QueryString["ProfileView"];


        DataTable dt = new DataTable();
        DataTable Height = new DataTable();
        DataTable Challanged = new DataTable();
        DataTable Diet = new DataTable();
        DataTable BloodGroup = new DataTable();


        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Height.xml");
        ds.ReadXml(path);
        Height = ds.Tables["Height"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Challanged.xml");
        ds.ReadXml(path);
        Challanged = ds.Tables["Challanged"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Diet.xml");
        ds.ReadXml(path);
        Diet = ds.Tables["Diet"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/BloodGroup.xml");
        ds.ReadXml(path);
        BloodGroup = ds.Tables["BloodGroup"];

        SqlConnection con = new SqlConnection(_connection);
        string sql = "select usr_height,usr_weight,usr_challanged,usr_diet,usr_blood_group from usr_details where usr_id='" + usr_id + "';";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(dt);

        var query = from t7 in
                        (
                            from t5 in
                                (
                                    from t3 in
                                        (
                                            from t1 in dt.AsEnumerable()
                                            join t2 in Height.AsEnumerable()
                                            on t1.Field<string>("usr_height") equals t2.Field<string>("Key") into table
                                            from p in table.DefaultIfEmpty()
                                            select new
                                            {
                                                Height_Key = p == null ? "" : p.Field<string>("Key"),
                                                Height = p == null ? "" : p.Field<string>("Value"),
                                                Weight = t1.Field<string>("usr_weight"),
                                                Challanged_Key = t1.Field<string>("usr_challanged"),
                                                Diet_Key = t1.Field<string>("usr_diet"),
                                                BloodGroup_Key = t1.Field<string>("usr_blood_group"),
                                            }).AsEnumerable()
                                    join t4 in Challanged.AsEnumerable()
                                    on t3.Challanged_Key equals t4.Field<string>("Key") into table
                                    from p in table.DefaultIfEmpty()
                                    select new
                                    {
                                        Height_Key = t3.Height,
                                        Height = t3.Height,
                                        Weight = t3.Weight,
                                        Challanged_Key = p == null ? "" : p.Field<string>("Key"),
                                        Challanged = p == null ? "" : p.Field<string>("Value"),
                                        Diet_Key = t3.Diet_Key,
                                        BloodGroup_Key = t3.BloodGroup_Key,
                                    }).AsEnumerable()
                            join t6 in Diet.AsEnumerable()
                            on t5.Diet_Key equals t6.Field<string>("Key") into table
                            from p in table.DefaultIfEmpty()
                            select new
                            {
                                Height_Key = t5.Height_Key,
                                Height = t5.Height,
                                Weight = t5.Weight,
                                Challanged_Key = t5.Challanged_Key,
                                Challanged = t5.Challanged,
                                Diet_Key = p == null ? "" : p.Field<string>("Key"),
                                Diet = p == null ? "" : p.Field<string>("Value"),
                                BloodGroup_Key = t5.BloodGroup_Key,
                            }).AsEnumerable()
                    join t8 in BloodGroup.AsEnumerable()
                    on t7.BloodGroup_Key equals t8.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        Height_Key = t7.Height_Key,
                        Height = t7.Height,
                        Weight = t7.Weight,
                        Challanged_Key = t7.Challanged_Key,
                        Challanged = t7.Challanged,
                        Diet_Key = t7.Diet_Key,
                        Diet = t7.Diet,
                        BloodGroup_Key = p == null ? "" : p.Field<string>("Key"),
                        BloodGroup = p == null ? "" : p.Field<string>("Value"),
                    };



        Frm_Physical_Attributes.DataSource = query;
        Frm_Physical_Attributes.DataBind();


    }
    private void fill_ContactInformation()
    {



        if(Convert.ToString(Session["UserId"])=="SP0000001")
        {
            string usr_id = Request.QueryString["ProfileView"];
            DataTable dt = new DataTable();
            string sql = "select usr_email,usr_mobile,usr_land_no,usr_address from usr_details where usr_id='" + usr_id + "';";
            SqlConnection con = new SqlConnection(_connection);
            SqlDataAdapter da = new SqlDataAdapter(sql, con);

            da.Fill(dt);
            Frm_Contact_Information.DataSource = dt;
            Frm_Contact_Information.DataBind();
        }

    }
    private void FillFamilyDetails()
    {
        string usr_id = Request.QueryString["ProfileView"];
        DataTable dt = new DataTable();
        string sql = "select usr_family_value,usr_family_type,usr_ancestral_origin,usr_fathers_occupation,usr_mothers_occupation,usr_brothers,usr_sisters,usr_brothers_married,usr_sister_married from usr_details where usr_id='" + usr_id + "';";
        SqlConnection con = new SqlConnection(_connection);
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(dt);

        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/FamilyType.xml");
        ds.ReadXml(path);
        DataTable FamilyType = ds.Tables["FamilyType"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/FamilyValues.xml");
        ds.ReadXml(path);
        DataTable FamilyValue = ds.Tables["FamilyValues"];


        var query = from t3 in
                        (
                            from t1 in dt.AsEnumerable()
                            join t2 in FamilyType.AsEnumerable()
                            on t1.Field<string>("usr_family_type") equals t2.Field<string>("Key") into table
                            from p in table.DefaultIfEmpty()
                            select new
                            {
                                AncestralOrigin = t1.Field<string>("usr_ancestral_origin"),
                                FathersOccupation = t1.Field<string>("usr_fathers_occupation"),
                                MothersOccupation = t1.Field<string>("usr_mothers_occupation"),
                                Brothers = t1.Field<string>("usr_brothers"),
                                Sisters = t1.Field<string>("usr_sisters"),
                                BrothersMarried = t1.Field<string>("usr_brothers_married"),
                                SistersMarried = t1.Field<string>("usr_sister_married"),
                                FamilyTypeKey = p == null ? "" : p.Field<string>("Key"),
                                FamilyType = p == null ? "" : p.Field<string>("Value"),
                                FamilyValueKey = t1.Field<string>("usr_family_value"),
                            }).AsEnumerable()
                    join t4 in FamilyValue.AsEnumerable()
                    on t3.FamilyValueKey equals t4.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        AncestralOrigin = t3.AncestralOrigin,
                        FamilyTypeKey = t3.FamilyTypeKey,
                        FamilyType = t3.FamilyType,
                        FamilyValueKey = p == null ? "" : p.Field<string>("Key"),
                        FamilyValue = p == null ? "" : p.Field<string>("Value"),
                        FathersOccupation = t3.FathersOccupation,
                        MothersOccupation = t3.MothersOccupation,
                        Brothers = t3.Brothers,
                        Sisters = t3.Sisters,
                        BrothersMarried = t3.BrothersMarried,
                        SistersMarried = t3.SistersMarried,
                    };


        Frm_Family_Details.DataSource = query;
        Frm_Family_Details.DataBind();

    }
}