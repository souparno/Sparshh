using System;
using System.IO;
using System.Web.Script.Serialization;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Xml;
using System.Web.Services;
using System.Web.UI.HtmlControls;


public partial class Users_MyMatches : System.Web.UI.Page
{
    static string _connection;
    protected void Page_Load(object sender, EventArgs e)
    {

        DataSet ds = new DataSet();
        _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        if (!IsPostBack)
        {

           


            Fill_QuickSearch_MotherTongue();
            Fill_QuickSearch_Religion();
            Fill_QuickSearch_Caste();
            Fill_QuickSearch_MaritalStatus();
            Fill_QuickSearchAge();
            QuickSearch_Bride_Groom();

            Rptr_Fill_Education_Search();
            Rptr_Fill_Occupation_Search();
            Rptr_Fill_Diet();
            Rptr_Profile_posted_By();
            Rptr_MaritalStatus();
            Rptr_MotherTongue();
            Rptr_Religion();
            Rptr_Location();
            Rptr_Mangalik();
            Rptr_Fill_Income();
        
        }


    }
    //Start Of Quick Search Events---->
    private void Fill_QuickSearch_MotherTongue()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MotherTongue.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["MotherTongue"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "";
        dr["Value"] = "--Select MotherTongue";
        dt.Rows.Add(dr);
        dr = dt.NewRow();
        dr["Key"] = "%";
        dr["Value"] = "--Any MotherTongue--";
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
        ddl_mother_tongue.DataValueField = "Key";
        ddl_mother_tongue.DataTextField = "Value";
        ddl_mother_tongue.DataBind();
    }
    private void Fill_QuickSearch_Religion()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Religion.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["Religion"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "";
        dr["Value"] = "--Select Religion";
        dt.Rows.Add(dr);
        dr = dt.NewRow();
        dr["Key"] = "%";
        dr["Value"] = "--Any Religion--";
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
        ddl_religion.DataTextField = "Value";
        ddl_religion.DataValueField = "Key";
        ddl_religion.DataBind();
 
    }
    private void Fill_QuickSearch_Caste()
    {
        DataTable Caste = new DataTable();
        Caste.Columns.Add("Key",typeof(string));
        Caste.Columns.Add("Value",typeof(string));

        DataRow dr = Caste.NewRow();
        dr["Key"] = "";
        dr["Value"] = "--Select Caste--";
        Caste.Rows.Add(dr);

        dr = Caste.NewRow();
        dr["Key"] = "%";
        dr["Value"] = "--Any Caste--";
        Caste.Rows.Add(dr);

        ddl_Caste.DataSource = Caste;
        ddl_Caste.DataTextField = "Value";
        ddl_Caste.DataValueField = "Key";
        ddl_Caste.DataBind();
    }
    public void QuickSearchReligion_OnChange(object sender, EventArgs e)
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Caste.xml");
        ds.ReadXml(path);
        DataTable dt = ds.Tables["Caste"].Clone();
        string religion_key = ddl_religion.Value;


        DataRow dr = dt.NewRow();
        dr["Key"] = "";
        dr["Value"] = "--Select Caste--";
        dt.Rows.Add(dr);
        dr = dt.NewRow();
        dr["Key"] = "%";
        dr["Value"] = "--Any Caste--";
        dt.Rows.Add(dr);




        var query2 = from t0 in
                         (
                             from table in dt.AsEnumerable()
                             select new
                             {
                                 Key = table.Field<string>("Key"),
                                 Value = table.Field<string>("Value"),
                             }).Concat(
                             from table in ds.Tables["Caste"].AsEnumerable()
                             where table.Field<string>("Religion-Key") == religion_key
                             select new
                             {
                                 Key = table.Field<string>("Key"),
                                 Value = table.Field<string>("Value"),
                             }
                             ).AsEnumerable()
                     select new
                     {
                         Key=t0.Key,
                         Value=t0.Value,
                     };


