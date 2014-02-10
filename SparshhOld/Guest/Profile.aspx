<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Users_Profile" MaintainScrollPositionOnPostback="false" %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>
<%@ Import Namespace="System.Linq"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
     

     
     
     
  .background
  {
      background-color:White;

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
 <script type="text/javascript">
     function display_overlay() {
         document.getElementById('black_overlay').style.display = 'block';
     }
 </script>
 <script type="text/javascript">

     function get_religion() {
         var religion = document.getElementById("ddl_religion_edit").value;
         PageMethods.get_caste(religion, set_caste);

     }

     function set_caste(inner_html) {
         document.getElementById("ddl_Caste_edit").innerHTML = inner_html;

     }
   
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Profile.aspx" class="active" >My Profile</a></li>
           <li><a href="MyMatches.aspx">My Matches</a></li>
           <li><a href="MyContacts.aspx">My Contacts</a></li>
           <li><a href="MyMessages.aspx">My Messages</a></li>
           <li><a href="Upgrade.aspx">Upgrade</a></li>
          </ul>
  </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">

<div class="row size-12">

<div class="column size-2">
  <div class="panel-3" style="margin-top:40px;">
     <%
     string userid = Convert.ToString(Session["UserId"]);
     string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
     SqlConnection con = new SqlConnection(_connection);
     string sql = "select usr_profile_pic from usr_details where usr_id='" + userid + "';";
     SqlCommand cmd = new SqlCommand(sql, con);
     con.Open();
     string profile_pic = Convert.ToString(cmd.ExecuteScalar());
     con.Close();
     
 %>
 <center><img src='<% Response.Write(profile_pic);%>' style="width:100%;height:auto;border:1px solid black;" alt="" /></center>
  </div>
  <div class="clear"></div>
  <center>
    <h3 style="font-size:14px;">User Code: <% Response.Write(userid); %></h3>
  <a class="panel-7" href="MyPictures.aspx"><b>Upload Pictures</b></a>
  </center>
</div>
<div class="column size-10">
<div class="container">
 <div style="margin-top:40px;">
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;" >About Me</a></li>
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-active-tab"   style="font-size:13px;">Basic Information</a></li>
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;">Education n Occupation</a></li>
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;">Religion Attributes</a></li>  
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;">Physical Attributes</a></li>
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;">Contact Information</a></li>
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;">Family Details</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap">
        <asp:FormView ID="frm_basic_info" runat="server">
       <ItemTemplate>
         <h4 style="margin-top:0px;">Basic Information</h4>
         <table>
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
            <td>Place of Birth</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_birth_place")%></td>
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
            <td>Children Living</td>
            <td>:&nbsp;&nbsp;<%# Eval("ChildrenLivingWith") %></td>
           </tr>
           <tr>
            <td>Diet</td>
            <td>:&nbsp;&nbsp;<%# Eval("Diet")%></td>
           </tr>
           <tr>
            <td>Smoking Habit</td>
            <td>:&nbsp;&nbsp;<%# Eval("Smoking_habit")%></td>
           </tr>
           <tr>
            <td>Drinking Habit</td>
            <td>:&nbsp;&nbsp;<%# Eval("Drinking_habit")%></td>
           </tr>
           <tr>
            <td>More</td>
            <td>:&nbsp;&nbsp;<%# Eval("more_basic_info")%></td>
           </tr>
          </table>
       </ItemTemplate>
      </asp:FormView>
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
        <h4 style="margin-top:0px;">About Me</h4>
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



<asp:FormView ID="Frm_Education_Occupation" runat="server">
<ItemTemplate>
           <h4>
             Education And Occupation
             <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_Education_Occupation').style.display='block';document.getElementById('black_overlay').style.display='block';" >Edit</a>
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
             <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('edit_religious_attributes').style.display='block';document.getElementById('black_overlay').style.display='block';" >Edit</a>
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


      <asp:FormView ID="Frm_Physical_Attributes" runat="server" >
       <ItemTemplate>
         <h4>Physical Attributes</h4>
          <table>
           <tr>
            <td>Body Type</td>
            <td>:&nbsp;&nbsp;<%# Eval("BodyType")%></td>
           </tr>
           <tr>
            <td>Body Complexion</td>
            <td>:&nbsp;&nbsp;<%# Eval("Complexion")%></td>
           </tr>
           <tr>
            <td>Physically Challanged:</td>
            <td>:&nbsp;&nbsp;<%# Eval("Challanged")%></td>
           </tr>          
           <tr>
            <td>Height</td>
            <td>:&nbsp;&nbsp;<%# Eval("Height") %></td>
           </tr>
           <tr>
            <td>Weight</td>
            <td>:&nbsp;&nbsp;<%# Eval("Weight") %></td>
           </tr>
           <tr>
            <td>Blood Group</td>
            <td>:&nbsp;&nbsp;<%# Eval("BloodGroup")%></td>
           </tr>
           <tr>
            <td>More Details</td>
            <td>:&nbsp;&nbsp;<%# Eval("more_details")%></td>
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
      <asp:FormView ID="Frm_Contact_Information" runat="server">
       <ItemTemplate>
         <h4>
           Contact Information
           <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_ContactInformation').style.display='block';document.getElementById('black_overlay').style.display='block';" >Edit</a>
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
            <td>:&nbsp;&nbsp;<%# Eval("usr_city")%></td>
           </tr>
           <tr>
            <td>State</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_state")%></td>
           </tr>
           <tr>
            <td>Country</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_country")%></td>
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
           <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_FamilyDetails').style.display='block';document.getElementById('black_overlay').style.display='block';" >Edit</a>
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
            <td>:&nbsp;&nbsp;<%# Eval("Brothers")%></td>
           </tr>
           <tr>
            <td>Brothers Married</td>
            <td>:&nbsp;&nbsp;<%# Eval("BrothersMarried")%></td>
           </tr>
           <tr>
            <td>Sisters</td>
            <td>:&nbsp;&nbsp;<%# Eval("Sisters")%></td>
           </tr>
           <tr>
            <td>Sisters Married</td>
            <td>:&nbsp;&nbsp;<%# Eval("SistersMarried")%></td>
           </tr>
          </table>
          </ItemTemplate>
          </asp:FormView>
  </div>
 </div>
</div>
</asp:Content>

