<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="Users_ViewProfile" %>
<%@ Register Src="~/Users/SideNav.ascx" TagPrefix="UC" TagName="Navigation" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
  .background
  {
      background-image:url(../image/banner-preveledge.jpg);
      
  }
  
  
  .black-overlay{
            display: none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 100%;
            background-color: black;
            -moz-opacity: 0.8;
            opacity:.80;
            filter: alpha(opacity=80);
        }
        
   .light-content
   {
       top:100px; 
       position:fixed;
       border:1px solid Orange;
       background-color:White;
       padding:10px; 
       margin:0 auto;
       display:none;
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
     
     .pad
     {
         padding-left:20px;
         padding-bottom:5px;
     }
     
     
 </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BlackOverLay" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
 <UC:Navigation runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">

<div class="row size-12">
 <div class="column size-12">
 <div class="panel-3">


<div class="row size-12">
 <div class="column size-3">
     <asp:FormView ID="Frm_ProfilePic" runat="server">
      <ItemTemplate>
       <img src="Pictures/<%# Eval("usr_profile_pic") %>" style="width:100%;height:auto;border:1px solid black;" alt="" />
      </ItemTemplate>
     </asp:FormView>
 </div>
 <div class="column size-9">
  <h3>User Code: <% Response.Write(Request.QueryString["ProfileView"]); %></h3>
 </div>
 </div>

 </div>
 </div>
</div>


<div class="row size-12">
<div class="column size-12">
  <div class="panel-3">
      <asp:FormView ID="Frm_About_User" runat="server">
       <ItemTemplate>
        <h4 style="margin-top:0px;">
          About Me
        </h4>
        <table>
         <tr>
          <td>About Me:</td>
          <td>&nbsp;&nbsp;<%# Eval("usr_about")%>
          </td>
         </tr>
        </table>
       </ItemTemplate>
      </asp:FormView>
  </div>
</div>
</div>
<div class="row size-12">
<div class="column size-12">
  <div class="panel-3">
      <asp:FormView ID="frm_basic_info" runat="server">
       <ItemTemplate>
         <h4 style="margin-top:0px;">
          Basic Information
         </h4>
         <table>
           <tr>
             <td>Profile Posted By</td>
             <td>:&nbsp;&nbsp;<%# Eval("ProfilePostedBy") %></td>
           </tr>
           <tr>
            <td>Name</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_name") %></td>
           </tr>
           <tr>
             <td>Gender</td>
             <td>:&nbsp;&nbsp;<%# Eval("usr_gender") %></td>
           </tr>
           <tr>
             <td>Date Of Birth</td>
             <td>:&nbsp;&nbsp;<%# Eval("usr_dob_day")%>-<%# Eval("usr_dob_month")%>-<%# Eval("usr_dob_year") %></td>
           </tr>
           <tr>
             <td>Age</td>
             <td>:&nbsp;&nbsp;<%# Convert.ToInt32(DateTime.Now.Year) - Convert.ToInt32(Eval("usr_dob_year"))%></td>
           </tr>
           <tr>
             <td>Marital Status</td>
             <td>:&nbsp;&nbsp;<%# Eval("Marital_status")%></td>
           </tr>
           <tr>
            <td>No. Of Children</td>
            <td>:&nbsp;&nbsp;<%# Eval("NoOfChildren")%></td>
           </tr>
           <tr>
            <td>Children Staying With</td>
            <td>:&nbsp;&nbsp;<%# Eval("ChildrenLivingWith")%>
            
            </td>
           </tr>
          </table>
       </ItemTemplate>
      </asp:FormView>
  </div>
 </div>
</div>
<div class="row size-12">
 <div class="column size-12">
  <div class="panel-3">
<asp:FormView ID="Frm_Education_Occupation" runat="server">
<ItemTemplate>
           <h4>
             Education And Occupation
           </h4>
           <table>
            <tr>
             <td>Higest Education</td>
             <td>:&nbsp;&nbsp;<%# Eval("Education") %></td>
            </tr>
            <tr>
             <td>Education Details:</td>
             <td>:&nbsp;&nbsp;<%# Eval("Education_details") %></td>
            </tr>
            <tr>
             <td>Occupation:</td>
             <td>:&nbsp;&nbsp;<%# Eval("Occupation") %></td>
            </tr>
            <tr>
             <td>Occupation Details</td>
             <td>:&nbsp;&nbsp;<%# Eval("Occupation_details") %></td>
            </tr>
            <tr>
             <td>Annual Income</td>
             <td>:&nbsp;&nbsp;<%# Eval("Income") %></td>
            </tr>
           </table>
          </ItemTemplate>
</asp:FormView>
  </div>
 </div>
</div>
<div class="row size-12">
 <div class="column size-12">
  <div class="panel-3">
      <asp:FormView ID="Frm_Religious_Attributes" runat="server">
       <ItemTemplate>
         
          <h4>
             Religious Attributes
          </h4>
          <table>
           <tr>
            <td>Mother Tongue:</td>
            <td>:&nbsp;&nbsp;<%# Eval("MotherTongue")%></td>
           </tr>
           <tr>
            <td>Religion</td>
            <td>:&nbsp;&nbsp;<%# Eval("Religion")%></td>
           </tr>
           <tr>
            <td>Caste</td>
            <td>:&nbsp;&nbsp;<%# Eval("Caste")%></td>
           </tr>
           <tr>
            <td>Sub Caste</td>
            <td>:&nbsp;&nbsp;<%# Eval("SubCaste") %></td>
           </tr>
           <tr>
            <td>Place Of Birth</td>
            <td>:&nbsp;&nbsp;<%# Eval("BirthPlace") %></td>
           </tr>
           <tr>
            <td>Mangalik</td>
            <td>:&nbsp;&nbsp;<%# Eval("Mangalik")%></td>
           </tr>
           <tr>
            <td>Gotra</td>
            <td>:&nbsp;&nbsp;<%# Eval("Gotra") %></td>
           </tr>
           <tr>
            <td>Nakshatra</td>
            <td>:&nbsp;&nbsp;<%# Eval("Nakshatra") %></td>
           </tr>
           <tr>
            <td>Sun Sign</td>
            <td>:&nbsp;&nbsp;<%# Eval("Sunsign") %></td>
           </tr>
          </table>
       </ItemTemplate>
      </asp:FormView>
  </div>
 </div>
</div>
<div class="row size-12">
 <div class="column size-12">
  <div class="panel-3">
      <asp:FormView ID="Frm_Physical_Attributes" runat="server">
       <ItemTemplate>
         <h4>
           Physical Attributes
          </h4>
          <table>
           <tr>
            <td>Height</td>
            <td>:&nbsp;&nbsp;<%# Eval("Height") %></td>
           </tr>
           <tr>
            <td>Weight</td>
            <td>:&nbsp;&nbsp;<%# Eval("Weight") %></td>
           </tr>
           <tr>
            <td>Challanged:</td>
            <td>:&nbsp;&nbsp;<%# Eval("Challanged") %></td>
           </tr>
           <tr>
            <td>Diet</td>
            <td>:&nbsp;&nbsp;<%# Eval("Diet") %></td>
           </tr>
           <tr>
            <td>Blood Group</td>
            <td>:&nbsp;&nbsp;<%# Eval("BloodGroup") %></td>
           </tr>
          </table>
       </ItemTemplate>
      </asp:FormView>

      
  </div>
 </div>
</div>
<div class="row size-12">
 <div class="column size-12">
  <div class="panel-3">

  <br /><h5 style="color:Red;">To View the Contact information please conatct sparshh customer care(+91-33-6501-6001)</h5>

      <asp:FormView ID="Frm_Contact_Information" runat="server">
       <ItemTemplate>
         <h4>
           Contact Information
          </h4>
          
          <table>
           <tr>
            <td>Email Id</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_email") %></td>
           </tr>
           <tr>
            <td>Mobile No.</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_mobile") %></td>
           </tr>
           <tr>
            <td>LandLine No.</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_land_no") %></td>
           </tr>
           <tr>
            <td>Address</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_address") %></td>
           </tr>
           <tr>
            <td>City</td>
            <td></td>
           </tr>
           <tr>
            <td>State</td>
            <td></td>
           </tr>
           <tr>
            <td>Country</td>
            <td></td>
           </tr>
          </table>
          </ItemTemplate>
          </asp:FormView>
  </div>
 </div>
</div>
<div class="row size-12">
 <div class="column size-12">
  <div class="panel-3">
      <asp:FormView ID="Frm_Family_Details" runat="server">
       <ItemTemplate>
         <h4>
           Family Details
           
          </h4>
          <table>
           <tr>
            <td>Family Values</td>
            <td>:&nbsp;&nbsp;<%# Eval("FamilyValue") %></td>
           </tr>
           <tr>
            <td>Family Type</td>
            <td>:&nbsp;&nbsp;<%# Eval("FamilyType")%></td>
           </tr>
           <tr>
            <td>Family Status</td>
            <td>:&nbsp;&nbsp;</td>
           </tr>
           <tr>
            <td>Ancestral Origin</td>
            <td>:&nbsp;&nbsp;<%# Eval("AncestralOrigin")%></td>
           </tr>
           <tr>
            <td>Fathers Occupation</td>
            <td>:&nbsp;&nbsp;<%# Eval("FathersOccupation")%></td>
           </tr>
           <tr>
            <td>Mothers Occupation</td>
            <td>:&nbsp;&nbsp;<%# Eval("MothersOccupation")%></td>
           </tr>
           <tr>
            <td>Brothers</td>
            <td>:&nbsp;&nbsp;</td>
           </tr>
           <tr>
            <td>Brothers Married</td>
            <td>:&nbsp;&nbsp;</td>
           </tr>
           <tr>
            <td>Sisters</td>
            <td>:&nbsp;&nbsp;</td>
           </tr>
           <tr>
            <td>Sisters Married</td>
            <td>:&nbsp;&nbsp;</td>
           </tr>
          </table>
          </ItemTemplate>
          </asp:FormView>
  </div>
 </div>
</div>
</asp:Content>

