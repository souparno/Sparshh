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
   <table>
    <thead>
     <tr>
      <td>User Id</td>
      <td>User Name</td>
     </tr>
    </thead>
      <% 
          string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
          SqlConnection con = new SqlConnection(_connection);
          string sql = "select usr_id,usr_name from usr_details;";
          DataTable dt = new DataTable();
          SqlDataAdapter da = new SqlDataAdapter(sql, con);
          da.Fill(dt);
          foreach (DataRow dr in dt.Rows)
          {
      %>
          <tr>
           <td style="text-align:center;"><% Response.Write(dr["usr_id"]); %></td>
           <td style="text-align:center;"><% Response.Write(dr["usr_name"]); %></td>
           <td style="text-align:center;"><a href="EditUser.aspx?UserId=<% Response.Write(dr["usr_id"]); %>" style="color:Blue;">Edit</a></td>
           <td style="text-align:center;"><a href="DeleteUser.aspx?UserId=<% Response.Write(dr["usr_id"]); %>" style="color:Blue;">Delete</a></td>
          </tr>
      <%
          }
      %>
   </table>
  </div>
 </div>
</asp:Content>

