using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;


public partial class Users_Profile : System.Web.UI.Page
{
    string _connection;

    protected void Page_Load(object sender, EventArgs e)
    {


       _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;

        if (!IsPostBack)
        {
            
            DataTable usr = get_token_credential(Request.QueryString["id"]);
            //DataTable usr = get_token_credential("OWJ74B9A");
            string usr_id = Convert.ToString(usr.Rows[0]["usr_id"]);
            int present_year = DateTime.Now.Year;
            int present_month = DateTime.Now.Month;
            int present_day = DateTime.Now.Day;

           

            if (present_year <= Convert.ToInt32(usr.Rows[0]["date_to_year"]) && present_month <= Convert.ToInt32(usr.Rows[0]["date_to_month"]) && present_day <= Convert.ToInt32(usr.Rows[0]["date_to_day"]))
            {
                fill_about_user(usr_id);
                fill_basic_info(usr_id);
                fill_education_occupation(usr_id);
                fill_religious_attributes(usr_id);
                fill_Physical_Attributes(usr_id);
                fill_ContactInformation(usr_id);
                FillFamilyDetails(usr_id);
            }


        }

    }

    private DataTable get_token_credential(string tocken_id)
    {
        string sql = "select usr_id,date_to_day,date_to_month,date_to_year from off_line_tocken where tocken_id='" + tocken_id + "';";
        SqlConnection con = new SqlConnection(_connection);
        DataTable usr = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(usr);
        return usr;
    }
    private void fill_about_user(string usr_id)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(_connection);
        string sql = "select usr_about from offline_usr_details where usr_id='" + usr_id + "';";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(dt);

