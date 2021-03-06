﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Home.aspx">Home</a></li>
           <li  class="dropdown">
              <a href="AboutUs.aspx" class="active">About Us</a>
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


<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">

<div class="row size-12" style="background-image:url(Assets/images/backgroung-image.jpg);background-position:0px 0px;background-size:100% auto;background-repeat:repeat-x;margin-bottom:0px;">
   <%--The new Content Form--%>
  <div class="reg_frm_wrap right" style="margin-top:40px;margin-right:20px;margin-bottom:15px;">
    <div style="background-color:#834DAB;padding-top:2px;">
     <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li><a href="" class="panel-active-tab" >process</a></li>
     </ul>
    <div style="clear:both"></div>
    </div>
   <div class="form_inner_wrap" style="width:598px;">
        <div class="frm-divider"></div>
        <div class="frm-divider"></div>
        <p>Sparshh.com” dedicated team is always striving hard to help you find your dream match through unique unparalleled processes. The particular processes depend upon your selection of subscription, but, however in most of the cases, we follow these steps to identify the perfect match for our client</p>
        <p>A.&nbsp;&nbsp;“sparshh Wants to Know You” Form :At first we ask clients to fill this form that seeks several essential aspects apart from identity information, such as zodiac sign, origin, height etc. This form also enables us to compare a brief about the personality, origin and aspirations of the prospective bride/groom.</p>
        <p>B.&nbsp;&nbsp;Dream Analysis :It’s a crucial step where our team works out to know the personalities, background and aspired dreams of the prospective bride/groom. Also takes a snapshot of the family aspects, culture, lifestyle etc of the families as those prove to be an essential factor to identify a perfect match.</p>
        <p>C.&nbsp;&nbsp;Searching / Screening / Short-listing of Profiles :On the basis of our analysis we now initiate search our enriched database for most suitable prospects. Then we screen and short-list the most optimum profiles for you. We also take help of our specialized software tool for completing this job.</p>
        <p>D.&nbsp;&nbsp;Profile Synchronization :Here we synchronize and share the most suitable profiles with our client necessary to reach to a decision only except few those personal information on the discretion of other party.</p>
        <p>E.&nbsp;&nbsp;“sparshh” on Personal Interaction :Here we arrange a personal interaction between the families of most matching profiles. Our devoted professionals co-ordinate these personal interactions in a comfortable setting. Our representative remains present there only if it is required and the interaction is arranged at Kolkata and Suburban.</p>
        <p>F.&nbsp;&nbsp;The Ultimate Approval:After the personal interaction is accomplished, the families ponders on the discussion and take few days time to reach to a conclusion and then send the approval.</p>
        <p>All these processes (depending on membership plans) then intensify and celebrate another successful and privileged client adherence to “Sparshh.com”.</p>
        <div class="frm-divider"></div>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;height:20px;">
       </div>
   </div>
  </div>
   <%--The End of new Content Form--%>
</div>

</asp:Content>

