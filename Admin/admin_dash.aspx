<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

        if (Session["UserId"] != null)
        {
            Response.Redirect("~/Users/Profile.aspx");
        }
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
        
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="../Assets/Style/Button.css" rel="Stylesheet" type="text/css" />
<link href="../Assets/Style/lime.css" rel="Stylesheet" type="text/css" />
<link href="../Assets/Style/Navigation.css" rel="Stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <center>
     <h3>Create OFFLine Members</h3>
     <hr />
    </center>


    <div class="row size-12">
     <div class="column size-12">
      <div class="container">
        <div class="frm-divider"></div>
        <strong><label>Profile Posted By</label></strong>
        <select id="ddl_profile_posted_by" name="ddl_profile_posted_by" class="reg_select_box" runat="server"></select>
        <span style="color:Red;">*</span>    
        <div class="frm-divider"></div>
        <strong><label>Full Name</label></strong> 
        <input type="text" id="txt_name" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Gender</label></strong> 
           <input type="radio" value="Male"    id="Gender_Male"  name="radio_gender" runat="server" /><label style="float:none;">Male</label>
           <input type="radio" value="Fe-Male" id="Gender_Female" name="radio_gender" runat="server" /><label style="float:none;">Female</label>
          <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Date Of Birth</label></strong> 
        <select class="reg_select_box" style="width:60px;" id="ddl_dob_day" name="ddl_dob_day" runat="server"></select>
        <select class="reg_select_box" style="width:60px;" id="ddl_dob_month" name="ddl_dob_month" runat="server"></select>
        <select class="reg_select_box" style="width:80px;" id="ddl_dob_year" name="ddl_dob_year" runat="server"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Religion</label></strong> 
        <select id="ddl_religion" name="ddl_religion" onchange="form1.submit();document.getElementById('background-overlay').style.display = 'block';document.getElementById('RequestLoaderImg').style.display = 'block';" onserverchange="ddlReligionChange" class="reg_select_box" runat="server"></select> 
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Mother Tongue</label></strong> 
        <select class="reg_select_box" id="ddl_mother_tongue" name="ddl_mother_tongue" runat="server"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Caste</label></strong> 
        <select id="ddl_Caste" name="ddl_Caste" class="reg_select_box" runat="server">
            <option value='0'>--Select Caste</option>
        </select>
        <div class="frm-divider"></div>
        <strong><label>Country Living In</label></strong> 
        <select id="ddl_country" name="ddl_country" class="reg_select_box" runat="server"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Marial Status</label></strong> 
        <select class="reg_select_box" runat="server" id="ddl_marital_status"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>No. Of Children</label></strong> 
        <select id="ddl_no_of_children" runat="server" class="reg_select_box"></select>
        <div class="frm-divider"></div>
        <strong><label>Children Staying With</label></strong> 
        <select id="ddl_children_staying_with" runat="server" class="reg_select_box"></select>
        <div class="frm-divider"></div>
        <strong><label>Mobile Number</label></strong> 
        <input type="text" name="txt_mobile_no" id="txt_mobile_no" maxlength="10" class="reg_input_txt" runat="server" />
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Email</label></strong> 
        <input type="text" id="txt_email" name="txt_email" class="reg_input_txt" runat="server" />
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
      </div>
     </div>
    </div>



    <table id="register" style="color:Black;">
        <tr>
         <td colspan="2"><h4>Personal Details</h4></td>
        </tr>
        <tr>
         <td colspan="2"><hr /></td>
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
<%--        <tr>
         <td>Body Type</td>
         <td class="pad">
             <asp:RadioButton ID="RadioButton3" runat="server" />Avarage
             <asp:RadioButton ID="RadioButton4" runat="server" />Athletic
             <asp:RadioButton ID="RadioButton5" runat="server" />Slim
             <asp:RadioButton ID="RadioButton6" runat="server" />Heavy
         </td>
        </tr>
        <tr>`   
         <td>Complexion</td>
         <td class="pad"><asp:TextBox ID="TextBox3" runat="server" CssClass="text-select"></asp:TextBox></td>
        </tr>--%>
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
<%--        <tr>
         <td>Star</td>
         <td class=" pad">
          <select class="text-select"></select>
         </td>
        </tr>--%>
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
          <button runat="server">Register</button>
         </td>
        </tr>
      </table>

    </form>
</body>
</html>
