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
<UC:Navigation runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
<table>
<thead>
<tr>
 <td style="text-align:center;">Service Name</td>
 <td style="text-align:center;">Months Available</td>
 <td style="text-align:center;">Profiles Available</td>
 <td style="text-align:center;">Amount</td>
</tr>
<tr>
 <td colspan="4">
  <hr />
 </td>
</tr>
</thead>
<%
    DataSet ds = new DataSet();
    string path = Server.MapPath("~/App_Data/Services.xml");
    ds.ReadXml(path);


    foreach (DataRow dr in ds.Tables[0].Rows)
    {
        %>

        <tr>
         <td style="text-align:center;"><% Response.Write(dr["Value"]); %></td>
         <td style="text-align:center;"><% Response.Write(dr["MonthsAvailable"]); %></td>
         <td style="text-align:center;"><% Response.Write(dr["ProfilesAvailable"]); %></td>
         <td style="text-align:center;"><% Response.Write(dr["Amount"]); %></td>
        </tr>
        <tr>
 <td colspan="4">
  <hr />
 </td>
</tr>

        <%
    }
%>
</table>
</asp:Content>

