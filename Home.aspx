<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<%@ Import Namespace="System.Data"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="BlackOverLay" runat="server">

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Home.aspx" class="active" >Home</a></li>
           <li><a href="AboutUs.aspx">About Us</a></li>
           <li><a href="Mission_n_Vission.aspx">Mission & Vission</a></li>
           <li><a href="Packages.aspx">Packages</a></li>
           <li><a href="Process.aspx">Process</a></li>
           <li><a href="Clients_n_Delights.aspx">Client Delights</a></li>
           <li><a href="FAQ.aspx">FAQ</a></li>
           <li><a href="BusinessEnquiry.aspx">Business Enquiry</a></li>
           <li><a href="AdvertiseWithUs.aspx">Advertise With Us</a></li>
           <li><a href="/">Career</a></li>
           <li><a href="ContactUs.aspx">Contact Us</a></li>
          </ul>
  </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">

<div class="row size-12" style="background-image:url(Assets/images/backgroung-image.jpg);background-position:0px 0px;background-size:100% auto;background-repeat:repeat-x;margin-bottom:0px;">
   <%--The new registration Form--%>
  <div class="reg_frm_wrap right" style="margin-top:40px;margin-right:50px;margin-bottom:15px;">
    <div style="background-color:#834DAB;padding-top:2px;text-align:left;">
     <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li><a href="" class="panel-active-tab" >Register</a></li>
      <li><a href="" class="panel-inactive-tab">Search</a></li>  
     </ul>
    <div style="clear:both"></div>
    </div>
   <div class="form_inner_wrap">
        <div class="frm-divider"></div>
        <strong><label>Profile Posted By</label></strong>
        <select id="ddl_profile_posted_by" name="ddl_profile_posted_by" class="reg_select_box" runat="server"></select>
        <span style="color:Red;">*</span>    
        <div class="frm-divider"></div>
        <strong><label>Full Name</label></strong> 
        <input type="text" id="txt_name" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Gender</label></strong> 
           <input type="radio" value="Male"    id="Gender_Male"  name="radio_gender" runat="server" /><label style="float:none;">Male</label>
           <input type="radio" value="Fe-Male" id="Gender_Female" name="radio_gender" runat="server" /><label style="float:none;">Female</label>
          <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Date Of Birth</label></strong> 
        <select class="reg_select_box" style="width:60px;" id="ddl_dob_day" name="ddl_dob_day" runat="server"></select>
        <select class="reg_select_box" style="width:60px;" id="ddl_dob_month" name="ddl_dob_month" runat="server"></select>
        <select class="reg_select_box" style="width:80px;" id="ddl_dob_year" name="ddl_dob_year" runat="server"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Religion</label></strong> 
        <select id="ddl_religion" name="ddl_religion" onchange="form1.submit();lightbox_display_on();" onserverchange="ddlReligionChange" class="reg_select_box" runat="server"></select> 
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Mother Tongue</label></strong> 
        <select class="reg_select_box" id="ddl_mother_tongue" name="ddl_mother_tongue" runat="server"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Caste</label></strong> 
        <select id="ddl_Caste" name="ddl_Caste" class="reg_select_box" runat="server">
            <option value='0'>--Select Caste</option>
        </select>
        <div class="frm-divider"></div>
        <strong><label>Country Living In</label></strong> 
        <select id="ddl_country" name="ddl_country" class="reg_select_box" runat="server"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Marial Status</label></strong> 
        <select class="reg_select_box" runat="server" id="ddl_marital_status"></select>
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>No. Of Children</label></strong> 
        <select id="ddl_no_of_children" runat="server" class="reg_select_box"></select>
        <div class="frm-divider"></div>
        <strong><label>Children Staying With</label></strong> 
        <select id="ddl_children_staying_with" runat="server" class="reg_select_box"></select>
        <div class="frm-divider"></div>
        <strong><label>Mobile Number</label></strong> 
        <input type="text" name="txt_mobile_no" id="txt_mobile_no" maxlength="10" class="reg_input_txt" runat="server" />
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Email</label></strong> 
        <input type="text" id="txt_email" name="txt_email" class="reg_input_txt" runat="server" />
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <strong><label>Password</label></strong> 
        <input type="password" class="reg_input_txt" id="txt_password" name="txt_password" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Confirm Password</label></strong> 
        <input type="text" class="reg_input_txt"/> 
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <center>
        <input type="checkbox" name="term_cndtn_acpt" id="term_cndtn_acpt" runat="server" /><strong><label style="float:none;"> I agree to the <a href="javascript:void(0);" onclick="document.getElementById('black_overlay').style.display = 'block';document.getElementById('light_trems_conditions').style.display = 'block';" style="color:#834DAB;text-decoration:none;">Privacy Policy</a> and <a href="javascript:void(0);" onclick="document.getElementById('black_overlay').style.display = 'block';document.getElementById('light_trems_conditions').style.display = 'block';" style="color:#834DAB;text-decoration:none;">T&C </a> </label></strong>
        </center>
        <div class="frm-divider"></div>
        <center>
        <a href="#" style="text-decoration:none;">
         <img src="Assets/images/hp-secure-icon-small.gif" alt="" style="border:none;" />
         <label style="float:none;">Profile Security Assured</label>
         </a>
        </center>
        <div class="frm-divider"></div>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;">
        
        <center><button class="silver" style="color:#834DAB">Register</button></center>
        
        </div>

   </div>
  </div>
   <%--The End of new Registration Form--%>
</div>

</asp:Content>

