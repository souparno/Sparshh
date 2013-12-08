<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdvertiseWithUs.aspx.cs" Inherits="AdvertiseWithUs" %>
<%@ Register Src="~/Navigation.ascx" TagPrefix="UC" TagName="Navigation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
                .background
     {
      background-image:url(image/banner-preveledge.jpg);
      background-color:#FDFDFD;
      background-repeat:repeat-y;
       
     }
 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BlackOverLay" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
<UC:Navigation runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
<div class="row size-6" style="margin-top:40px;">
  <div class="column size-12 panel-2" style="color:White;">
  <hr />
   <table>
   <tr>
    <td colspan="2">
     <h3>Advertise With Us</h3>
     <hr />
     <p>Sparshh matrimony is an inspiration for the individuals who want to get communed with its revolutionary processes. It has already received many accolades in the way of its continuous journey for a divine social purpose. </p>
     <p>The recession-proof wedding market in India is getting aggregated in degrees into the online space at a considerable rate thereby opening the floodgates of opportunities for the online matrimonial market towards growth. A tool for searching prospective customers, online matrimonial sites offer the comfort and choice of millions of prospects along with information about the same. Added features in the likes of allowing interaction along user interface that newspaper classifieds fail to provide have worked to facilitate higher adoption of such services.</p>
     <p>Therefore, sparshh matrimony is getting reviewed and leaving its impression in huge population across the globe each day and this can become the ideal platform for many relevant advertisements also who want to reach out at a large scale and in turn can get the desired benefit and mileage.</p>
     <p>Kindly fill the form bellow and let us know about your prospect.</p>
    </td>
   </tr>
    <tr>
     <td style="width:100px;"><b>Your Name</b></td>
     <td><input type="text" /></td>
    </tr>
    <tr>
     <td><b>Organisation/Company</b></td>
     <td><input type="text" /></td>
    </tr>
    <tr>
     <td><b>Nature of Business</b></td>
     <td><input type="text" /></td>
    </tr>
    <tr>
     <td><b>Contact No.</b></td>
     <td><input type="text" /></td>
    </tr>
    <tr>
     <td><b>Email Id</b></td>
     <td><input type="text" /></td>
    </tr>
    <tr><td><b>Address</b></td>
     <td><textarea></textarea></td>
    </tr>
        <tr>
     <td><b>Type Of Enquiry</b></td>
     <td><input type="text" /></td>
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
      <button class="panel-7">Submit</button>
     </td>
    </tr>
   </table>
   <hr />
   <p>For More Details:</p>
   <p>Email:addwithus@sparshhmatrimony.com</p>
  </div>
 </div>
</asp:Content>

