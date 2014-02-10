<%@ Page Title="" Language="C#" MasterPageFile="~/Users/MasterPage.master" AutoEventWireup="true" CodeFile="Upgrade.aspx.cs" Inherits="Users_Upgrade" %>

<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>
<%@ Import Namespace="System.Linq"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">

           .background
  {
      background-color:#F2F2F2;

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
<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
     <%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Profile.aspx">My Profile</a></li>
           <li><a href="MyMatches.aspx" >My Matches</a></li>
           <li><a href="MyContacts.aspx">My Contacts</a></li>
           <li><a href="MyMessages.aspx" >My Messages</a></li>
           <li><a href="Upgrade.aspx" class="active">Upgrade</a></li>
          </ul>
  </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">




<div class="row size-12">
 <div class="column size-12">
  <div class="panel-1">
   <h3>Upgrade Packages To Arrive Soon </h3>
  </div>
 </div>
</div>










</asp:Content>

