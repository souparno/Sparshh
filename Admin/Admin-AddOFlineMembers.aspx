<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" %>
<%@ Import Namespace="System"  %>
<%@ Import Namespace="System.Collections.Generic"  %>
<%@ Import Namespace="System.Linq"  %>
<%@ Import Namespace="System.Web"  %>
<%@ Import Namespace="System.Web.UI.WebControls"  %>
<%@ Import Namespace="System.Web.Services"  %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>

<script runat="server">
    string _connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        if (!IsPostBack)
        {
            FillProfileCreatedBy();
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
    private void FillProfileCreatedBy()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/ProfilePostedBy.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["ProfilePostedBy"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "--Select Profile Posted By";
        dt.Rows.Add(dr);

        var query = from t0 in
                        (from table in dt.AsEnumerable()
                         select new
                         {
                             Key = table.Field<string>("Key"),
                             Value = table.Field<string>("Value"),
                         }).Concat(
                            from table in ds.Tables["ProfilePostedBy"].AsEnumerable()
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
        ddl_profile_posted_by.DataSource = query;
        ddl_profile_posted_by.DataTextField = "Value";
        ddl_profile_posted_by.DataValueField = "Key";
        ddl_profile_posted_by.DataBind();

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
    protected void Register_Click(object sender, EventArgs e)
    {


        string profile_posted_by = ddl_profile_posted_by.Value;
        string name = txt_name.Value;
        string gender = "";
        string profile_pic = "";

        if (Gender_Male.Checked)
        {
            gender = Gender_Male.Value;
            profile_pic = "male.jpg";
        }
        else if (Gender_Female.Checked)
        {
            gender = Gender_Female.Value;
            profile_pic = "female.jpg";
        }

        string dob_day = ddl_dob_day.Value;
        string dob_month = ddl_dob_month.Value;
        string dob_year = ddl_dob_year.Value;
        string religion = ddl_religion.Value;
        string mother_tongue = ddl_mother_tongue.Value;
        string caste = ddl_Caste.Value;
        string country = ddl_country.Value;
        string mobile_number = txt_mobile_no.Value;
        string email = txt_email.Value;
        string NoOfChilDren = ddl_no_of_children.Value;
        string maritalstatus = ddl_marital_status.Value;
        string ChildrenLivingWith = ddl_children_staying_with.Value;

        string height = ddl_height.Value;
        string weight = txt_weight.Value;
        string challenged = ddl_challanged.Value;
        string blood_grop = ddl_blood_group.Value;
        string diet = ddl_diet.Value;
        string highest_education = ddl_highest_education.Value;
        string education_details = txt_education_details.Value;
        string occupation = ddl_occupation.Value;
        string occupation_details = txt_occupation_details.Value;
        string income = ddl_income.Value;
        string subcaste = txt_subcaste.Value;
        string gotra = txt_gotra.Value;
        string sunsign = ddl_sunsign.Value;
        string Mangalik = ddl_mangalik.Value;
        string family_value = ddl_family_values.Value;
        string family_type = ddl_family_type.Value;
        string fathers_occupation = txt_fathers_occupation.Value;
        string mothers_occupation = txt_mothers_occupation.Value;
        string ancestral_origin = txt_family_origin.Value;
        string about_me = txt_about_me.Value;
        
        if (profile_posted_by == "0" || name == "" || gender == "" || dob_day == "0" || dob_month == "" || dob_year == "" || religion == "0" || mother_tongue == "0" || country == "0" || mobile_number == "" || email == "" || maritalstatus == "0"  || mobile_number.Length != 10 )
        {

            string javascript = "<script type='text/javascript'>alert('" + "Fields Marked With * are Mandatory and mobile number should be 10 characters long" + "');<" + "/script>";
            Response.Write(javascript);
      
            
        }
        else
        {
            SqlConnection con = new SqlConnection(_connection);
            string sql = "select count(*) from usr_details where usr_email='" + email + "'";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            int email_present = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            if (email_present > 0)
            {
                string javascript = "<script type='text/javascript'>alert('" + "The Email You Have Provided is already Taken." + "');<" + "/script>";
                Response.Write(javascript);
            }
            else
            {

                    string user_code = get_user_code();
                    sql = "insert into offline_usr_details(usr_id,usr_name,usr_gender,usr_dob_day,usr_dob_month,usr_dob_year,usr_religion,usr_mother_tongue,usr_caste,usr_country,usr_mobile,usr_email,usr_profile_posted_by,usr_marital_status,usr_profile_pic,usr_children_living_with,usr_height,usr_weight,usr_challanged,usr_blood_group,usr_diet,usr_highest_education,usr_education_details,usr_occupation,usr_occupation_details,usr_income,usr_subcaste,usr_gotra,usr_sunsign,usr_mangalik,usr_family_value,usr_family_type,usr_fathers_occupation,usr_mothers_occupation,usr_ancestral_origin,usr_about) " +
                        "values('" + user_code + "','" + name + "','" + gender + "','" + dob_day + "','" + dob_month + "','" + dob_year + "','" + religion + "','" + mother_tongue + "','" + caste + "','" + country + "','" + mobile_number + "','" + email + "','" + profile_posted_by + "','" + maritalstatus + "','" + profile_pic + "','" + ChildrenLivingWith + "','" + height + "','" + weight + "','" + challenged + "','" + blood_grop + "','" + diet + "','" + highest_education + "','" + education_details + "','" + occupation + "','" + occupation_details + "','" + income + "','" + subcaste + "','" + gotra + "','" + sunsign + "','" + Mangalik + "','" + family_value + "','" + family_type + "','" + fathers_occupation + "','" + mothers_occupation + "','" + ancestral_origin + "','" + about_me + "');";
                    cmd = new SqlCommand(sql, con);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    string javascript = "<script type='text/javascript'>alert('" + "User Successfully Registered" + "');<" + "/script>";
                    Response.Write(javascript);


            }
        }

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
</script>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

<div style="float: left; width: 341px; height: auto;">
            <div class="listin_div" id="offline_membership">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;float: left;" alt="" src="../css/images/box_icon.png" />
                        <div class="top_tex">Manage OFFline Members</div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="Admin-AddOFlineMembers.aspx"><span class="aro"></span>Add Members</a></li>
                                <li><a href=""><span class="aro"></span>View All Members</a></li>
                                <li><a href=""><span class="aro"></span>Create Tocken</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
</div>
<div style="float: left; width: 341px; height: auto;margin-left:200px;">
      <table>
        <tr>
         <td colspan="2">
          <h4>Basic Information</h4>
          <hr />
         </td>
        </tr>
        <tr>
         <td>Profile Posted By</td>
         <td>
          <select id="ddl_profile_posted_by" name="ddl_profile_posted_by" class="reg_select_box" runat="server"></select>
         </td>
        </tr>
        <tr>
         <td>Full Name</td>
         <td><input type="text" id="txt_name" name="txt_name" class="reg_input_txt" runat="server"/></td>
        </tr>
        <tr>
         <td>Gender</td>
         <td>
           <input type="radio" value="Male"    id="Gender_Male"  name="radio_gender" runat="server" /><label style="float:none;">Male</label>
           <input type="radio" value="Fe-Male" id="Gender_Female" name="radio_gender" runat="server" /><label style="float:none;">Female</label>
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
         <td>Religion</td>
         <td>
          <select id="ddl_religion" name="ddl_religion" onchange="form1.submit();document.getElementById('background-overlay').style.display = 'block';document.getElementById('RequestLoaderImg').style.display = 'block';" onserverchange="ddlReligionChange" class="reg_select_box" runat="server"></select>
         </td>
        </tr>
        <tr>
         <td>Mother Tongue</td>
         <td>
          <select class="reg_select_box" id="ddl_mother_tongue" name="ddl_mother_tongue" runat="server"></select>
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
         <td>Country Living In</td>
         <td><select id="ddl_country" name="ddl_country" class="reg_select_box" runat="server"></select></td>
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
         <td>Mobile Number</td>
         <td><input type="text" name="txt_mobile_no" id="txt_mobile_no" maxlength="10" class="reg_input_txt" runat="server" /></td>
        </tr>
        <tr>
         <td>Email</td>
         <td><input type="text" id="txt_email" name="txt_email" class="reg_input_txt" runat="server" /></td>
        </tr>
        <tr>
         <td colspan="2"><h4>Physical Attributes</h4></td>
        </tr>
        <tr>
         <td>Height</td>
         <td class="pad">
          <select id="ddl_height" class="text-select" runat="server"></select>
         </td>
        </tr>
        <tr>
         <td>Weight</td>
         <td class="pad"><input type="text" class="text-select" runat="server" id="txt_weight"/>(KG)</td>
        </tr>
        <tr>
         <td>Physical Challange</td>
         <td class="pad">
             <select class="text-select" runat="server" id="ddl_challanged">
             </select>
             <span style="color:Red;">*</span>             
         </td>
        </tr>
        <tr>
         <td>Blood Group</td>
         <td class="pad">
          <select class="text-select" id="ddl_blood_group" runat="server">
          </select>
          <span style="color:Red;">*</span>
         </td>
        </tr>
        <tr>
         <td>Diet</td>
         <td class="pad">
          <select class="text-select" runat="server" id="ddl_diet"></select>
         </td>
        </tr>
        <tr>
         <td colspan="2"><hr /></td>
        </tr>
        <tr>
         <td colspan="2"><h4>Occupational Attributes</h4></td>
        </tr>
        <tr>
         <td>Highest Education</td>
         <td class="pad">
          <select class="text-select" id="ddl_highest_education" runat="server">
          </select>
          <span style="color:Red;">*</span>
         </td>
        </tr>
        <tr>
         <td>Education Deatils</td>
         <td class="pad">
          <input type="text" class="text-select" runat="server" id="txt_education_details" />
         </td>
        </tr>
        <tr>
         <td>Occupation</td>
         <td class="pad">
          <select class="text-select" id="ddl_occupation" runat="server">
          </select>
          <span style="color:Red;">*</span>
         </td>
        </tr>
        <tr>
         <td>Occupation Details</td>
         <td class="pad">
          <input type="text" class="text-select" id="txt_occupation_details" runat="server" />
         </td>
        </tr>
        <tr>
         <td>Income</td>
         <td class="pad">
          <select class="text-select" id="ddl_income" runat="server"></select>
         </td>
        </tr>
        <tr>
         <td colspan="2"><hr /></td>
        </tr>
        <tr>
         <td colspan="2"><h4>Religious Attributes</h4></td>
        </tr>
        <tr>
         <td>Sub Caste</td>
         <td class="pad">
          <input type="text" class="text-select" runat="server" id="txt_subcaste" />
          <span style="color:Red;">*</span>
         </td>
        </tr>
        <tr>
         <td>Gotra</td>
         <td class="pad">
          <input type="text" class="text-select" runat="server" id="txt_gotra" />
         </td>
        </tr>
        <tr>
         <td>Sun Sign</td>
         <td class="pad">
          <select class="text-select" runat="server" id="ddl_sunsign"></select>
         </td>
        </tr>
        <tr>
         <td>Mangalik</td>
         <td class="pad">
          <select class="text-select" runat="server" id="ddl_mangalik"></select>
         </td>
        </tr>
        <tr>
         <td colspan="2"><hr /></td>
        </tr>
        <tr>
         <td colspan="2"><h4>Family Details</h4></td>
        </tr>
        <tr>
         <td>Family Values</td>
         <td class="pad">
          <select class="text-select" runat="server" id="ddl_family_values"></select>
         </td>
        </tr>
        <tr>
         <td>Family Type</td>
         <td class="pad">
            <select class=" text-select" runat="server" id="ddl_family_type"></select>
         </td>
        </tr>
        <tr>
         <td>Fathers Occupation</td>
         <td class="pad"><input type="text" class="text-select" runat="server" id="txt_fathers_occupation" /></td>
        </tr>
        <tr>
         <td>Mothers Occupation</td>
         <td class="pad"><input type="text" class="text-select" runat="server" id="txt_mothers_occupation" /></td>
        </tr>
        <tr>
         <td>Family Origin</td>
         <td class="pad"><input type="text" class="text-select" runat="server" id="txt_family_origin" /></td>
        </tr>
        <tr>
         <td colspan="2"><hr /></td>
        </tr>
        <tr>
         <td colspan="2"><h4>About Myself</h4></td>
        </tr>
        <tr>
         <td class="pad" colspan="2" >
          <textarea class="text-select" style="width:90%;height:100px;" rows="10" cols="10" runat="server" id="txt_about_me">
          </textarea>
          <span style="color:Red;">*</span>
         </td>
        </tr>
        <tr>
         <td colspan="2">
          <hr />
          <button id="Button1" runat="server" onserverclick="Register_Click">Register</button>
         </td>
        </tr>
      </table>
</div>
</asp:Content>

