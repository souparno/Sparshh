<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>
<%@ Import Namespace="System.Data"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Home.aspx" class="active" >Home</a></li>
           <li  class="dropdown">
              <a href="AboutUs.aspx">About Us</a>
                 <ul class="dropdown-menu">
                  <li><a href="AboutUs.aspx">About Us</a></li>
                  <li><a href="Mission_n_Vission.aspx">Mission & Vission</a></li>
                  <li><a href="Process.aspx">Process</a></li>
                 </ul>
           </li>
           <li><a href="Packages.aspx">Packages</a></li>
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

<%--Start of the Light Box Section--%>
<div class="row size-4">
     <div class="light-box column size-2" id="RequestLoaderImg" style="top:120px; " >
      <img src="Assets/images/Request_loader.gif" alt="" />
     </div>
     </div>
<%--End of the Light Box Section--%>

<div class="row size-12" style="background-image:url(Assets/images/backgroung-image.jpg);background-position:0px 0px;background-size:100% auto;background-repeat:repeat-x;margin-bottom:0px;">
   <%--The new registration Form--%>
  <div class="reg_frm_wrap right" style="margin-top:40px;margin-right:50px;margin-bottom:0px;">
    <div style="background-color:#834DAB;padding-top:2px;text-align:left;">
     <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li><a href="" class="panel-active-tab" >Register</a></li>
      <li><a href="" class="panel-inactive-tab">Search</a></li>
      <li><a href="" class="panel-inactive-tab">Upgrade</a></li>  
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
        <select id="ddl_religion" name="ddl_religion" onchange="form1.submit();document.getElementById('background-overlay').style.display = 'block';document.getElementById('RequestLoaderImg').style.display = 'block';" onserverchange="ddlReligionChange" class="reg_select_box" runat="server"></select> 
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
        <input type="password" class="reg_input_txt" id="txt_confirm_password" name="txt_confirm_password" runat="server"/> 
        <span style="color:Red;">*</span>
        <div class="frm-divider"></div>
        <center>
        <input type="checkbox" name="term_cndtn_acpt" id="term_cndtn_acpt" runat="server" /><strong><label style="float:none;"> I agree to the <a href="PtrivacyPolicy.aspx"  style="color:#834DAB;text-decoration:none;">Privacy Policy</a> and <a href="TnC.aspx" style="color:#834DAB;text-decoration:none;">T&C </a> </label></strong>
        </center>
        <div class="frm-divider"></div>
        <center>
         <a href="ProfileSecurityAssured.aspx">
          <img src="Assets/images/hp-secure-icon-small.gif" alt="" style="border:none;cursor:pointer;" />
          <label style="float:none;cursor:pointer;">Profile Security Assured</label>
         </a>
        </center>
        <div class="frm-divider"></div>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;">
           <center><button class="silver" style="color:#834DAB" runat="server" onserverclick="Register_Click">Register</button></center>
        </div>
   </div>
  </div>
   <%--The End of new Registration Form--%>
