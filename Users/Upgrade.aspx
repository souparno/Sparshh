<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Upgrade.aspx.cs" Inherits="Users_Upgrade" %>
<%@ Register Src="~/Users/SideNav.ascx" TagPrefix="UC" TagName="Navigation" %>
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
 <UC:Navigation ID="Navigation1" runat="server" />
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

