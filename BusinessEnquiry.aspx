<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<%@ Register Src="~/Navigation.ascx" TagPrefix="UC" TagName="Navigation" %>

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
<UC:Navigation ID="Navigation1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
 <div class="row size-6" style="margin-top:100px;">
  <div class="column size-12 panel-2" style="color:White;">
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