</div>




   <%--Start of the mid footer for the home page--%>
   <%--Start of the Light Box Section--%>
  <div class="row size-4">
     <div class="light-box column size-5" id="WelcomeReadMoreContent" style="top:20px; " >
     <div style="height:400px;overflow:auto;">
      <center><h5><span style="color:#A21D20;">WELCOME TO SPARSHH</span></h5></center>
      <p>Marriage is the eternal solemn life journey of two loving souls within which hides the wooing of the God and Goddess. This is the glimpse of life where the practical meets the mythical. For many people the experience of this romantic phase is their first acquaintance of spirituality without knowing it. It’s the intense infatuation between not only two people, but, also two families which elevates them beyond ordinary perception of harmony where the world becomes enchanted. It’s the finest ecstatic platform to exchange and express true divine love among humans. Certainly to make a match, there are many aspects that have to be kept in mind like cultural attributes, religious versatilities, socio-economic stands and many more in between two families.</p>
      <p>With this essence of understanding “Sparshh.com” has been registered and developed which is already getting patronized by many diversified class of people not only in India but also across the world through our corporate website www.SPARSHHhmatrimony.com.</p>
      <p>Established in the year of 2011-12 “Sparshh.com” already has developed the privileged market constituted by thorough analysis of Indian culture and requirements of people looking to get married which also determines the prolific health of communal relationship.</p>
      <p>Starting from a small venture and limited workforce it is still growing and expanding by creating rich and enormous database of elite class of clients in India and across the world through our several value added unique services. We have dedicated team that persevere hard to cater the needs of the clients from more than fourteen religions such as Bengali, Gujrati, Hindi Marwari, Punjabi, Urdu and many more.</p>
      </div>
      <center><button type="button" class="purple" onclick="document.getElementById('background-overlay').style.display='none';document.getElementById('WelcomeReadMoreContent').style.display='none';">Close</button></center>
     </div>
     <div class="light-box column size-5" id="Accolates" style="top:20px; " >
     <center><h5><span style="color:#A21D20;">SPARSHH ACCOLADES</span></h5></center>
      <div class="column size-6"><asp:Image ID="Image1" runat="server" ImageUrl="~/Assets/images/1. Just Dial Certificate Dec, 2013.jpg" CssClass="footer-img" /></div>
      <div class="column size-6">
      <p>We claim our self as the true service providers in the matrimonial world which is further certified by Just Dial.com as the best service provider among all matrimonial ventures and we are privileged with the Service with Excellence Certificate from Mr. Amitabh Bacchan, brand ambassador of Just Dial.com</p>
      <p>We claim our self anchored and secured service provider for you as we undertake thorough verifications of the final matches by renowned detective agency only because we value your life which is imperial for us and each decision related to it counts on seriously.</p>
      </div>
      <div style="clear:both" ></div>
      <center><button type="button" class="purple" onclick="document.getElementById('background-overlay').style.display='none';document.getElementById('Accolates').style.display='none';">Close</button></center>
     </div>
     <div class="light-box column size-5" id="SparshhYdBest" style="top:20px; " >
     <center><h5><span style="color:#A21D20;">SPARSHH WHY THE BEST</span></h5></center>
      <p>We have created Sparshh.com after a thorough analytical survey of other matrimonial ventures. Some where we found, most of them are lacking many significant areas. We have skillfully developed those areas so that Sparshh.com can reciprocate long lasting faith and togetherness. This is why Sparshh.com is committed to celebrate the future days of its clients who have found their soul-mates.</p>
      <h3>Our Service Snap</h3>
      <table>
       <tr>
        <td>1</td>
        <td>UNLIMITED PROFILES with UNLIMITED TIME up to MARRIAGE FIX</td>
       </tr>
       <tr>
        <td>2</td>
        <td>HOROSCOPE Facility and HOROSCOPE COMPATIBILITY match</td>
       </tr>
       <tr>
        <td>3</td>
        <td>Unique detailed VERIFICATION through professional detective agency</td>
       </tr>
       <tr>
        <td>4</td>
        <td>BLOOD TEST VERIFICATION through renowned pathological clinic before marriage fix</td>
       </tr>
       <tr>
        <td>5</td>
        <td>Free NEWS PAPER ADVERTISEMENT</td>
       </tr>
       <tr>
        <td>6</td>
        <td>Unique PROFILE PRESENTATION</td>
       </tr>
       <tr>
        <td>7</td>
        <td>Enormous DATABASE of profiles</td>
       </tr>
       <tr>
        <td>8</td>
        <td>FREE PHOTO SHOOTING FACILITY at eminent STUDIO across all metro cities.</td>
       </tr>
       <tr>
        <td>9</td>
        <td>Membership charge in PART PAYMENT FACILITY</td>
       </tr>
       <tr>
        <td>10</td>
        <td>SPECIAL WEDDING EVENT MANAGEMENT DISCOUNT</td>
       </tr>
      </table>
      <center><button type="button" class="purple" onclick="document.getElementById('background-overlay').style.display='none';document.getElementById('SparshhYdBest').style.display='none';">Close</button></center>
     </div>
     <div class="light-box column size-7" id="map" style="top:20px; " >
      <asp:Image ID="Image5" runat="server"  CssClass="footer-img" ImageUrl="~/Assets/images/Sparshh Google Map.jpg"/>
      <center><button type="button" class="purple" onclick="document.getElementById('background-overlay').style.display='none';document.getElementById('map').style.display='none';">Close</button></center>
     </div>
   </div>
