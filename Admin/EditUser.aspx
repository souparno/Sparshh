<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Register Src="~/Admin/SideNav.ascx" TagPrefix="UC" TagName="Navigation" %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>
<%@ Import Namespace="System.Linq"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
    .background
  {
      background-image:url(../image/banner-preveledge.jpg);
      
  }
   .side-nav
 {
     background-image:url(../image/left-bar.png);
 }
  .language-nav
     {
         background-image:url(../image/nav-bg.png);
     }
     
     
          .text-select
     {
         height:30px;
         width:210px;
         border:solid 1px Orange;
         -moz-border-radius: 5px;
         -webkit-border-radius: 5px;
         border-radius: 5px;
     }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BlackOverLay" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
<UC:Navigation ID="Navigation1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
 <div class="row size-11">
  <div class="panel-3">
   <%
       string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
       SqlConnection con = new SqlConnection(_connection);
       string sql = "select usr_name,usr_membership_plan from usr_details where usr_id='" + Request.QueryString["UserId"] + "';";
       DataTable dt = new DataTable();
       SqlDataAdapter da = new SqlDataAdapter(sql, con);
       da.Fill(dt);
   %>
   <table>
    <tr>
     <td>Name</td>
     <td><input type="text" value="<% Response.Write(dt.Rows[0]["usr_name"]); %>" class="text-select"/></td>
    </tr>
    <tr>
    <td>Upgrade</td>
     <td>
      <select class="text-select" name="ddl_plan">
       
       <%
           DataSet ds = new DataSet();
           string path = Server.MapPath("~/App_Data/Services.xml");
           ds.ReadXml(path);

           var query = from t1 in dt.AsEnumerable()
                       join t2 in ds.Tables[0].AsEnumerable()
                       on t1.Field<string>("usr_membership_plan") equals t2.Field<string>("Key") into table
                       from p in table.DefaultIfEmpty()
                       select new
                       {
                           PlanId = p == null ? "" : p.Field<string>("Key"),
                           PlanName = p == null ? "" : p.Field<string>("Value")
                       };

           foreach (var q in query)
           {
               if (q.PlanId=="")
               {
                   Response.Write("<option value=''>--Free</option>");
               }
               else
               {

                   Response.Write("<option value='" + q.PlanId + "'>" + q.PlanName + "</option>");
               }
           }
           
           foreach (DataRow dr in ds.Tables[0].Rows)
           {
               Response.Write("<option value='"+dr["Key"]+"'>"+dr["Value"]+"</option>");
           }
       %>
      </select>
     </td>
    </tr>
    <tr>
     <td colspan="2">
      <button class="panel-7" runat="server" onserverclick="Update_Click">Update</button>
     </td>
    </tr>
   </table>
  </div>
 </div>
</asp:Content>

<script type="text/C#" runat="server">
    public void Update_Click(object sender, EventArgs e)
    {
        string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        SqlConnection con = new SqlConnection(_connection);
        string uiD= Request.QueryString["UserId"];
        string plan_id = Request.Form["ddl_plan"];
        string sql = "update usr_details set usr_membership_plan='"+plan_id+"' where usr_id='"+uiD+"'";
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
    }
</script>
