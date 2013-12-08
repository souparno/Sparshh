using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class RegisterPersonalDetails : System.Web.UI.Page
{
    string _connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;

        if (!IsPostBack)
        {
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


        if (challenged == "0" || blood_grop == "0" || highest_education == "0" || occupation == "0" || subcaste == "" || about_me == "")
        {
            Page.ClientScript.RegisterStartupScript(typeof(Page), "SelectGender", "<script type='text/javascript'>alert('Fields Marked With * are Mandatory');</script>");
        }
        else
        {
            SqlConnection con = new SqlConnection(_connection);
            string user_code = Convert.ToString(Session["UserId"]);
            string sql = "update usr_details set usr_height='"+height+"',usr_weight='"+weight+"',usr_challanged='"+challenged+"',usr_blood_group='"+blood_grop+"',usr_diet='"+diet+"',usr_highest_education='"+highest_education+"',usr_education_details='"+education_details+"',usr_occupation='"+occupation+"',usr_occupation_details='"+occupation_details+"',usr_income='"+income+"',usr_subcaste='"+subcaste+"',usr_gotra='"+gotra+"',usr_sunsign='"+sunsign+"',usr_mangalik='"+Mangalik+"',usr_family_value='"+family_value+"',usr_family_type='"+family_type+"',usr_fathers_occupation='"+fathers_occupation+"',usr_mothers_occupation='"+mothers_occupation+"',usr_ancestral_origin='"+ancestral_origin+"',usr_about='"+about_me+"' where usr_id='"+user_code+"'";
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Users/Profile.aspx");
        }

    }

}