<%--End of the Light Box Section--%>
  <div class="row size-12">
      <div class="column size-3">
     <div class="container">
     <div class="panel-white-2" style="text-align:center;height:420px;" >
       <h5>
        <span style="color:#A21D20;">WELCOME TO SPARSHH</span>
       </h5>
       <asp:Image ID="Image6" runat="server" ImageUrl="~/Assets/images/col-1.jpg" CssClass="footer-img" />
       <p>Marriage is the eternal solemn life journey of two loving souls within which hides the wooing of the God and Goddess. This is the glimpse of life where the practical meets the mythical.<a style="color:Blue;text-decoration:none;" href="javascript:void(0);" onclick="document.getElementById('background-overlay').style.display='block';document.getElementById('WelcomeReadMoreContent').style.display='block';">Read More...</a></p>
       </div>
     </div>
    </div>
    


    <div class="column size-3">
    <div class="container">
     <div class="panel-white-2" style="text-align:center;height:420px;">
       <h5>
        <span style="color:#A21D20;">SPARSHH ACCOLADES</span>
       </h5>
       <asp:Image ID="Image8" runat="server" ImageUrl="~/Assets/images/Certificate.JPG" CssClass="footer-img" /> 
       <p>We claim our self as the true service providers in the matrimonial world which is further certified by Just Dial.com as the best service provider among all matrimonial ventures and we are privileged with the Service with Excellence Certificate from Mr. Amitabh Bacchan, brand ambassador of Just Dial.com.<a style="color:Blue;text-decoration:none;" href="javascript:void(0);" onclick="document.getElementById('background-overlay').style.display='block';document.getElementById('Accolates').style.display='block';">Read More...</a></p>
     </div>
    </div>
    </div>


    <div class="column size-3">
    <div class="container">
     <div class="panel-white-2" style="text-align:center;height:420px;" >
       <h5>
        <span style="color:#A21D20;">SPARSHH PACKAGES</span>
       </h5>
       <asp:Image ID="Image7" runat="server" ImageUrl="~/Assets/images/col-2.jpg" CssClass="footer-img" /> 
       <p>At “Sparshh.com” we have carefully prepared our various attractive packages to address several needs of the clients as per their search and convenience.<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Packages.aspx" ForeColor="Blue" Font-Underline="false">Read More</asp:HyperLink></p>
     </div>
    </div>
    </div>
    
    
    <div class="column size-3">
    <div class="container">
     <div class="panel-white-2" style="text-align:center;height:420px;">
       <h5>
        <span style="color:#A21D20;">SPARSHH WHY THE BEST</span>
       </h5>
       <asp:Image ID="Image9" runat="server" ImageUrl="~/Assets/images/col-4.jpg" CssClass="footer-img" /> 
       <p>We have created Sparshh.com after a thorough analytical survey of other matrimonial ventures. Some where we found, most of them are lacking many significant areas. We have skillfully developed those areas so that Sparshh.com can reciprocate long lasting faith and togetherness.<a href="javascript:void(0);" style="color:Blue;text-decoration:none;" onclick="document.getElementById('background-overlay').style.display='block';document.getElementById('SparshhYdBest').style.display='block';">Read More...</a></p>
     </div>
    </div>
    </div>
        
   </div>
  <div class="row size-12">
    
    <div class="column size-6">
    <div class="container">
       <h3>
        <span style="color:#A21D20;">RECENT SUCCESSFUL KNOTS AT SPARSHH.COM</span>
       </h3>
       <div class="panel-white-2">
           <div class="row size-12">
            <div class="column size-5">
             <asp:Image ID="Image4" runat="server" CssClass="footer-img" ImageUrl="~/Assets/images/couple1.jpg" />
            </div>
            <div class="column size-7">
             <p style="margin-top: 0px;"><b>HARADHAN CHAKRABORTY, Jabalpur (DY-DIRECTOR OF M.P STATE GOVERNMENT VETERINARY DEPT.)</b>“We went on subscribing to almost all major matrimonial companies. But, we got ultimately tired of being sent all irrelevant profiles and poor service. One day I came across to know from <b>Just Dial</b> that <b>Sparshh.com</b> is operating in a very differential way with its unique services which were just there for us what we were searching for. With the amazing service from <b>Sparshh.com</b>, we finally have found the suitable groom for our daughter. “</p>
            </div>
            </div>
            <div class="row size-12">
            <div class="column size-5">
             <asp:Image ID="Image3" runat="server" CssClass="footer-img" ImageUrl="~/Assets/images/couple3.jpg" />
            </div>
            <div class="column size-7">
            <p style="margin-top: 0px;"><b>ABHISHEK BISWAS, Rourkella (SOLAN GROUP OF HOTELS)</b>“<b>Sparshh.com</b> is really a revolution in matrimony because they have certain services which are unique and are very essential to choose right partner for life. Their services are not confined with the local boundary rather they can provide services through pan India and abroad also. It’s a complete paradigm shift in the matrimonial sector. With their personalized Elite services, I have found my life partner.”</p>
            </div>
            </div>
            <div class="row size-12">
            <div class="column size-5">
             <asp:Image ID="Image2" runat="server" CssClass="footer-img" ImageUrl="~/Assets/images/couple2.jpg" />
            </div>
            <div class="column size-7">
             <p style="margin-top: 0px;"><b>SUDESHNA DEY, Dumdum (ASSISTANT SYSTEM ENGINEER, TCS, MUMBAI) & SWARUP NAG, Saltlake (Sr. MANAGER, RELIANCE COMMUNICATION LIMITED)</b>“Commitment, dedication and transparency – we have found these bookish words practical when we have undergone the services of <b>Sparshh.com</b>. Eventually we both were members of <b>Sparshh.com</b> and met each other there. It was our fortune and their dedication only which just worked for us after moving around almost all leading matrimonial. We are really thankful to <b>Sparshh.com</b> for creating such moment which has enchanted our future.</p>
            </div>
            </div>
             <center><a href="Clients_n_Delights.aspx" style="color:Blue;">Read More</a></center>
            

          </div>
     </div>
    </div>



    
    <div class="column size-6">
    <div class="container">
    <div class="row size-12">
     <h3>
       <span style="color:#A21D20;">SPARSHH AT A GLANCE</span>
     </h3>
     <div class="panel-white-2">
      <iframe width="100%" height="315" src="//www.youtube.com/embed/e94UZYvf8Og?rel=0" frameborder="0"></iframe>
     </div>
    </div>
    <div class="row size-12">
       <h3>
        <span style="color:#A21D20;">REACH TO SPARSHH</span>
       </h3>
       <div class="panel-white-2" style="height:220px;">
          <div class="row size-12">
            <div class="column size-4">
            <a href="javascript:void(0);" onclick="document.getElementById('background-overlay').style.display='block';document.getElementById('map').style.display='block';">
              <asp:Image ID="Image11" runat="server"  CssClass="footer-img" ImageUrl="~/Assets/images/Sparshh Google Map.jpg"/>
            </a>
            </div>
            <div class="column size-8">
             SPARSHH Outlets
             <div class="clear"></div>
             <b>Corporate &amp; Registered Office :</b>
             <div class="clear"></div>
96/1 Rishi Bankim Road, Nandapally,Ward No. 25, Block - A, (Near Ananda Bazar),P.O. : Naihati,
Dist : 24 Parganas (N),West Bengal,Pin - 743 165
Tel :  +91-33-2581-0016 /  +91-98748 57993 (Sunday-Friday, 10.00 AM-8 PM)
Fax : +91-33-2581-0016 (EXT.)
E-mail : info@sparshhhmatrimony.com
            </div>
          </div>
       </div>
     </div>
    </div>
   </div>

   </div>
<%--End of the mid footer for the home page--%>


</asp:Content>

