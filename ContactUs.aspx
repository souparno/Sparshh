<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>
<%@ Register Src="~/Navigation.ascx" TagPrefix="UC" TagName="Navigation" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
     .background
     {
      background-image:url(image/pic-1.jpg);
      background-color:#FDFDFD;
   
     }
    </style>
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BlackOverLay" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
<UC:Navigation runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
 <div class="row size-6" style="margin-top:100px;">
  <div class="column size-12 panel-2" style="color:White;">
   <table>
    <tr>
     <td style="width:100px;"><b>Contact Us</b></td>
     <td>96/1,Rishi Bankim Road,Ground floor,Ward No.-25,Block a ,Nandapally,PO.Naihati,Dist-24pgs(N),pin-743165,West Bengal,India(Near Naihati Anandabazar)</td>
    </tr>
    <tr>
     <td><b>Contact No.</b></td>
     <td>+91-33-6501 6001/2/3/4/5</td>
    </tr>
    <tr>
     <td><b>Help Line No.</b></td>
     <td>+91-33-2581 0061</td>
    </tr>
    <tr>
     <td><b>Fax No.</b></td>
     <td>+91-33-2581 0061</td>
    </tr>
        <tr>
     <td><b>Email Id</b></td>
     <td>enquiry@sparshhmatrimony.com</td>
    </tr>
   </table>
  </div>
 </div>
  <div class="row size-6" style="margin-top:20px;">
  <div class="column size-12 panel-2" style="color:White;">
   <table>
    <tr>
     <td style="width:100px;"><b>Name</b></td>
     <td><input type="text" /></td>
    </tr>
    <tr>
     <td><b>Address</b></td>
     <td><input type="text" /></td>
    </tr>
    <tr>
     <td><b>Email Id</b></td>
     <td><input type="text" /></td>
    </tr>
    <tr>
     <td><b>Contact No.</b></td>
     <td><input type="text" /></td>
    </tr>
        <tr>
     <td><b>Comments</b></td>
     <td><textarea></textarea></td>
    </tr>
        <tr>
    <td></td>
     <td>
     <input type="text" />
     <%
     
         Random rng = new Random();
         Response.Write("<b>"+rng.Next(100000, 999999)+"</b>");
     
      %>
      
     </td>
    </tr>
    <tr>
     <td colspan="2">
      <button type="button" class="panel-7">Sumbit</button>
     </td>
    </tr>
   </table>
  </div>
 </div>
</asp:Content>

