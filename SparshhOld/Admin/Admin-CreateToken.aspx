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
            FillDay();
            FillMonth();
            FillYear();
            create_token();
            
        }
    }

    private void create_token()
    {
        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        var random = new Random();
        var result = new string(
            Enumerable.Repeat(chars, 8)
                      .Select(s => s[random.Next(s.Length)])
                      .ToArray());
        lbl_token_id.InnerText = result;
    }


    private void FillDay()
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

        ddl_date_to_day.DataSource = dt;
        ddl_date_to_day.DataTextField = "Value";
        ddl_date_to_day.DataValueField = "Key";
        ddl_date_to_day.DataBind();
        

    }
    private void FillMonth()
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


        ddl_date_to_month.DataSource = dt;
        ddl_date_to_month.DataTextField = "Value";
        ddl_date_to_month.DataValueField = "Key";
        ddl_date_to_month.DataBind();
        
        
        
    }
    private void FillYear()
    {
        DataTable dt = new DataTable();
        dt.Columns.Add("Key", typeof(string));
        dt.Columns.Add("Value", typeof(string));

        DataRow dr = dt.NewRow();
        dr["Key"] = "0";
        dr["Value"] = "yyyy";
        dt.Rows.Add(dr);


        for (int i = 2014; i <= 3000; i++)
        {
            dr = dt.NewRow();
            dr["Key"] = i;
            dr["Value"] = i;
            dt.Rows.Add(dr);
        }

        ddl_date_to_year.DataSource = dt;
        ddl_date_to_year.DataTextField = "Value";
        ddl_date_to_year.DataValueField = "Key";
        ddl_date_to_year.DataBind();
        
        
        
    }

    protected void CreateTocken_Click(object sender, EventArgs e)
    {
        string usr_id = Convert.ToString(Request.QueryString["uid"]);
        string tocken_id = lbl_token_id.InnerText;
        string date_to_day = ddl_date_to_day.Value;
        string date_to_month = ddl_date_to_month.Value;
        string date_to_year = ddl_date_to_year.Value;
        string token_info = txt_token_info.Value;

        string sql = "insert into off_line_tocken(tocken_id,usr_id,date_to_day,date_to_month,date_to_year,token_info) values('"+tocken_id+"','"+usr_id+"','"+date_to_day+"','"+date_to_month+"','"+date_to_year+"','"+token_info+"')";
        SqlConnection con = new SqlConnection(_connection);
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();

        string javascript = "<script type='text/javascript'>alert('" + "Tocken created successfully" + "');<" + "/script>";
        Response.Write(javascript);
        
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
                                <li><a href="Admin-ViewOfflineMembers.aspx"><span class="aro"></span>View All Members</a></li>
                                <li><a href="Admin-MangeOfflineToken.aspx"><span class="aro"></span>Manage Token</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
</div>

<div style="float: left; width: 500px; height: auto;margin-left:200px;">

 <table width="100%">
  <tr>
   <td>Token for</td>
   <td>:<% Response.Write( Request.QueryString["uid"]); %></td>
  </tr>
  <tr>
   <td>Token Id</td>
   <td>www.sparshhmatrimony.com/Guest/?id=<label runat="server" id="lbl_token_id" ></label></td>
  </tr>
  <tr>
         <td>Date To</td>
         <td>
          <select class="reg_select_box" style="width:60px;" id="ddl_date_to_day" runat="server"></select>
          <select class="reg_select_box" style="width:60px;" id="ddl_date_to_month" runat="server"></select>
          <select class="reg_select_box" style="width:80px;" id="ddl_date_to_year" runat="server"></select>
         </td>
        </tr>
        <tr>
         <td>Token Info</td>
         <td>
          <textarea id="txt_token_info" runat="server"></textarea>
         </td>
        </tr>
        <tr>
         <td colspan="2">
          <center>
           <button runat="server" onserverclick="CreateTocken_Click">Create Tocken</button>
          </center>
         </td>
        </tr>
 </table>

</div>

  

</asp:Content>

