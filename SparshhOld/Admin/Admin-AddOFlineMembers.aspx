<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" %>
<%@ Import Namespace="System"  %>
<%@ Import Namespace="System.Collections.Generic"  %>
<%@ Import Namespace="System.Linq"  %>
<%@ Import Namespace="System.Web"  %>
<%@ Import Namespace="System.Web.UI.WebControls"  %>
<%@ Import Namespace="System.Web.Services"  %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>
<%@ Import Namespace="System.IO"  %>

<script runat="server">
    string _connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        if (!IsPostBack)
        {

            FillMotherTongue();
            FillDobDay();
            FillDobMonth();
            FillDobYear();
            FillCountryLivingIn();
            FillReligion();
            FillNoOfChildren();
            FillMaritalStatus();
            FillChildrenStayingWith();
            FillHeight();
            FillddlBloodGroup();
            FillddlChallanged();
            FillddlDiet();
            FillEducation();
            FillOccupation();
            FillIncome();
            FillSunSign();
            FillMangalikDetails();
            FillFamilyValues();
            FillFamilyType();
            FillSmokingHabit();
            FillDrinkingHabit();
            FillBodyType();
            FillBodyComplexion();
            FillMoonSign();
            FillNakshatra();
            FillHoroscodeMatch();
            FillFamilyStatus();
            FillFathersOccupation();
            FillMothersOccupation();
            FillState();
            FillCity();
            FillGender();
        }
    }
    private void FillChildrenStayingWith()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/ChildrenStayingWith.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["ChildrenStayingWith"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Option";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["ChildrenStayingWith"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_children_staying_with.DataSource = query;
        ddl_children_staying_with.DataTextField = "Value";
        ddl_children_staying_with.DataValueField = "Key";
        ddl_children_staying_with.DataBind();
    }
    private void FillMotherTongue()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MotherTongue.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["MotherTongue"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select MotherTongue";
        dt.Rows.Add(dr);


        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["MotherTongue"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_mother_tongue.DataSource = query;
        ddl_mother_tongue.DataTextField = "Value";
        ddl_mother_tongue.DataValueField = "Key";
        ddl_mother_tongue.DataBind();
    }
    private void FillNoOfChildren()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/NoOfChildren.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["NoOfChildren"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select No Of Children";
        dt.Rows.Add(dr);


        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["NoOfChildren"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_no_of_children.DataSource = query;
        ddl_no_of_children.DataTextField = "Value";
        ddl_no_of_children.DataValueField = "Key";
        ddl_no_of_children.DataBind();


    }
    private void FillDobDay()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("Key", typeof(string));
        dt.Columns.Add("Value", typeof(string));

        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "dd";
        dt.Rows.Add(dr);


        for (int i = 1; i <= 31; i++)
        {
            dr = dt.NewRow();
            dr["Key"] = i;
            dr["Value"] = i;
            dt.Rows.Add(dr);
        }

        ddl_dob_day.DataSource = dt;
        ddl_dob_day.DataTextField = "Value";
        ddl_dob_day.DataValueField = "Key";
        ddl_dob_day.DataBind();

    }
    private void FillDobMonth()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("Key", typeof(string));
        dt.Columns.Add("Value", typeof(string));

        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "mm";
        dt.Rows.Add(dr);


        for (int i = 1; i <= 12; i++)
        {
            dr = dt.NewRow();
            dr["Key"] = i;
            dr["Value"] = i;
            dt.Rows.Add(dr);
        }

        ddl_dob_month.DataSource = dt;
        ddl_dob_month.DataTextField = "Value";
        ddl_dob_month.DataValueField = "Key";
        ddl_dob_month.DataBind();
    }
    private void FillDobYear()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("Key", typeof(string));
        dt.Columns.Add("Value", typeof(string));

        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "yyyy";
        dt.Rows.Add(dr);


        for (int i = 1930; i <= 2013; i++)
        {
            dr = dt.NewRow();
            dr["Key"] = i;
            dr["Value"] = i;
            dt.Rows.Add(dr);
        }

        ddl_dob_year.DataSource = dt;
        ddl_dob_year.DataTextField = "Value";
        ddl_dob_year.DataValueField = "Key";
        ddl_dob_year.DataBind();
    }
    private void FillCountryLivingIn()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Country.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["Country"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Country";
        dt.Rows.Add(dr);
        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["Country"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };
        ddl_country.DataSource = query;
        ddl_country.DataValueField = "Key";
        ddl_country.DataTextField = "Value";
        ddl_country.DataBind();
    }
    private void FillReligion()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Religion.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["Religion"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Relegion";
        dt.Rows.Add(dr);


        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["Religion"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_religion.DataSource = query;
        ddl_religion.DataValueField = "Key";
        ddl_religion.DataTextField = "Value";
        ddl_religion.DataBind();
    }
    public void ddlReligionChange(object sender, EventArgs e)
    {
        string religion_key = ddl_religion.Value;
        DataSet ds = new DataSet();
        string path = System.Web.HttpContext.Current.Server.MapPath("~/App_Data/Caste.xml");
        ds.ReadXml(path);
        DataTable dt = ds.Tables["Caste"];

        DataTable caste = dt.Clone();
        DataRow dr = caste.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Caste";
        caste.Rows.Add(dr);


        var query = from t0 in
                        (from table in caste.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in dt.AsEnumerable()
                            where table.Field<string>("Religion-Key") == religion_key
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_Caste.DataSource = query;
        ddl_Caste.DataTextField = "Value";
        ddl_Caste.DataValueField = "Key";
        ddl_Caste.DataBind();
    }
    private void FillMaritalStatus()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MaritalStatus.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["MaritalStatus"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Marital Status";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["MaritalStatus"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_marital_status.DataSource = query;
        ddl_marital_status.DataTextField = "Value";
        ddl_marital_status.DataValueField = "Key";
        ddl_marital_status.DataBind();
    }

    private void FillHeight()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Height.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["Height"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Height";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["Height"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };
        ddl_height.DataSource = query;
        ddl_height.DataTextField = "Value";
        ddl_height.DataValueField = "Key";
        ddl_height.DataBind();
    }
    private void FillddlBloodGroup()
    {

        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/BloodGroup.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["BloodGroup"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Blood Group";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["BloodGroup"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_blood_group.DataSource = query;
        ddl_blood_group.DataTextField = "Value";
        ddl_blood_group.DataValueField = "Key";
        ddl_blood_group.DataBind();

    }
    private void FillddlChallanged()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Challanged.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["Challanged"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Physical Status";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["Challanged"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_challanged.DataSource = query;
        ddl_challanged.DataTextField = "Value";
        ddl_challanged.DataValueField = "Key";
        ddl_challanged.DataBind();
    }
    private void FillddlDiet()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Diet.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["Diet"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Diet";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["Diet"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_diet.DataSource = query;
        ddl_diet.DataTextField = "Value";
        ddl_diet.DataValueField = "Key";
        ddl_diet.DataBind();
    }
    private void FillEducation()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/EducationDetails.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["EducationDetails"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Highest Education";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["EducationDetails"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };


        ddl_highest_education.DataSource = query;
        ddl_highest_education.DataTextField = "Value";
        ddl_highest_education.DataValueField = "Key";
        ddl_highest_education.DataBind();

    }
    private void FillOccupation()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/OccupationDetails.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["OccupationDetails"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Occupation";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["OccupationDetails"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };
        ddl_occupation.DataSource = query;
        ddl_occupation.DataTextField = "Value";
        ddl_occupation.DataValueField = "Key";
        ddl_occupation.DataBind();
    }
    private void FillIncome()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Income.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["Income"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Income";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["Income"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };
        ddl_income.DataSource = query;
        ddl_income.DataTextField = "Value";
        ddl_income.DataValueField = "Key";
        ddl_income.DataBind();
    }
    private void FillSunSign()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/SunSign.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["SunSign"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select SunSign";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["SunSign"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };
        ddl_sunsign.DataSource = query;
        ddl_sunsign.DataTextField = "Value";
        ddl_sunsign.DataValueField = "Key";
        ddl_sunsign.DataBind();
    }
    private void FillMoonSign()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/SunSign.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["SunSign"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Moon Sign";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["SunSign"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_moon_sign.DataSource = query;
        ddl_moon_sign.DataValueField = "Key";
        ddl_moon_sign.DataTextField = "Value";
        ddl_moon_sign.DataBind();
        
    }
    private void FillMangalikDetails()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Mangalik.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["Mangalik"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Mangalik Type";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["Mangalik"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };
        ddl_mangalik.DataSource = query;
        ddl_mangalik.DataTextField = "Value";
        ddl_mangalik.DataValueField = "Key";
        ddl_mangalik.DataBind();
    }
    private void FillFamilyValues()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/FamilyValues.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["FamilyValues"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Family Values";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["FamilyValues"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_family_values.DataSource = query;
        ddl_family_values.DataTextField = "Value";
        ddl_family_values.DataValueField = "Key";
        ddl_family_values.DataBind();
    }
    private void FillFamilyType()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/FamilyType.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["FamilyType"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Family Type";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["FamilyType"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_family_type.DataSource = query;
        ddl_family_type.DataTextField = "Value";
        ddl_family_type.DataValueField = "Key";
        ddl_family_type.DataBind();
    }
    private void FillSmokingHabit()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/SmokingHabit.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["SmokingHabit"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Smoking Habit";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["SmokingHabit"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };
        
        ddl_smoking_habit.DataSource = query;
        ddl_smoking_habit.DataValueField = "Key";
        ddl_smoking_habit.DataTextField = "Value";
        ddl_smoking_habit.DataBind();
    }
    private void FillDrinkingHabit()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/DrinkingHabit.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["DrinkingHabit"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Drinking Habit";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["DrinkingHabit"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_drinking_habit.DataSource = query;
        ddl_drinking_habit.DataValueField = "Key";
        ddl_drinking_habit.DataTextField = "Value";
        ddl_drinking_habit.DataBind();
        
    }
    private void FillBodyType()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/BodyType.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["BodyType"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Body Type";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["BodyType"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_body_type.DataSource = query;
        ddl_body_type.DataValueField = "Key";
        ddl_body_type.DataTextField = "Value";
        ddl_body_type.DataBind();

    }
    private void FillBodyComplexion()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/BodyComplexion.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["BodyComplexion"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Body Complexion";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["BodyComplexion"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_body_complexion.DataSource = query;
        ddl_body_complexion.DataValueField = "Key";
        ddl_body_complexion.DataTextField = "Value";
        ddl_body_complexion.DataBind();
                
    }
    private void FillNakshatra()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Nakshatra.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["Nakshatra"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Nakshatra";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["Nakshatra"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_nakshatra.DataSource = query;
        ddl_nakshatra.DataValueField = "Key";
        ddl_nakshatra.DataTextField = "Value";
        ddl_nakshatra.DataBind();
    }
    private void FillHoroscodeMatch()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/HoroscopeMatch.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["HoroscopeMatch"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Horoscope Match";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["HoroscopeMatch"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_horoscope_match.DataSource = query;
        ddl_horoscope_match.DataValueField = "Key";
        ddl_horoscope_match.DataTextField = "Value";
        ddl_horoscope_match.DataBind();
        
    }

    private void FillFamilyStatus()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/FamilyStatus.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["FamilyStatus"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Family Status";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["FamilyStatus"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_family_status.DataSource = query;
        ddl_family_status.DataTextField = "Value";
        ddl_family_status.DataValueField = "Key";
        ddl_family_status.DataBind();

    }
    private void FillFathersOccupation()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/FathersOccupation.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["FathersOccupation"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Father's Occupation";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["FathersOccupation"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_fathers_occupation.DataSource = query;
        ddl_fathers_occupation.DataTextField = "Value";
        ddl_fathers_occupation.DataValueField = "Key";
        ddl_fathers_occupation.DataBind();

    }
    private void FillMothersOccupation()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MothersOccupation.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["MothersOccupation"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Mothers's Occupation";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["MothersOccupation"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_MothersOccupation.DataSource = query;
        ddl_MothersOccupation.DataValueField = "Key";
        ddl_MothersOccupation.DataTextField = "Value";
        ddl_MothersOccupation.DataBind();
        
    }
    private void FillState()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/State.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["State"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select State";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["State"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_state.DataSource = query;
        ddl_state.DataTextField = "Value";
        ddl_state.DataValueField = "Key";
        ddl_state.DataBind();

    }
    private void FillCity()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/City.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["City"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select City";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["City"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_city.DataSource = query;
        ddl_city.DataTextField = "Value";
        ddl_city.DataValueField = "Key";
        ddl_city.DataBind();

    }
    private void FillGender()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Gender.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["Gender"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Gender";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["Gender"].AsEnumerable()
                            select new
                            {
                                Key = table.Field<string>("Key"),
                                Value = table.Field<string>("Value"),
                            }).AsEnumerable()
                    select new
                    {
                        Key = t0.Key,
                        Value = t0.Value,
                    };

        ddl_gender.DataSource = query;
        ddl_gender.DataTextField = "Value";
        ddl_gender.DataValueField = "Key";
        ddl_gender.DataBind();

    }
    protected void Register_Click(object sender, EventArgs e)
    {

        //about me
        string about_me = txt_about_me.Value;
        //basic information
        string name = txt_name.Value;
        string gender = ddl_gender.Value;
        string maritalstatus = ddl_marital_status.Value;
        string NoOfChilDren = ddl_no_of_children.Value;
        string ChildrenLivingWith = ddl_children_staying_with.Value;
        string diet = ddl_diet.Value;
        string dob_day = ddl_dob_day.Value;
        string dob_month = ddl_dob_month.Value;
        string dob_year = ddl_dob_year.Value;
        string placeofBirth = txt_place_of_birth.Value;
        string Smoking_Habit = ddl_smoking_habit.Value;
        string drinking_habit = ddl_drinking_habit.Value;
        string BasicInfoMoreDetails = txt_basicinfo_more_details.Value;
        //physical attributes
        string BodYType = ddl_body_type.Value;
        string BodyComplexion = ddl_body_complexion.Value;
        string challenged = ddl_challanged.Value;
        string height = ddl_height.Value;
        string weight = txt_weight.Value;
        string blood_grop = ddl_blood_group.Value;
        string PhysicalAttributesMoreDetails = txt_physicalattributes_more_details.Value;
        //religious attributes        
        string mother_tongue = ddl_mother_tongue.Value;
        string religion = ddl_religion.Value;
        string caste = ddl_Caste.Value;
        string subcaste = txt_subcaste.Value;
        string Mangalik = ddl_mangalik.Value;
        string gotra = txt_gotra.Value;
        string sunsign = ddl_sunsign.Value;
        string MoonSign = ddl_moon_sign.Value;
        string Nakshatra = ddl_nakshatra.Value;
        string HoroscopeMatch = ddl_horoscope_match.Value;
        string MoreReligionDetails = txt_morereligion_details.Value;
        //Education and Occupation attributes
        string highest_education = ddl_highest_education.Value;
        string education_details = txt_education_details.Value;
        string occupation = ddl_occupation.Value;
        string occupation_details = txt_occupation_details.Value;
        string income = ddl_income.Value;
        string MoreEducationOccupation = txt_more_education_occupation.Value;
        //Family Details
        string family_value = ddl_family_values.Value;
        string family_type = ddl_family_type.Value;
        string FamilyStatus = ddl_family_status.Value;
        string ancestral_origin = txt_family_origin.Value;
        string fathers_occupation = ddl_fathers_occupation.Value;
        string fathers_occupation_details = txt_fathers_occupation_details.Value;
        string mothers_occupation = ddl_MothersOccupation.Value;
        string mothers_occupation_details = txt_mothers_occupation_details.Value;
        string no_of_brothers = txt_no_brothers.Value;
        string no_of_brothers_married = txt_married_brothers_no.Value;
        string no_of_sisters = txt_no_sisters.Value;
        string no_of_sisters_married = txt_no_sisters_married.Value;
        string more_family_details = txt_more_famili_details.Value;
        //contact details
        string country = ddl_country.Value;
        string state = ddl_state.Value;
        string citizenship = txt_citizenship.Value;
        string city = ddl_city.Value;
        string present_address = txt_present_address.Value;
        string permanent_address = txt_permanent_address.Value;
        string mobile_number = txt_mobile_no.Value;
        string other_contact = txt_other_contact.Value;
        string morecontactDetails = txt_contact_info_more_details.Value;
        //adding member profile picture
        string picture_folder_name = ConfigurationManager.AppSettings["MemberPictureFolder"];
        string file_path = Server.MapPath("~/" + picture_folder_name + "/");
        HttpPostedFile file = picture_uploader.PostedFile;
        string profile_pic_name = "";
        if (file.FileName != "")
        {
            profile_pic_name = generate_picture_name(file_path, file.FileName.Split('.')[0], file.FileName.Split('.')[1]);
            file.SaveAs(file_path + profile_pic_name);
        }
        else if(gender == "1")
        {
            profile_pic_name = "male.jpg";
        }
        else if (gender == "2")
        {
            profile_pic_name = "female.jpg";
        }
        
        

        string user_code = get_user_code();
        string sql = "DECLARE @RC int " +
                     "DECLARE @usr_id nvarchar(9) " +
                     "/*PROFILE PIC*/ " +
                     "DECLARE @usr_profile_pic varchar(max) " +
                     "/*ABOUT USER*/ " +
                     "DECLARE @usr_about varchar(max) " +
                     "/*BASIC INFORMATION*/ " +
                     "DECLARE @usr_name varchar(max) " +
                     "DECLARE @usr_gender varchar(7) " +
                     "DECLARE @usr_dob_day int " +
                     "DECLARE @usr_dob_month int " +
                     "DECLARE @usr_dob_year int " +
                     "DECLARE @usr_place_of_birth varchar(max) " +
                     "DECLARE @usr_marital_status varchar(3) " +
                     "DECLARE @usr_no_children varchar(3) " +
                     "DECLARE @usr_children_staying_with varchar(3) " +
                     "DECLARE @usr_diet varchar(3) " +
                     "DECLARE @usr_smoking_habit varchar(3) " +
                     "DECLARE @usr_drinking_habit varchar(3) " +
                     "DECLARE @usr_more_basic_details varchar(max) " +
                     "/*PHYSICAL ATTRIBUTES*/ " +
                     "DECLARE @usr_body_type varchar(3) " +
                     "DECLARE @usr_body_complexion varchar(3) " +
                     "DECLARE @usr_physically_challanged varchar(3) " +
                     "DECLARE @usr_height varchar(3) " +
                     "DECLARE @usr_weight varchar(3) " +
                     "DECLARE @usr_blood_group varchar(3) " +
                     "DECLARE @usr_more_physical_attributes varchar(max) " +
                     "/*RELIGIOUS ATTRIBUTES*/ " +
                     "DECLARE @usr_mother_tongue varchar(3) " +
                     "DECLARE @usr_religion varchar(3) " +
                     "DECLARE @usr_caste varchar(3) " +
                     "DECLARE @usr_subcaste varchar(3) " +
                     "DECLARE @usr_mangalik varchar(3) " +
                     "DECLARE @usr_gotra varchar(3) " +
                     "DECLARE @usr_sunsign varchar(3) " +
                     "DECLARE @usr_moonsign varchar(3) " +
                     "DECLARE @usr_nakshatra varchar(3) " +
                     "DECLARE @usr_horoscope_match varchar(3) " +
                     "DECLARE @usr_more_religious_details varchar(max) " +
                     "/*EDUCATION AND OCCUPATION ATTRIBUTES*/ " +
                     "DECLARE @usr_education_category varchar(3) " +
                     "DECLARE @usr_education_details varchar(max) " +
                     "DECLARE @usr_profession varchar(3) " +
                     "DECLARE @usr_professional_details varchar(max) " +
                     "DECLARE @usr_income varchar(3) " +
                     "DECLARE @usr_more_occupaion_details varchar(max) " +
                     "/*FAMILY DETAILS*/ " +
                     "DECLARE @usr_family_values varchar(3) " +
                     "DECLARE @usr_family_type varchar(3) " +
                     "DECLARE @usr_family_status varchar(3) " +
                     "DECLARE @usr_family_origin varchar(max) " +
                     "DECLARE @usr_fathers_occupation varchar(3) " +
                     "DECLARE @usr_fathers_occupation_details varchar(max) " +
                     "DECLARE @usr_mothers_occupation varchar(3) " +
                     "DECLARE @usr_mothers_occupation_details varchar(max) " +
                     "DECLARE @usr_no_brothers varchar(max) " +
                     "DECLARE @usr_no_brothers_married varchar(max) " +
                     "DECLARE @usr_no_sisters varchar(max) " +
                     "DECLARE @usr_no_sisters_married varchar(max) " +
                     "DECLARE @usr_more_family_details varchar(max) " +
                     "/*CONTACT DETAILS*/ " +
                     "DECLARE @usr_country varchar(3) " +
                     "DECLARE @usr_state varchar(3) " +
                     "DECLARE @usr_citizenship varchar(max) " +
                     "DECLARE @usr_city varchar(3) " +
                     "DECLARE @usr_present_address varchar(max) " +
                     "DECLARE @usr_permanent_address varchar(max) " +
                     "DECLARE @usr_mobile_number varchar(max) " +
                     "DECLARE @usr_other_contact varchar(max) " +
                     "DECLARE @usr_more_contact_details varchar(max) " +
                     "/* TODO: Set parameter values here */ " +
                     "SET @usr_id='" + get_user_code() + "' " +
                     "/* USR PROFILE PIC */ " +
                     "SET @usr_profile_pic='" + profile_pic_name + "' " +
                     "/* ABOUT USER */ " +
                     "SET @usr_about='" + about_me + "' " +
                     "/* BASIC INFORMATION */ " +
                     "SET @usr_name='" + name + "' " +
                     "SET @usr_gender='" + gender + "' " +
                     "SET @usr_dob_day='" + dob_day + "' " +
                     "SET @usr_dob_month ='" + dob_month + "' " +
                     "SET @usr_dob_year ='" + dob_year + "' " +
                     "SET @usr_place_of_birth ='" + placeofBirth + "' " +
                     "SET @usr_marital_status ='" + maritalstatus + "' " +
                     "SET @usr_no_children ='" + NoOfChilDren + "' " +
                     "SET @usr_children_staying_with ='" + ChildrenLivingWith + "' " +
                     "SET @usr_diet ='" + diet + "' " +
                     "SET @usr_smoking_habit ='" + Smoking_Habit + "' " +
                     "SET @usr_drinking_habit ='" + drinking_habit + "' " +
                     "SET @usr_more_basic_details ='" + BasicInfoMoreDetails + "' " +
                     "/* PHYSICAL ATTRIBUTES */ " +
                     "SET @usr_body_type ='" + BodYType + "' " +
                     "SET @usr_body_complexion ='" + BodyComplexion + "' " +
                     "SET @usr_physically_challanged ='" + challenged + "' " +
                     "SET @usr_height ='" + height + "' " +
                     "SET @usr_weight ='" + weight + "' " +
                     "SET @usr_blood_group ='" + blood_grop + "' " +
                     "SET @usr_more_physical_attributes ='" + PhysicalAttributesMoreDetails + "' " +
                     "/* RELIGIOUS ATTRIBUTES */ " +
                     "SET @usr_mother_tongue ='" + mother_tongue + "' " +
                     "SET @usr_religion ='" + religion + "' " +
                     "SET @usr_caste ='" + caste + "' " +
                     "SET @usr_subcaste ='" + subcaste + "' " +
                     "SET @usr_mangalik ='" + Mangalik + "' " +
                     "SET @usr_gotra ='" + gotra + "' " +
                     "SET @usr_sunsign ='" + sunsign + "' " +
                     "SET @usr_moonsign ='" + MoonSign + "' " +
                     "SET @usr_nakshatra ='" + Nakshatra + "' " +
                     "SET @usr_horoscope_match ='" + HoroscopeMatch + "' " +
                     "SET @usr_more_religious_details ='" + MoreReligionDetails + "' " +
                     "/* EDUCATION AND OCCUPATION */ " +
                     "SET @usr_education_category ='" + highest_education + "' " +
                     "SET @usr_education_details ='" + education_details + "' " +
                     "SET @usr_profession ='" + occupation + "' " +
                     "SET @usr_professional_details ='" + occupation_details + "' " +
                     "SET @usr_income ='" + income + "' " +
                     "SET @usr_more_occupaion_details ='" + MoreEducationOccupation + "' " +
                     "/* FAMILY ATTRIBUTES */ " +
                     "SET @usr_family_values ='" + family_value + "' " +
                     "SET @usr_family_type ='" + family_type + "' " +
                     "SET @usr_family_status ='" + FamilyStatus + "' " +
                     "SET @usr_family_origin ='" + ancestral_origin + "' " +
                     "SET @usr_fathers_occupation ='" + fathers_occupation + "' " +
                     "SET @usr_fathers_occupation_details ='" + fathers_occupation_details + "' " +
                     "SET @usr_mothers_occupation ='" + mothers_occupation + "' " +
                     "SET @usr_mothers_occupation_details ='" + mothers_occupation_details + "' " +
                     "SET @usr_no_brothers ='" + no_of_brothers + "' " +
                     "SET @usr_no_brothers_married ='" + no_of_brothers_married + "' " +
                     "SET @usr_no_sisters ='" + no_of_sisters + "' " +
                     "SET @usr_no_sisters_married ='" + no_of_sisters_married + "' " +
                     "SET @usr_more_family_details ='" + more_family_details + "' " +
                     "/* CONTACT DETAILS */ " +
                     "SET @usr_country ='" + country + "' " +
                     "SET @usr_state ='" + state + "' " +
                     "SET @usr_citizenship ='" + citizenship + "' " +
                     "SET @usr_city ='" + city + "' " +
                     "SET @usr_present_address ='" + present_address + "' " +
                     "SET @usr_permanent_address ='" + permanent_address + "' " +
                     "SET @usr_mobile_number ='" + mobile_number + "' " +
                     "SET @usr_other_contact ='" + other_contact + "' " +
                     "SET @usr_more_contact_details ='" + morecontactDetails + "' " +
                     "EXECUTE @RC = CreateOfflineMember @usr_id,@usr_profile_pic,@usr_about,@usr_name,@usr_gender,@usr_dob_day,@usr_dob_month,@usr_dob_year,@usr_place_of_birth,@usr_marital_status,@usr_no_children,@usr_children_staying_with,@usr_diet,@usr_smoking_habit,@usr_drinking_habit,@usr_more_basic_details,@usr_body_type,@usr_body_complexion,@usr_physically_challanged,@usr_height,@usr_weight,@usr_blood_group,@usr_more_physical_attributes,@usr_mother_tongue,@usr_religion,@usr_caste,@usr_subcaste,@usr_mangalik,@usr_gotra,@usr_sunsign,@usr_moonsign,@usr_nakshatra,@usr_horoscope_match,@usr_more_religious_details,@usr_education_category,@usr_education_details,@usr_profession,@usr_professional_details,@usr_income,@usr_more_occupaion_details,@usr_family_values,@usr_family_type,@usr_family_status,@usr_family_origin,@usr_fathers_occupation,@usr_fathers_occupation_details,@usr_mothers_occupation,@usr_mothers_occupation_details,@usr_no_brothers,@usr_no_brothers_married,@usr_no_sisters,@usr_no_sisters_married,@usr_more_family_details,@usr_country,@usr_state,@usr_citizenship,@usr_city,@usr_present_address,@usr_permanent_address,@usr_mobile_number,@usr_other_contact,@usr_more_contact_details";
        
                     SqlConnection con = new SqlConnection(_connection);
                     SqlCommand cmd = new SqlCommand(sql, con);
                     con.Open();
                     cmd.ExecuteNonQuery();
                     con.Close();
                     
                     string javascript = "<script type='text/javascript'>alert('" + "User Successfully Registered" + "');<" + "/script>";
                     Response.Write(javascript);

    }
    public string get_user_code()
    {
        string user_code = "";
        string query = "select usr_id from offline_usr_details order by usr_id desc";
        SqlConnection con = new SqlConnection(_connection);
        con.Open();
        SqlCommand cmd = new SqlCommand(query, con);
        string code = (string)cmd.ExecuteScalar();
        con.Close();

        if (code == null)
        {
            user_code = "SP0000001";
        }
        else
        {
            int i;
            for (i = 2; i < code.Length; i++)
            {
                if (code[i] != '0')
                {
                    break;
                }
            }
            int number = Convert.ToInt32(code.Substring(i)) + 1;
            user_code = code.Substring(0, i).ToUpper() + Convert.ToString(number);
            if (user_code.Length > 9)
            {
                user_code = code.Substring(0, i - 1).ToUpper() + Convert.ToString(number);
            }
        }
        return user_code;
    }
    
    public string generate_picture_name(string file_path, string file_name, string file_ext)
    {
        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        var random = new Random();
        var result = new string(
            Enumerable.Repeat(chars, 4)
                      .Select(s => s[random.Next(s.Length)])
                      .ToArray());

        DirectoryInfo difiles = new DirectoryInfo(file_path);
        var file_present = (from di_file in difiles.GetFiles() where di_file.Name == file_name + result + "." + file_ext select difiles.Name).Count();

        if (file_present == 0) return file_name + result + "." + file_ext;
        return generate_picture_name(file_path, file_name, file_ext);

    }
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="" class="active" >Add Offline Members</a></li>
          </ul>
  </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">


<%--Start of the Content Section--%>

<div class="row size-12" style="margin-top:20px;">
 


 <%--Left Navigation Panel--%>
 <div class="column size-6">
  <div class="container">
   <div>
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a id="tab_about" href="javascript:void(0);" class="panel-inactive-tab" style="font-size:13px;" >Manage Offline Members</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap" style="padding-top:10px;">
                                 <p><a href="Admin-AddOFlineMembers.aspx"><span class="aro"></span>Add Members</a></p>
                                <p><a href="Admin-ViewOfflineMembers.aspx"><span class="aro"></span>View All Members</a></p>
                                <p><a href="Admin-MangeOfflineToken.aspx"><span class="aro"></span>Mnage Token</a></p>
    </div>
   </div>
  </div>
 </div>
<%-- End of Left Navigation Panel--%>


<%--Add Member Panel--%>
<div class="column size-6">
 <div class="container">

 <%--About User--%>
  <div class="row size-12">
  <div>
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a id="A1" href="javascript:void(0);" class="panel-inactive-tab" style="font-size:13px;" >About User</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap" style="padding-top:10px;">
           <textarea class="reg_select_box" style="width:90%;height:100px;" rows="10" cols="10" runat="server" id="txt_about_me">
          </textarea>
          </div>
   </div>  
  </div>
  <%--end about user--%>


  <%--Basic Information--%>
    <div class="row size-12">
  <div>
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a id="A2" href="javascript:void(0);" class="panel-inactive-tab" style="font-size:13px;" >Basic Information</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap" style="padding-top:10px;">
          <table>
                   <tr>
         <td>Full Name</td>
         <td><input type="text" id="txt_name" name="txt_name" class="reg_input_txt" runat="server"/></td>
        </tr>
        <tr>
         <td>Gender</td>
         <td>
           <select id="ddl_gender" runat="server" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>Date Of Birth</td>
         <td>
          <select class="reg_select_box" style="width:60px;" id="ddl_dob_day" name="ddl_dob_day" runat="server"></select>
          <select class="reg_select_box" style="width:60px;" id="ddl_dob_month" name="ddl_dob_month" runat="server"></select>
          <select class="reg_select_box" style="width:80px;" id="ddl_dob_year" name="ddl_dob_year" runat="server"></select>
         </td>
        </tr>
        <tr>
         <td>Place Of Birth</td>
         <td>
          <input class="reg_input_txt" type="text" runat="server" id="txt_place_of_birth" name="txt_place_of_birth" />
         </td>
        </tr>
        <tr>
         <td>Marial Status</td>
         <td><select class="reg_select_box" runat="server" id="ddl_marital_status"></select></td>
        </tr>
        <tr>
         <td>No. Of Children</td>
         <td><select id="ddl_no_of_children" runat="server" class="reg_select_box"></select></td>
        </tr>
        <tr>
         <td>Children Staying With</td>
         <td><select id="ddl_children_staying_with" runat="server" class="reg_select_box"></select></td>
        </tr>
        <tr>
         <td>Diet</td>
         <td class="pad">
          <select  runat="server" id="ddl_diet" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>Smoking Habit</td>
         <td>
          <select id="ddl_smoking_habit" runat="server" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>Drinking Habit</td>
         <td>
          <select id="ddl_drinking_habit" runat="server" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>More Details</td>
         <td>
          <textarea rows="5" cols="30" runat="server" id="txt_basicinfo_more_details" class="reg_input_txt" ></textarea>
         </td>
        </tr>
          </table>
          </div>
   </div>  
  </div>
<%--  End of basic information--%>



  <%--Physical Attributes--%>
    <div class="row size-12">
  <div>
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a id="A3" href="javascript:void(0);" class="panel-inactive-tab" style="font-size:13px;" >Physical Attributes</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap" style="padding-top:10px;">

   <table>
    <tr>
         <td>Body Type</td>
         <td>
          <select id="ddl_body_type" runat="server" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>Body Complexion</td>
         <td>
          <select id="ddl_body_complexion" runat="server" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>Physical Challange</td>
         <td class="pad">
             <select runat="server" id="ddl_challanged" class="reg_select_box">
             </select>
         </td>
        </tr>
        <tr>
         <td>Height</td>
         <td class="pad">
          <select id="ddl_height"  runat="server" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>Weight</td>
         <td class="pad"><input type="text" class="reg_input_txt" runat="server" id="txt_weight"/>(KG)</td>
        </tr>
       <tr>
         <td>Blood Group</td>
         <td class="pad">
          <select class="reg_select_box" id="ddl_blood_group" runat="server">
          </select>
         </td>
        </tr>
        <tr>
         <td>More Details</td>
         <td>
          <textarea rows="5" cols="30" runat="server" id="txt_physicalattributes_more_details" class="reg_input_txt"></textarea>
         </td>
        </tr>
   </table>

          </div>
   </div>  
  </div>
  <%--End of Physical Attributes--%>


    <%--Religious Attributes--%>
    <div class="row size-12">
  <div>
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a id="A4" href="javascript:void(0);" class="panel-inactive-tab" style="font-size:13px;" >Religious Attributes</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap" style="padding-top:10px;">
    <table>
     <tr>
         <td>Mother Tongue</td>
         <td>
          <select class="reg_select_box" id="ddl_mother_tongue" name="ddl_mother_tongue" runat="server"></select>
         </td>
        </tr>
        <tr>
         <td>Religion</td>
         <td>
          <select id="ddl_religion" name="ddl_religion" onchange="form1.submit();document.getElementById('background-overlay').style.display = 'block';document.getElementById('RequestLoaderImg').style.display = 'block';" onserverchange="ddlReligionChange" class="reg_select_box" runat="server"></select>
         </td>
        </tr>
        <tr>
         <td>Caste</td>
         <td>
           <select id="ddl_Caste" name="ddl_Caste" class="reg_select_box" runat="server">
            <option value='0'>--Select Caste</option>
           </select>
         </td>
        </tr>
         <tr>
         <td>Sub Caste</td>
         <td class="pad">
          <input type="text" class="reg_select_box" runat="server" id="txt_subcaste" />
          <span style="color:Red;">*</span>
         </td>
        </tr>
        <tr>
         <td>Chewai Dosham</td>
         <td class="pad">
          <select class="reg_select_box" runat="server" id="ddl_mangalik"></select>
         </td>
        </tr>
        <tr>
         <td>Gotra</td>
         <td class="pad">
          <input type="text" class="reg_input_txt" runat="server" id="txt_gotra" />
         </td>
        </tr>
        <tr>
         <td>Sun Sign</td>
         <td class="pad">
          <select class="reg_select_box" runat="server" id="ddl_sunsign"></select>
         </td>
        </tr>
        <tr>
         <td>Moon Sign</td>
         <td class="pad">
          <select class="reg_select_box" runat="server" id="ddl_moon_sign"></select>
         </td>
        </tr>
        <tr>
         <td>Nakshatra</td>
         <td>
          <select id="ddl_nakshatra" runat="server" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>Horoscope Match</td>
         <td>
          <select id="ddl_horoscope_match" runat="server" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>More Details</td>
         <td>
          <textarea rows="5" cols="30" runat="server" id="txt_morereligion_details" class="reg_input_txt"></textarea>
         </td>
        </tr>
    </table>

          </div>
   </div>  
  </div>
  <%--End of Religious Attributes--%>


    <%--Education And Occupation--%>
    <div class="row size-12">
  <div>
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a id="A5" href="javascript:void(0);" class="panel-inactive-tab" style="font-size:13px;" >Education And Occupation</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap" style="padding-top:10px;">
   <table>
    <tr>
         <td>Education Category</td>
         <td class="pad">
          <select class="reg_select_box" id="ddl_highest_education" runat="server">
          </select>
         </td>
        </tr>
        <tr>
         <td>Education Deatils</td>
         <td class="pad">
          <input type="text" class="reg_input_txt" runat="server" id="txt_education_details" />
         </td>
        </tr>
        <tr>
         <td>Profession</td>
         <td class="pad">
          <select class="reg_select_box" id="ddl_occupation" runat="server">
          </select>
         </td>
        </tr>
        <tr>
         <td>Profession Details</td>
         <td class="pad">
          <input type="text" class="reg_input_txt" id="txt_occupation_details" runat="server" />
         </td>
        </tr>
        <tr>
         <td>Income</td>
         <td class="pad">
          <select class="reg_select_box" id="ddl_income" runat="server"></select>
         </td>
        </tr>
        <tr>
         <td>More Details</td>
         <td>
          <textarea rows="5" cols="30" runat="server" id="txt_more_education_occupation" class="reg_input_txt"></textarea>
         </td>
        </tr>
   </table>

          </div>
   </div>  
  </div>
  <%--end of education an doccupation--%>

      <%--Family Details--%>
    <div class="row size-12">
  <div>
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a id="A6" href="javascript:void(0);" class="panel-inactive-tab" style="font-size:13px;" >Family Details</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap" style="padding-top:10px;">
    <table>
     <tr>
         <td>Family Values</td>
         <td class="pad">
          <select class="reg_select_box" runat="server" id="ddl_family_values"></select>
         </td>
        </tr>
        <tr>
         <td>Family Type</td>
         <td class="pad">
            <select class="reg_select_box" runat="server" id="ddl_family_type"></select>
         </td>
        </tr>
        <tr>
         <td>Family Status</td>
         <td>
          <select class="reg_select_box" runat="server" id="ddl_family_status"></select>
         </td>
        </tr>
        <tr>
         <td>Family Origin</td>
         <td class="pad"><input type="text" class="reg_input_txt" runat="server" id="txt_family_origin" /></td>
        </tr>
        <tr>
       <td>Fathers Occupation</td>
         <td class="pad">
           <select id="ddl_fathers_occupation" runat="server" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>FathersOccupation Details</td>
         <td>
          <textarea rows="5" cols="30" runat="server" id="txt_fathers_occupation_details" class="reg_input_txt"></textarea>
         </td>
        </tr>
        <tr>
         <td>Mothers Occupation</td>
         <td class="pad">
         <select id="ddl_MothersOccupation" runat="server" class="reg_select_box"></select>
         </td>
        </tr>
         <tr>
         <td>Mothers Occupation Details</td>
         <td>
          <textarea rows="5" cols="30" runat="server" id="txt_mothers_occupation_details" class="reg_input_txt"></textarea>
         </td>
        </tr>
        <tr>
         <td>No. Of Brotheres</td>
         <td><input type="text" runat="server" id="txt_no_brothers" class="reg_input_txt" /></td>
        </tr>
        <tr>
         <td>No. of brothers Married</td>
         <td>
          <input type="text" runat="server" id="txt_married_brothers_no" class="reg_input_txt" />
         </td>
        </tr>
        <tr>
         <td>No. of Sisters</td>
         <td><input type="text" runat="server" id="txt_no_sisters" class="reg_input_txt" /></td>
        </tr>
        <tr>
         <td>No. of sisters Married</td>
         <td><input type="text" runat="server" id="txt_no_sisters_married" class="reg_input_txt" /></td>
        </tr>
        <tr>
        <td>More family Details</td>
         <td>
          <textarea runat="server" id="txt_more_famili_details" rows="5" cols="30" class="reg_input_txt"></textarea>
         </td>
        </tr>
    </table>

          </div>
   </div>  
  </div>
  <%--End of family Details--%>

        <%--Contact Details--%>
    <div class="row size-12">
  <div>
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a id="A7" href="javascript:void(0);" class="panel-inactive-tab" style="font-size:13px;" >Contact Details</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap" style="padding-top:10px;">
    <table>
     <tr>
         <td>Country Living In</td>
         <td><select id="ddl_country" name="ddl_country" class="reg_select_box" runat="server" ></select></td>
        </tr>
        <tr>
         <td>State</td>
         <td>
          <select id="ddl_state" runat="server" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>Citizenship</td>
         <td>
         <input type="text" id="txt_citizenship" runat="server" class="reg_input_txt"/>
        </td>
        </tr>
        <tr>
         <td>City</td>
         <td>
          <select id="ddl_city" runat="server" class="reg_select_box"></select>
         </td>
        </tr>
        <tr>
         <td>Present Address</td>
         <td>
          <textarea cols="30" rows="5" runat="server" id="txt_present_address" class="reg_input_txt"></textarea>
         </td>
        </tr>
        <tr>
         <td>Permanent Address</td>
         <td>
          <textarea cols="30" rows="5" runat="server" id="txt_permanent_address" class="reg_input_txt"></textarea>
         </td>
        </tr>
        <tr>
         <td>Mobile Number</td>
         <td><input type="text" name="txt_mobile_no" id="txt_mobile_no" maxlength="10" class="reg_input_txt" runat="server" /></td>
        </tr>
        <tr>
         <td>Other Contact Number</td>
         <td>
          <input type="text" runat="server" id="txt_other_contact" class="reg_input_txt" />
         </td>
        </tr>
        <tr>
         <td>More Details</td>
         <td>
          <textarea rows="5" cols="30" runat="server" id="txt_contact_info_more_details" class="reg_input_txt">
          </textarea>
         </td>
        </tr>
    </table>

          </div>
   </div>  
  </div>
     <%--End of Contact Details--%>

     <%--Upload Profile Picture--%>
    <div class="row size-12">
  <div>
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a id="A8" href="javascript:void(0);" class="panel-inactive-tab" style="font-size:13px;" >Upload Profile Picture</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap" style="padding-top:10px;">
<input type="file" id="picture_uploader" runat="server" />


          </div>
   </div>  
  </div>

  <center><button id="Button1" runat="server" onserverclick="Register_Click" class="purple">Register</button></center>


 </div>
</div>
<%--End Of Add Member Panel--%>


</div>

<%--End of the Content Section--%>

</asp:Content>

