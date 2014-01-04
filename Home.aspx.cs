using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;


using System.Data;
using System.Data.SqlClient;


public partial class Home : System.Web.UI.Page
{
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
        dt.Columns.Add("Key",typeof(string));
        dt.Columns.Add("Value",typeof(string));
        
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
                        Key=t0.Key,
                        Value=t0.Value,
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
        else if (Gender_Female.Checked){
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
        string password = txt_password.Value;
        string password_confirm = txt_confirm_password.Value;
        string NoOfChilDren = ddl_no_of_children.Value;
        string maritalstatus = ddl_marital_status.Value;
        string ChildrenLivingWith = ddl_children_staying_with.Value;
        
        Boolean trms_condition_check = term_cndtn_acpt.Checked;


        if (profile_posted_by == "0" || name == "" || gender == "" || dob_day == "0" || dob_month == "" || dob_year == "" || religion == "0" || mother_tongue == "0" || country == "0" || mobile_number == "" || email == "" || password == "" || maritalstatus == "0" || trms_condition_check == false || mobile_number.Length!=10 || password_confirm == "")
        {
            Response.Write("<script type='text/javascript'>alert('Fields Marked With * are Mandatory and mobile number should be 10 characters long and accept the terms n contion to proceed');</script>");

        }
        else
        {
            SqlConnection con = new SqlConnection(_connection);
            string sql = "select count(*) from usr_details where usr_email='"+email+"'";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            int email_present = Convert.ToInt32(cmd.ExecuteScalar());
            con.Close();

            if (email_present > 0)
            {
                Page.ClientScript.RegisterStartupScript(typeof(Page), "EmailPresent", "<script type='text/javascript'>alert('The Email You Have Provided is already Taken.');</script>");
            }
            else
            {

                if (password_confirm == password)
                {

                    string user_code = get_user_code();
                    sql = "insert into usr_details(usr_id,usr_name,usr_gender,usr_dob_day,usr_dob_month,usr_dob_year,usr_religion,usr_mother_tongue,usr_caste,usr_country,usr_mobile,usr_email,usr_password,usr_profile_posted_by,usr_marital_status,usr_profile_pic,usr_children_living_with) " +
                        "values('" + user_code + "','" + name + "','" + gender + "','" + dob_day + "','" + dob_month + "','" + dob_year + "','" + religion + "','" + mother_tongue + "','" + caste + "','" + country + "','" + mobile_number + "','" + email + "','" + password + "','" + profile_posted_by + "','" + maritalstatus + "','" + profile_pic + "','" + ChildrenLivingWith + "');";
                    cmd = new SqlCommand(sql, con);


                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Session["UserId"] = user_code;
                    Response.Redirect("~/RegisterPersonalDetails.aspx");
                }
                else
                {
                    Response.Write("<script type='text/javascript'>alert('Password Mismatch..Plsease retype password');</script>");
                }

            }
        }

    }
    //protected void LogIn_Click(object sender, EventArgs e)
    //{
    //    string email = Request.Form["txt_email_login"];
    //    string password = Request.Form["txt_password_login"];
    //    SqlConnection con = new SqlConnection(_connection);
    //    string sql = "select usr_id from usr_details where usr_email='"+email+"' and usr_password='"+password+"';";
    //    SqlCommand cmd = new SqlCommand(sql, con);


    //    con.Open();
    //    string user_code = Convert.ToString(cmd.ExecuteScalar());
    //    con.Close();


    //    if (user_code != null && user_code!="")
    //    {
    //        Session["UserId"] = user_code;
    //        Response.Redirect("~/Users/Profile.aspx");
    //    }

    //}
    public string get_user_code()
    {
        string user_code = "";
        string query = "select usr_id from usr_details order by usr_id desc";
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

}