        Frm_About_User.DataSource = dt;
        Frm_About_User.DataBind();

    }
    private void fill_basic_info(string usr_id)
    {


        DataTable dt = new DataTable();
        DataTable Marital_status = new DataTable();
        DataTable NoOfChildren = new DataTable();
        DataTable ChildrenStayingWith = new DataTable();
        DataTable Diet = new DataTable();
        DataTable SmokingHabit=new DataTable();
        DataTable DrinkingHabit=new DataTable();




        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MaritalStatus.xml");
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

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Diet.xml");
        ds.ReadXml(path);
        Diet = ds.Tables["Diet"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/SmokingHabit.xml");
        ds.ReadXml(path);
        SmokingHabit = ds.Tables["SmokingHabit"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/DrinkingHabit.xml");
        ds.ReadXml(path);
        DrinkingHabit = ds.Tables["DrinkingHabit"];


        SqlConnection con = new SqlConnection(_connection);
        string sql = "select usr_name,usr_gender,usr_dob_day,usr_dob_month,usr_dob_year,usr_place_of_birth,usr_marital_status,usr_no_children,usr_chaildren_staying_with,usr_diet,usr_smoking_habit,usr_drinking_habit,usr_more_basic_details from offline_usr_details where usr_id='"+usr_id+"';";
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
                                                     (from t1 in dt.AsEnumerable()
                                                      join t2 in Marital_status.AsEnumerable()
                                                      on t1.Field<string>("usr_marital_status") equals t2.Field<string>("Key") into table
                                                      from p in table.DefaultIfEmpty()
                                                      select new
                                                      {
                                                          usr_name = t1.Field<string>("usr_name"),
                                                          usr_gender = t1.Field<string>("usr_gender"),
                                                          usr_dob_day = t1.Field<int>("usr_dob_day"),
                                                          usr_dob_month = t1.Field<int>("usr_dob_month"),
                                                          usr_dob_year = t1.Field<int>("usr_dob_year"),
                                                          usr_birth_place = t1.Field<string>("usr_place_of_birth"),
                                                          marital_status = p == null ? "" : p.Field<string>("Value"),
                                                          NoOfChildren_Key = t1.Field<string>("usr_no_children"),
                                                          ChildrenLivingWith_key = t1.Field<string>("usr_chaildren_staying_with"),
                                                          usr_diet_key = t1.Field<string>("usr_diet"),
                                                          usr_smoking_habit_key = t1.Field<string>("usr_smoking_habit"),
                                                          usr_drinking_habit_key = t1.Field<string>("usr_drinking_habit"),
                                                          more_basic_info = t1.Field<string>("usr_more_basic_details")
                                                      }).AsEnumerable()
                                                 join t4 in NoOfChildren.AsEnumerable()
                                                 on t3.NoOfChildren_Key equals t4.Field<string>("Key") into table
                                                 from p in table.DefaultIfEmpty()
                                                 select new
                                                 {
                                                     usr_name = t3.usr_name,
                                                     usr_gender = t3.usr_gender,
                                                     usr_dob_day = t3.usr_dob_day,
                                                     usr_dob_month = t3.usr_dob_month,
                                                     usr_dob_year = t3.usr_dob_year,
                                                     usr_birth_place = t3.usr_birth_place,
                                                     marital_status = t3.marital_status,
                                                     NoOfChildren = p == null ? "" : p.Field<string>("Value"),
                                                     ChildrenLivingWith_key = t3.ChildrenLivingWith_key,
                                                     usr_diet_key = t3.usr_diet_key,
                                                     usr_smoking_habit_key = t3.usr_smoking_habit_key,
                                                     usr_drinking_habit_key = t3.usr_drinking_habit_key,
                                                     more_basic_info = t3.more_basic_info
                                                 }).AsEnumerable()
                                            join t6 in ChildrenStayingWith.AsEnumerable()
                                            on t5.ChildrenLivingWith_key equals t6.Field<string>("Key") into table
                                            from p in table.DefaultIfEmpty()
                                            select new
                                            {
                                                usr_name = t5.usr_name,
                                                usr_gender = t5.usr_gender,
                                                usr_dob_day = t5.usr_dob_day,
                                                usr_dob_month = t5.usr_dob_month,
                                                usr_dob_year = t5.usr_dob_year,
                                                usr_birth_place = t5.usr_birth_place,
                                                marital_status = t5.marital_status,
                                                NoOfChildren = t5.NoOfChildren,
                                                ChildrenLivingWith = p == null ? "" : p.Field<string>("Value"),
                                                usr_diet_key = t5.usr_diet_key,
                                                usr_smoking_habit_key = t5.usr_smoking_habit_key,
                                                usr_drinking_habit_key = t5.usr_drinking_habit_key,
                                                more_basic_info = t5.more_basic_info,
                                            }).AsEnumerable()
                                    join t8 in Diet.AsEnumerable()
                                    on t7.usr_diet_key equals t8.Field<string>("Key") into table
                                    from p in table.DefaultIfEmpty()
                                    select new
                                    {
                                        usr_name = t7.usr_name,
                                        usr_gender = t7.usr_gender,
                                        usr_dob_day = t7.usr_dob_day,
                                        usr_dob_month = t7.usr_dob_month,
                                        usr_dob_year = t7.usr_dob_year,
                                        usr_birth_place = t7.usr_birth_place,
                                        marital_status = t7.marital_status,
                                        NoOfChildren = t7.NoOfChildren,
                                        ChildrenLivingWith = t7.ChildrenLivingWith,
                                        Diet = p == null ? "" : p.Field<string>("Value"),
                                        usr_smoking_habit_key = t7.usr_smoking_habit_key,
                                        usr_drinking_habit_key = t7.usr_drinking_habit_key,
                                        more_basic_info = t7.more_basic_info,
                                    }).AsEnumerable()
                            join t10 in SmokingHabit.AsEnumerable()
                            on t9.usr_smoking_habit_key equals t10.Field<string>("Key") into table
                            from p in table.DefaultIfEmpty()
                            select new
                            {
                                usr_name = t9.usr_name,
                                usr_gender = t9.usr_gender,
                                usr_dob_day = t9.usr_dob_day,
                                usr_dob_month = t9.usr_dob_month,
                                usr_dob_year = t9.usr_dob_year,
                                usr_birth_place = t9.usr_birth_place,
                                marital_status = t9.marital_status,
                                NoOfChildren = t9.NoOfChildren,
                                ChildrenLivingWith = t9.ChildrenLivingWith,
                                Diet = t9.Diet,
                                Smoking_habit = p == null ? "" : p.Field<string>("Value"),
                                usr_drinking_habit_key = t9.usr_drinking_habit_key,
                                more_basic_info = t9.more_basic_info,
                            }).AsEnumerable()
                    join t12 in DrinkingHabit.AsEnumerable()
                    on t11.usr_drinking_habit_key equals t12.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        usr_name = t11.usr_name,
                        usr_gender = t11.usr_gender,
                        usr_dob_day = t11.usr_dob_day,
                        usr_dob_month = t11.usr_dob_month,
                        usr_dob_year = t11.usr_dob_year,
                        usr_birth_place = t11.usr_birth_place,
                        marital_status = t11.marital_status,
                        NoOfChildren = t11.NoOfChildren,
                        ChildrenLivingWith = t11.ChildrenLivingWith,
                        Diet = t11.Diet,
                        Smoking_habit = t11.Smoking_habit,
                        Drinking_habit=p==null?"":p.Field<string>("Value"),
                        more_basic_info = t11.more_basic_info
                    };

        frm_basic_info.DataSource = query;
        frm_basic_info.DataBind();

    }
    private void fill_Physical_Attributes(string usr_id)
    {


        DataTable dt = new DataTable();
        DataTable BodyType = new DataTable();
        DataTable BodyComplexion = new DataTable();
        DataTable Challanged = new DataTable();
        DataTable Height = new DataTable();
        DataTable BloodGroup = new DataTable();



        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Height.xml");
        ds.ReadXml(path);
        Height = ds.Tables["Height"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/BodyType.xml");
        ds.ReadXml(path);
        BodyType = ds.Tables["BodyType"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/BodyComplexion.xml");
        ds.ReadXml(path);
        BodyComplexion = ds.Tables["BodyComplexion"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Challanged.xml");
        ds.ReadXml(path);
        Challanged = ds.Tables["Challanged"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/BloodGroup.xml");
        ds.ReadXml(path);
        BloodGroup = ds.Tables["BloodGroup"];

        SqlConnection con = new SqlConnection(_connection);
        string sql = "select usr_body_type,usr_body_complexion,usr_physically_chalanged,usr_height,usr_weight,usr_blood_group,usr_more_physical_sttributes from offline_usr_details where usr_id='" + usr_id + "';";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(dt);






        var query = from t9 in
                        (
                            from t7 in
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
                                                        bodytype_key = t1.Field<string>("usr_body_type"),
                                                        complecion_key = t1.Field<string>("usr_body_complexion"),
                                                        Challanged_Key = t1.Field<string>("usr_physically_chalanged"),
                                                        Height = p == null ? "" : p.Field<string>("Value"),
                                                        Weight = t1.Field<string>("usr_weight"),
                                                        BloodGroup_Key = t1.Field<string>("usr_blood_group"),
                                                        more_details = t1.Field<string>("usr_more_physical_sttributes")
                                                    }).AsEnumerable()
                                            join t4 in Challanged.AsEnumerable()
                                            on t3.Challanged_Key equals t4.Field<string>("Key") into table
                                            from p in table.DefaultIfEmpty()
                                            select new
                                            {
                                                bodytype_key = t3.bodytype_key,
                                                complecion_key = t3.complecion_key,
                                                Challanged = p == null ? "" : p.Field<string>("Value"),
                                                Height = t3.Height,
                                                Weight = t3.Weight,
                                                BloodGroup_Key = t3.BloodGroup_Key,
                                                more_details = t3.more_details
                                            }).AsEnumerable()
                                    join t6 in BodyType.AsEnumerable()
                                    on t5.bodytype_key equals t6.Field<string>("Key") into table
                                    from p in table.DefaultIfEmpty()
                                    select new
                                    {
                                        BodyType = p == null ? "" : p.Field<string>("Value"),
                                        complecion_key = t5.complecion_key,
                                        Challanged = t5.Challanged,
                                        Height = t5.Height,
                                        Weight = t5.Weight,
                                        BloodGroup_Key = t5.BloodGroup_Key,
                                        more_details = t5.more_details,
                                    }).AsEnumerable()
                            join t8 in BloodGroup.AsEnumerable()
                            on t7.BloodGroup_Key equals t8.Field<string>("Key") into table
                            from p in table.DefaultIfEmpty()
                            select new
                            {
                                BodyType = t7.BodyType,
                                complecion_key = t7.complecion_key,
                                Challanged = t7.Challanged,
                                Height = t7.Height,
                                Weight = t7.Weight,
                                BloodGroup = p == null ? "" : p.Field<string>("Value"),
                                more_details = t7.more_details,
                            }).AsEnumerable()
                    join t10 in BodyComplexion.AsEnumerable()
                    on t9.complecion_key equals t10.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        BodyType = t9.BodyType,
                        Complexion = p == null ? "" : p.Field<string>("Value"),
                        Challanged = t9.Challanged,
                        Height = t9.Height,
                        Weight = t9.Weight,
                        BloodGroup = t9.BloodGroup,
                        more_details = t9.more_details,
                    };





        Frm_Physical_Attributes.DataSource = query;
        Frm_Physical_Attributes.DataBind();


    }

    private void fill_education_occupation(string usr_id)
    {


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
                                        Education_details=t1.Field<string>("usr_education_details"),
                                        Occupation_details=t1.Field<string>("usr_occupation_details"),
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
                                Occupation_details=t3.Occupation_details,
                                Education_details=t3.Education_details,
                            }).AsEnumerable()
                    join t6 in Income.AsEnumerable()
                    on t5.Income_Key equals t6.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        Education_Key=t5.Education_Key,
                        Education=t5.Education,
                        Occupation_Key=t5.Occupation_Key,
                        Occupation=t5.Occupation,
                        Income_Key=p==null? "":p.Field<string>("Key"),
                        Income=p==null?"":p.Field<string>("Value"),
                        Occupation_details=t5.Occupation_details,
                        Education_details=t5.Education_details,
                    };



        Frm_Education_Occupation.DataSource = query;
        Frm_Education_Occupation.DataBind();
    }
    private void fill_religious_attributes(string usr_id)
    {
        
        
        DataTable dt = new DataTable();
        DataTable Caste = new DataTable();
        DataTable Religion = new DataTable();
        DataTable MotherTongue = new DataTable();
        DataTable Mangalik = new DataTable();
        DataTable Nakshatra = new DataTable();
        DataTable Sunsign = new DataTable();


        DataSet  ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Religion.xml");
        ds.ReadXml(path);
        Religion=ds.Tables["Religion"];


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
        string sql = "select usr_religion,usr_mother_tongue,usr_caste,usr_mangalik,usr_nakshatra,usr_sunsign,usr_subcaste,usr_gotra,usr_birth_place from usr_details where usr_id='"+usr_id+"';";
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
                                                                SubCaste=t1.Field<string>("usr_subcaste"),
                                                                Gotra=t1.Field<string>("usr_gotra"),
                                                                BirthPlace=t1.Field<string>("usr_birth_place"),
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
                                                        SunCaste=t3.SubCaste,
                                                        Gotra=t3.Gotra,
                                                        BirthPlace=t3.BirthPlace,
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
                                                SubCaste=t5.SunCaste,
                                                Gotra=t5.Gotra,
                                                BirthPlace=t5.BirthPlace,
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
                                        SubCaste=t7.SubCaste,
                                        Gotra=t7.Gotra,
                                        BirthPlace=t7.BirthPlace,
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
                                SubCaste=t9.SubCaste,
                                Gotra=t9.Gotra,
                                BirthPlace=t9.BirthPlace,
                            }).AsEnumerable()
                    join t12 in Sunsign.AsEnumerable()
                    on t11.SunSign_Key equals t12.Field<string>("Key") into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        Religion_Key = t11.Religion_Key,
                        Religion=t11.Religion,
                        Caste_Key=t11.Caste_Key,
                        Caste=t11.Caste,
                        MotherTongue_Key=t11.MotherTongue_Key,
                        MotherTongue=t11.MotherTongue,
                        Mangalik_Key=t11.Mangalik_Key,
                        Mangalik=t11.Mangalik,
                        Nakshatra_Key=t11.Nakshatra_Key,
                        Nakshatra=t11.Nakshatra,
                        SunSign_key=p==null?"":p.Field<string>("Key"),
                        SunSign=p==null?"":p.Field<string>("Value"),
                        SubCaste=t11.SubCaste,
                        Gotra=t11.Gotra,
                        BirthPlace=t11.BirthPlace,
                    };

                    




        Frm_Religious_Attributes.DataSource = query;
        Frm_Religious_Attributes.DataBind();

    }
    private void fill_ContactInformation(string usr_id)
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/country.xml");
        ds.ReadXml(path);
        DataTable country = ds.Tables["country"];


        DataTable dt = new DataTable();
        string sql = "select usr_email,usr_mobile,usr_land_no,usr_address,usr_city,usr_state,usr_country from usr_details where usr_id='" + usr_id + "';";
        SqlConnection con = new SqlConnection(_connection);
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(dt);
        
        var query=from t1 in dt.AsEnumerable()
                  join t2 in country.AsEnumerable() 
                  on t1.Field<string>("usr_country") equals t2.Field<string>("Key") into table
                  from p in table.DefaultIfEmpty()
                  select new{
                      usr_email=t1.Field<string>("usr_email"),
                      usr_mobile=t1.Field<string>("usr_mobile"),
                      usr_land_no=t1.Field<string>("usr_land_no"),
                      usr_address=t1.Field<string>("usr_address"),
                      usr_city=t1.Field<string>("usr_city"),
                      usr_state=t1.Field<string>("usr_state"),
                      usr_country_key=p==null?"":p.Field<string>("Key"),
                      usr_country=p==null?"":p.Field<string>("Value"),

                  };





        Frm_Contact_Information.DataSource = query;
        Frm_Contact_Information.DataBind();
    }
    private void FillFamilyDetails(string usr_id)
    {
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
                                MothersOccupation=t1.Field<string>("usr_mothers_occupation"),
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
                        AncestralOrigin=t3.AncestralOrigin,
                        FamilyTypeKey=t3.FamilyTypeKey,
                        FamilyType=t3.FamilyType,
                        FamilyValueKey=p==null?"":p.Field<string>("Key"),
                        FamilyValue=p==null?"":p.Field<string>("Value"),
                        FathersOccupation=t3.FathersOccupation,
                        MothersOccupation=t3.MothersOccupation,
                        Brothers=t3.Brothers,
                        Sisters=t3.Sisters,
                        BrothersMarried=t3.BrothersMarried,
                        SistersMarried=t3.SistersMarried,
                    };


        Frm_Family_Details.DataSource = query;
        Frm_Family_Details.DataBind();

    }

}