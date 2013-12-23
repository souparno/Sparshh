<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

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
   <li style="border-bottom: 3px solid #FD7022;"><a href="BusinessEnquiry.aspx" style="color:#666666;"><strong>Business Enquiry</strong></a></li>
   <li class="seperator"/>
   <li><a href="AdvertiseWithUs.aspx" style="color:#666666;"><strong>Advertise With Us</strong></a></li>
   <li class="seperator"/>
   <li><a href="" style="color:#666666;"><strong>Career</strong></a></li>
   <li class="seperator"/>
   <li><a href="ContactUs.aspx" style="color:#666666;"><strong>Contact Us</strong></a></li>
  </ul> 
 </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>





<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
 <div class="row size-6">
  <div class="column size-12 panel-2" style="color:White;margin-top:50px;">
  <hr />
   <table>
   <tr>
    <td colspan="2">
     <h3>Business Enquiry</h3>
     <hr />
     <p>sparshh is a name which is moving ahead on a fast track towards being the no.1 matrimony in india.Its simple humble and visionary team are also on a high move to conquer millions of hearts through its unparallel way of customer service.Sparshh wants to recognise the external forces to spread its good will and to build a heavenly parafise on earth. </p>
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
   <p>Email:business@sparshhmatrimony.com</p>
  </div>
 </div>
</asp:Content>