        ddl_Caste.DataSource = query2;
        ddl_Caste.DataTextField = "Value";
        ddl_Caste.DataValueField = "Key";
        ddl_Caste.DataBind();

    }
    private void QuickSearch_Bride_Groom()
    {
        string userid = Convert.ToString(Session["UserId"]);
        SqlConnection con = new SqlConnection(_connection);
        string sql = "select usr_gender from usr_details where usr_id='" + userid + "';";
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        string gender = Convert.ToString(cmd.ExecuteScalar()).Trim();
        con.Close();

        if (gender.Equals("Male"))
        {

            radio_Female.Checked = true;
        }
        else
        {
            radio_male.Checked = true;
        }


    }
    private void Fill_QuickSearch_MaritalStatus()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MaritalStatus.xml");
        ds.ReadXml(path);

        DataTable dt = ds.Tables["MaritalStatus"].Clone();
        DataRow dr = dt.NewRow();
        dr["Key"] = "";
        dr["Value"] = "--Select Marital Status";
        dt.Rows.Add(dr);
        dr = dt.NewRow();
        dr["Key"] = "%";
        dr["Value"] = "--Any Marital Status--";
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
    private void Fill_QuickSearchAge()
    {
        int[] age = {18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70};

        var query1 = from t in age.AsQueryable()
                     orderby t ascending
                     select new
                     {
                         Key=t.ToString(),
                         Value=t.ToString()
                     };

        var query2 = from t in age.AsQueryable()
                     orderby t descending
                     select new
                     {
                         Key = t.ToString(),
                         Value = t.ToString()
                     };

        ddl_age_frm.DataSource = query1;
        ddl_age_frm.DataTextField = "Value";
        ddl_age_frm.DataValueField = "Key";
        ddl_age_frm.DataBind();


        ddl_age_to.DataSource = query2;
        ddl_age_to.DataTextField = "Value";
        ddl_age_to.DataValueField = "Key";
        ddl_age_to.DataBind();
            


    }
    public void QuickSearch_Click(object sender, EventArgs e)
    {
        string selected_mothertongue_key = ddl_mother_tongue.Value;
        string selected_religion_key = ddl_religion.Value;
        string selected_caste_key = ddl_Caste.Value;
        string selected_maritalstatus_key = ddl_marital_status.Value;
        string age_from = ddl_age_frm.Value;
        string age_to = ddl_age_to.Value;


        string search_query = "";
        string and = " and ";
        if (selected_mothertongue_key != "%" && selected_mothertongue_key != "")
        {
            search_query = search_query + "usr_mother_tongue=" + selected_mothertongue_key + and;
        }
        if (selected_religion_key != "%" && selected_religion_key!="")
        {
            search_query = search_query + "usr_religion=" + selected_religion_key + and;
        }
        if (selected_caste_key != "%" && selected_caste_key != "")
        {
            search_query = search_query + "usr_caste=" + selected_caste_key + and;
        }
        if (selected_maritalstatus_key != "%" && selected_maritalstatus_key != "")
        {
            search_query = search_query + "usr_marital_status=" + selected_maritalstatus_key + and;
        }
        if (radio_male.Checked)
        {
            search_query = search_query + "usr_gender='Male'" + and;
        }
        if (radio_Female.Checked)
        {
            search_query = search_query + "usr_gender='Fe-Male'" + and;
        }
        search_query = search_query + System.DateTime.Now.Year + "-usr_dob_year>=" + age_from + " and " + System.DateTime.Now.Year + "-usr_dob_year<=" + age_to + and;

        if (search_query != "")  search_query = "select usr_id,usr_name,usr_mother_tongue,usr_religion,usr_height,usr_caste,usr_highest_education,usr_occupation,usr_income,usr_country,usr_profile_pic from usr_details where " + search_query + "usr_id !='" + Session["UserId"]+"';";
        else search_query = "select usr_id,usr_name,usr_mother_tongue,usr_religion,usr_height,usr_caste,usr_highest_education,usr_occupation,usr_income,usr_country,usr_profile_pic from usr_details where usr_id !=" + Session["UserId"] + "';";
        //lbl_search.InnerText = search_query;

        SqlConnection con = new SqlConnection(_connection);
        SqlDataAdapter da = new SqlDataAdapter(search_query, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        Fill_GridSearchResult(dt);

    }
    //--Start Of RefineSearch Events--->
    private void Rptr_Fill_Education_Search()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Education.xml");
        ds.ReadXml(path);

        Repeater_EducationSearch.DataSource = ds.Tables["Education"];
        Repeater_EducationSearch.DataBind();
    }
    private void Rptr_Fill_Occupation_Search()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Occupation.xml");
        ds.ReadXml(path);

        Repeater_OccupationSearch.DataSource = ds.Tables["Occupation"];
        Repeater_OccupationSearch.DataBind();
    }
    private void Rptr_Fill_Diet()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Diet.xml");
        ds.ReadXml(path);


        Repeater_Diet.DataSource=ds.Tables["Diet"];
        Repeater_Diet.DataBind();
    }
    private void Rptr_Profile_posted_By()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/ProfilePostedBy.xml");
        ds.ReadXml(path);


        REpeater_ProfilepostedBy.DataSource = ds.Tables["ProfilePostedBy"];
        REpeater_ProfilepostedBy.DataBind();
    }
    private void Rptr_MaritalStatus()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MaritalStatus.xml");
        ds.ReadXml(path);


        Repaeter_MaritalStatus.DataSource = ds.Tables["MaritalStatus"];
        Repaeter_MaritalStatus.DataBind();
    }
    private void Rptr_MotherTongue()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MotherTongue.xml");
        ds.ReadXml(path);


        Repeater_MotherTongue.DataSource = ds.Tables["MotherTongue"];
        Repeater_MotherTongue.DataBind();
    }
    private void Rptr_Religion()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Religion.xml");
        ds.ReadXml(path);


        Repeater_religion.DataSource = ds.Tables["Religion"];
        Repeater_religion.DataBind();
    }
    private void Rptr_Location()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Country.xml");
        ds.ReadXml(path);


        Repeater_Location.DataSource = ds.Tables["Country"];
        Repeater_Location.DataBind();
    }
    private void Rptr_Mangalik()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Mangalik.xml");
        ds.ReadXml(path);

        Repeater_MangalikSearch.DataSource=ds.Tables["Mangalik"];
        Repeater_MangalikSearch.DataBind();

    }
    private void Rptr_Fill_Income()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/Income.xml");
        ds.ReadXml(path);

        Repeater_IncomeSearch.DataSource = ds.Tables["Income"];
        Repeater_IncomeSearch.DataBind();
    }
    //--server side function to catch the values of the check box after post back-->
    public void Refine_Search_Education(object sender, EventArgs e)
    {

        if (((HtmlInputCheckBox)sender).Checked)
        {
            if (((HtmlInputCheckBox)sender).Value == "%")
            {
                for (int i = 0; i < Repeater_EducationSearch.Items.Count; i++)
                {
                    HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_EducationSearch.Items[i].FindControl("Education_Chk");
                    chk.Checked = false;
                }
            }
            else
            {
                EducationAll_Chk.Checked = false;
            }
        }
        else
        {
            int flag = 0;
            for (int i = 0; i < Repeater_EducationSearch.Items.Count; i++)
            {
                HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_EducationSearch.Items[i].FindControl("Education_Chk");
                if (chk.Checked == true)
                {
                    flag = 1;
                }

            }

            if (flag == 0) EducationAll_Chk.Checked = true;
        }

        RefineSearch();
    }
    public void Refine_Search_Occupation(object sender, EventArgs e)
    {

        if (((HtmlInputCheckBox)sender).Checked)
        {
            if (((HtmlInputCheckBox)sender).Value == "%")
            {
                for (int i = 0; i < Repeater_OccupationSearch.Items.Count; i++)
                {
                    HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_OccupationSearch.Items[i].FindControl("Occupation_Chk");
                    chk.Checked = false;
                }
            }
            else
            {
                OccupationAll_Chk.Checked = false;
            }
        }
        else
        {
            int flag = 0;
            for (int i = 0; i < Repeater_OccupationSearch.Items.Count; i++)
            {
                HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_OccupationSearch.Items[i].FindControl("Occupation_Chk");
                if (chk.Checked == true)
                {
                    flag = 1;
                }

            }

            if (flag == 0) OccupationAll_Chk.Checked = true;
        }

        RefineSearch();
    }
    public void Refine_Search_Location(object sender, EventArgs e)
    {
        if (((HtmlInputCheckBox)sender).Checked)
        {
            if (((HtmlInputCheckBox)sender).Value == "%")
            {
                for (int i = 0; i < Repeater_Location.Items.Count; i++)
                {
                    HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_Location.Items[i].FindControl("Location_Chk");
                    chk.Checked = false;
                }
            }
            else
            {
                LocationAll_Chk.Checked = false;
            }
        }
        else
        {
            int flag = 0;
            for (int i = 0; i < Repeater_Location.Items.Count; i++)
            {
                HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_OccupationSearch.Items[i].FindControl("Location_Chk");
                if (chk.Checked == true)
                {
                    flag = 1;
                }

            }

            if (flag == 0) LocationAll_Chk.Checked = true;
        }

        RefineSearch();
    }
    public void Refine_Search_Mangalik(object sender, EventArgs e)
    {
        if (((HtmlInputCheckBox)sender).Checked)
        {
            if (((HtmlInputCheckBox)sender).Value == "%")
            {
                for (int i = 0; i < Repeater_MangalikSearch.Items.Count; i++)
                {
                    HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_MangalikSearch.Items[i].FindControl("Mangalik_Chk");
                    chk.Checked = false;
                }
            }
            else
            {
                MangalikAll_Chk.Checked = false;
            }
        }
        else
        {
            int flag = 0;
            for (int i = 0; i < Repeater_MangalikSearch.Items.Count; i++)
            {
                HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_MangalikSearch.Items[i].FindControl("Mangalik_Chk");
                if (chk.Checked == true)
                {
                    flag = 1;
                }

            }

            if (flag == 0) MangalikAll_Chk.Checked = true;
        }

        RefineSearch();
    }
    public void Refine_Search_Diet(object sender, EventArgs e)
    {
        if (((HtmlInputCheckBox)sender).Checked)
        {
            if (((HtmlInputCheckBox)sender).Value == "%")
            {
                for (int i = 0; i < Repeater_Diet.Items.Count; i++)
                {
                    HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_Diet.Items[i].FindControl("Diet_Chk");
                    chk.Checked = false;
                }
            }
            else
            {
                DietAll_Chk.Checked = false;
            }
        }
        else
        {
            int flag = 0;
            for (int i = 0; i < Repeater_Diet.Items.Count; i++)
            {
                HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_Diet.Items[i].FindControl("Diet_Chk");
                if (chk.Checked == true)
                {
                    flag = 1;
                }

            }

            if (flag == 0) DietAll_Chk.Checked = true;
        }

        RefineSearch();
    }
    public void Refine_Search_ProfilePostedBy(object sender, EventArgs e)
    {
        if (((HtmlInputCheckBox)sender).Checked)
        {
            if (((HtmlInputCheckBox)sender).Value == "%")
            {
                for (int i = 0; i < REpeater_ProfilepostedBy.Items.Count; i++)
                {
                    HtmlInputCheckBox chk = (HtmlInputCheckBox)REpeater_ProfilepostedBy.Items[i].FindControl("ProfilePostedBy_Chk");
                    chk.Checked = false;
                }
            }
            else
            {
                ProfilePostedByAll_Chk.Checked = false;
            }
        }
        else
        {
            int flag = 0;
            for (int i = 0; i < REpeater_ProfilepostedBy.Items.Count; i++)
            {
                HtmlInputCheckBox chk = (HtmlInputCheckBox)REpeater_ProfilepostedBy.Items[i].FindControl("ProfilePostedBy_Chk");
                if (chk.Checked == true)
                {
                    flag = 1;
                }

            }

            if (flag == 0) ProfilePostedByAll_Chk.Checked = true;
        }

        RefineSearch();
    }
    public void Refine_Search_MaritalStatus(object sender, EventArgs e)
    {
        if (((HtmlInputCheckBox)sender).Checked)
        {
            if (((HtmlInputCheckBox)sender).Value == "%")
            {
                for (int i = 0; i < Repaeter_MaritalStatus.Items.Count; i++)
                {
                    HtmlInputCheckBox chk = (HtmlInputCheckBox)Repaeter_MaritalStatus.Items[i].FindControl("MaritalStatus_Chk");
                    chk.Checked = false;
                }
            }
            else
            {
                MaritalStatusAll_Chk.Checked = false;
            }
        }
        else
        {
            int flag = 0;
            for (int i = 0; i < REpeater_ProfilepostedBy.Items.Count; i++)
            {
                HtmlInputCheckBox chk = (HtmlInputCheckBox)Repaeter_MaritalStatus.Items[i].FindControl("MaritalStatus_Chk");
                if (chk.Checked == true)
                {
                    flag = 1;
                }

            }

            if (flag == 0) MaritalStatusAll_Chk.Checked = true;
        }

        RefineSearch();
    }
    public void Refine_Search_MotherTongue(object sender, EventArgs e)
    {
        if (((HtmlInputCheckBox)sender).Checked)
        {
            if (((HtmlInputCheckBox)sender).Value == "%")
            {
                for (int i = 0; i < Repeater_MotherTongue.Items.Count; i++)
                {
                    HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_MotherTongue.Items[i].FindControl("MotherTongue_Chk");
                    chk.Checked = false;
                }
            }
            else
            {
                MotherTongueAll_Chk.Checked = false;
            }
        }
        else
        {
            int flag = 0;
            for (int i = 0; i < Repeater_MotherTongue.Items.Count; i++)
            {
                HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_MotherTongue.Items[i].FindControl("MotherTongue_Chk");
                if (chk.Checked == true)
                {
                    flag = 1;
                }

            }

            if (flag == 0) MotherTongueAll_Chk.Checked = true;
        }

        RefineSearch();
    }
    public void Refine_Search_Religion(object sender, EventArgs e)
    {
        if (((HtmlInputCheckBox)sender).Checked)
        {
            if (((HtmlInputCheckBox)sender).Value == "%")
            {
                for (int i = 0; i < Repeater_religion.Items.Count; i++)
                {
                    HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_religion.Items[i].FindControl("Religion_Chk");
                    chk.Checked = false;
                }
            }
            else
            {
                ReligionAll_Chk.Checked = false;
            }
        }
        else
        {
            int flag = 0;
            for (int i = 0; i < Repeater_religion.Items.Count; i++)
            {
                HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_religion.Items[i].FindControl("Religion_Chk");
                if (chk.Checked == true)
                {
                    flag = 1;
                }

            }

            if (flag == 0) ReligionAll_Chk.Checked = true;
        }

        RefineSearch();
    }
    public void Refine_Search_Income(object sender, EventArgs e)
    {
        if (((HtmlInputCheckBox)sender).Checked)
        {
            if (((HtmlInputCheckBox)sender).Value == "%")
            {
                for (int i = 0; i < Repeater_IncomeSearch.Items.Count; i++)
                {
                    HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_IncomeSearch.Items[i].FindControl("Income_Chk");
                    chk.Checked = false;
                }
            }
            else
            {
                IncomeAll_Chk.Checked = false;
            }
        }
        else
        {
            int flag = 0;
            for (int i = 0; i < Repeater_IncomeSearch.Items.Count; i++)
            {
                HtmlInputCheckBox chk = (HtmlInputCheckBox)Repeater_IncomeSearch.Items[i].FindControl("Income_Chk");
                if (chk.Checked == true)
                {
                    flag = 1;
                }

            }

            if (flag == 0) IncomeAll_Chk.Checked = true;
        }

        RefineSearch();
    }
    //-----functions to filter the data as by the user search--->
    public void RefineSearch()
    {



        string search_query = "";
        string and = " and ";

        if ( FilterByEducation() != "")
        {
            search_query = search_query + FilterByEducation() + and;
        }
        if (FilterByOccupation() != "")
        {
            search_query = search_query+ FilterByOccupation() + and;
        }
        if (FilterByLocation() != "")
        {
            search_query = search_query + FilterByLocation() + and;
        }
        if (FilterByMangalik() != "")
        {
            search_query = search_query + FilterByMangalik() + and;
        }
        if (FilterByDiet() != "")
        {
            search_query = search_query + FilterByDiet() + and;
        }
        if (FilterByProfilePostedBy() != "")
        {
            search_query = search_query + FilterByProfilePostedBy() + and;
        }
        if (FilterByMaritalStatus() != "")
        {
            search_query = search_query + FilterByMaritalStatus() + and;
        }
        if (FilterByMotherTongue() != "")
        {
            search_query = search_query + FilterByMotherTongue() + and;
        }
        if (FilterByReligion() != "")
        {
            search_query = search_query + FilterByReligion() + and;
        }
        if (FilterByIncome() != "")
        {
            search_query = search_query + FilterByIncome() + and;
        }

        if (search_query != "")
        {
            search_query = search_query.Substring(0, search_query.Length - 5);
            search_query = "select usr_id,usr_name,usr_mother_tongue,usr_religion,usr_height,usr_caste,usr_highest_education,usr_occupation,usr_income,usr_country,usr_profile_pic from usr_details where " + search_query;
        }
        else
        {
            search_query = "select usr_id,usr_name,usr_mother_tongue,usr_religion,usr_height,usr_caste,usr_highest_education,usr_occupation,usr_income,usr_country,usr_profile_pic from usr_details";
        }
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(_connection);
        SqlDataAdapter da = new SqlDataAdapter(search_query, con);
        da.Fill(dt);
        Fill_GridSearchResult(dt);
        //lbl_search.InnerText = search_query;
    }
    public string FilterByEducation()
    {
        string s = "";
        if (Repeater_EducationSearch.Items.Count >= 1)
        {
            for (int i = 0; i <= Repeater_EducationSearch.Items.Count - 1; i++)
            {
                if (((HtmlInputCheckBox)Repeater_EducationSearch.Items[i].FindControl("Education_Chk")).Checked)
                {
                    s = s + ((HtmlInputCheckBox)Repeater_EducationSearch.Items[i].FindControl("Education_Chk")).Value + ",";
                }
            }

            if (s != "")
            {
                s = s.Substring(0, s.Length - 1);
                string[] arr = s.Split(',');


                DataSet ds = new DataSet();
                string path = Server.MapPath("~/App_Data/EducationDetails.xml");
                ds.ReadXml(path);


                var query = from t1 in ds.Tables["EducationDetails"].AsEnumerable()
                            where arr.Contains(t1.Field<string>("Education-Key"))
                            select new
                            {
                                Key = t1.Field<string>("Key"),
                            };

                int count = 1;
                s = "";
                foreach (var row in query)
                {
                    if (count == query.Count()) break;
                    count++;
                    s = s + row.Key + ",";
                }

                if (query.Count() > 0)
                {
                    s = "usr_highest_education in(" + s + query.ElementAt(query.Count() - 1).Key + ")";
                }

            }

        }
        return s;
    }
    public string FilterByOccupation()
    {
        string s = "";
        if (Repeater_OccupationSearch.Items.Count >= 1)
        {
            for (int i = 0; i <= Repeater_OccupationSearch.Items.Count - 1; i++)
            {
                if (((HtmlInputCheckBox)Repeater_OccupationSearch.Items[i].FindControl("Occupation_Chk")).Checked)
                {
                    s = s + ((HtmlInputCheckBox)Repeater_OccupationSearch.Items[i].FindControl("Occupation_Chk")).Value + ",";
                }
            }

            if (s != "")
            {
                s = s.Substring(0, s.Length - 1);
                string[] arr = s.Split(',');


                DataSet ds = new DataSet();
                string path = Server.MapPath("~/App_Data/OccupationDetails.xml");
                ds.ReadXml(path);


                var query = from t1 in ds.Tables["OccupationDetails"].AsEnumerable()
                            where arr.Contains(t1.Field<string>("Occupation-Key"))
                            select new
                            {
                                Key = t1.Field<string>("Key"),
                            };

                int count = 1;
                s = "";
                foreach (var row in query)
                {
                    if (count == query.Count()) break;
                    count++;
                    s = s + row.Key + ",";
                }

                if (query.Count() > 0)
                {
                    s = "usr_occupation in(" + s + query.ElementAt(query.Count() - 1).Key + ")";
                }

            }
        }
        return s;
    }
    public string FilterByLocation()
    {
        string s = "";
        if (Repeater_Location.Items.Count >= 1)
        {
            for (int i = 0; i <= Repeater_Location.Items.Count - 1; i++)
            {
                if (((HtmlInputCheckBox)Repeater_Location.Items[i].FindControl("Location_Chk")).Checked)
                {
                    s = s + ((HtmlInputCheckBox)Repeater_Location.Items[i].FindControl("Location_Chk")).Value + ",";
                }
            }

            if (s != "")
            {
                s = s.Substring(0, s.Length - 1);
                s = "usr_country in(" + s + ")";
             }

         }
        return s;
       }
    public string FilterByMangalik()
    {
        string s = "";
        if (Repeater_MangalikSearch.Items.Count >= 1)
        {
            for (int i = 0; i <= Repeater_MangalikSearch.Items.Count - 1; i++)
            {
                if (((HtmlInputCheckBox)Repeater_MangalikSearch.Items[i].FindControl("Mangalik_Chk")).Checked)
                {
                    s = s + ((HtmlInputCheckBox)Repeater_MangalikSearch.Items[i].FindControl("Mangalik_Chk")).Value + ",";
                }
            }

            if (s != "")
            {
                s = s.Substring(0, s.Length - 1);
                s = "usr_mangalik in(" + s + ")";
            }

        }
        return s;
    }
    public string FilterByDiet()
    {
        string s = "";
        if (Repeater_Diet.Items.Count >= 1)
        {
            for (int i = 0; i <= Repeater_Diet.Items.Count - 1; i++)
            {
                if (((HtmlInputCheckBox)Repeater_Diet.Items[i].FindControl("Diet_Chk")).Checked)
                {
                    s = s + ((HtmlInputCheckBox)Repeater_Diet.Items[i].FindControl("Diet_Chk")).Value + ",";
                }
            }

            if (s != "")
            {
                s = s.Substring(0, s.Length - 1);
                s = "usr_diet in(" + s + ")";
            }

        }
        return s;
    }
    public string FilterByProfilePostedBy()
    {
        string s = "";
        if (REpeater_ProfilepostedBy.Items.Count >= 1)
        {
            for (int i = 0; i <= REpeater_ProfilepostedBy.Items.Count - 1; i++)
            {
                if (((HtmlInputCheckBox)REpeater_ProfilepostedBy.Items[i].FindControl("ProfilePostedBy_Chk")).Checked)
                {
                    s = s + ((HtmlInputCheckBox)REpeater_ProfilepostedBy.Items[i].FindControl("ProfilePostedBy_Chk")).Value + ",";
                }
            }

            if (s != "")
            {
                s = s.Substring(0, s.Length - 1);
                s = "usr_profile_posted_by in(" + s + ")";
            }

        }
        return s;
    }
    public string FilterByMaritalStatus()
    {
        string s = "";
        if (Repaeter_MaritalStatus.Items.Count >= 1)
        {
            for (int i = 0; i <= Repaeter_MaritalStatus.Items.Count - 1; i++)
            {
                if (((HtmlInputCheckBox)Repaeter_MaritalStatus.Items[i].FindControl("MaritalStatus_Chk")).Checked)
                {
                    s = s + ((HtmlInputCheckBox)Repaeter_MaritalStatus.Items[i].FindControl("MaritalStatus_Chk")).Value + ",";
                }
            }

            if (s != "")
            {
                s = s.Substring(0, s.Length - 1);
                s = "usr_marital_status in(" + s + ")";
            }

        }
        return s;
    }
    public string FilterByMotherTongue()
    {
        string s = "";
        if (Repeater_MotherTongue.Items.Count >= 1)
        {
            for (int i = 0; i <= Repeater_MotherTongue.Items.Count - 1; i++)
            {
                if (((HtmlInputCheckBox)Repeater_MotherTongue.Items[i].FindControl("MotherTongue_Chk")).Checked)
                {
                    s = s + ((HtmlInputCheckBox)Repeater_MotherTongue.Items[i].FindControl("MotherTongue_Chk")).Value + ",";
                }
            }

            if (s != "")
            {
                s = s.Substring(0, s.Length - 1);
                s = "usr_mother_tongue in(" + s + ")";
            }

        }
        return s;
    }
    public string FilterByReligion()
    {
        string s = "";
        if (Repeater_religion.Items.Count >= 1)
        {
            for (int i = 0; i <= Repeater_religion.Items.Count - 1; i++)
            {
                if (((HtmlInputCheckBox)Repeater_religion.Items[i].FindControl("Religion_Chk")).Checked)
                {
                    s = s + ((HtmlInputCheckBox)Repeater_religion.Items[i].FindControl("Religion_Chk")).Value + ",";
                }
            }

            if (s != "")
            {
                s = s.Substring(0, s.Length - 1);
                s = "usr_religion in(" + s + ")";
            }

        }
        return s;
    }
    public string FilterByIncome()
    {
        string s = "";
        if (Repeater_IncomeSearch.Items.Count >= 1)
        {
            for (int i = 0; i <= Repeater_IncomeSearch.Items.Count - 1; i++)
            {
                if (((HtmlInputCheckBox)Repeater_IncomeSearch.Items[i].FindControl("Income_Chk")).Checked)
                {
                    s = s + ((HtmlInputCheckBox)Repeater_IncomeSearch.Items[i].FindControl("Income_Chk")).Value + ",";
                }
            }

            if (s != "")
            {
                s = s.Substring(0, s.Length - 1);
                s = "usr_income in(" + s + ")";
            }

        }
        return s;
    }
    //---Function for the SearchById--->
    public void SearchByIdClick(object sender, EventArgs e)
    {
        string SearchId = txt_searchId.Value;
        string searchQuery = "select usr_id,usr_name,usr_mother_tongue,usr_religion,usr_height,usr_caste,usr_highest_education,usr_occupation,usr_income,usr_country,usr_profile_pic from usr_details where usr_id='"+SearchId+"'";
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(_connection);
        SqlDataAdapter da = new SqlDataAdapter(searchQuery, con);
        da.Fill(dt);
        Fill_GridSearchResult(dt);
    }
    //--End of all RefineSearch Events--->
    private void Fill_GridSearchResult(DataTable dt)
    {
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

        //getting the online users id from the cache
        path = Server.MapPath("../Assets/cache/");
        string json = File.ReadAllText(path + "cache.txt");
        JavaScriptSerializer js = new JavaScriptSerializer();
        Dictionary<string, string> onlineusers = js.Deserialize<Dictionary<string, string>>(json);


        var query = from t17 in
                        (from t15 in
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
                                                                                     Name = t1.Field<string>("usr_name"),
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
                                                                             Name = t3.Name,
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
                                                                     Name = t5.Name,
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
                                                             Name = t7.Name,
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
                                                     Name = t9.Name,
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
                                             Name = t11.Name,
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
                                     Name = t13.Name,
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
                             Name = t15.Name,
                             MotherTongue = t15.MotherTongue,
                             Religion = t15.Religion,
                             Height = t15.Height,
                             Caste = t15.Caste,
                             Education = t15.Education,
                             Occupation = t15.Occupation,
                             Income = t15.Income,
                             Country = p == null ? "" : p.Field<string>("Value"),
                             ProfilePic = t15.ProfilePic,

                         }).AsEnumerable()
                    join t18 in onlineusers
                    on t17.usr_id equals t18.Key into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        usr_id=t17.usr_id,
                        Name=t17.Name,
                        MotherTongue=t17.MotherTongue,
                        Religion=t17.Religion,
                        Height=t17.Height,
                        Caste=t17.Caste,
                        Education=t17.Education,
                        Occupation=t17.Occupation,
                        Income=t17.Income,
                        Country=t17.Country,
                        ProfilePic=t17.ProfilePic,
                        attandance=p.Key!=null? "green.jpg":"",
                    };


        Grd_Search_Result.DataSource = query;
        Grd_Search_Result.DataBind();

    }
}