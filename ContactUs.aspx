<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>


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
<%--Top Navigation--%>
<div class="row size-12" style="background-color:#EEEEEE;border-bottom: 1px solid #CCCCCC;margin-bottom:0px;">
 <div class="row" style="margin-bottom:0px;width:1250px;">
 <ul class="nav inline-nav" style="font-family:none;">
   <li><a href="Home.aspx" style="color:#666666;"><strong>Home</strong></a></li>
   <li class="seperator"/>
   <li><a href="AboutUs.aspx" style="color:#666666;"><strong>About Us</strong></a></li>
   <li class="seperator"/>
   <li><a href="Mission_n_Vission.aspx" style="color:#666666;"><strong>Mission & Vision</strong></a></li>
   <li class="seperator"/>
   <li><a href="Packages.aspx" style="color:#666666;"><strong>Packages</strong></a></li>
   <li class="seperator"/>
   <li><a href="Process.aspx" style="color:#666666;"><strong>Processes</strong></a></li>
   <li class="seperator"/>
   <li><a href="Clients_n_Delights.aspx" style="color:#666666;"><strong>Client Delights</strong></a></li>
   <li class="seperator"/>
   <li><a href="FAQ.aspx" style="color:#666666;"><strong>FAQ</strong></a></li>
   <li class="seperator"/>
   <li><a href="BusinessEnquiry.aspx" style="color:#666666;"><strong>Business Enquiry</strong></a></li>
   <li class="seperator"/>
   <li><a href="AdvertiseWithUs.aspx" style="color:#666666;"><strong>Advertise With Us</strong></a></li>
   <li class="seperator"/>
   <li><a href="" style="color:#666666;"><strong>Career</strong></a></li>
   <li class="seperator"/>
   <li style="border-bottom: 3px solid #FD7022;"><a href="ContactUs.aspx" style="color:#666666;"><strong>Contact Us</strong></a></li>
  </ul> 
 </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>







<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
 <div class="row size-6">
  <div class="column size-12 panel-2" style="color:White;margin-top:50px;">
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
     <td><textarea rows="" cols=""></textarea></td>
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

