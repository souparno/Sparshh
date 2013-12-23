<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
   .black-overlay{
            display:none;
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
       top:50%; 
       position:fixed;
       border:1px solid Orange;
       background-color:White;
       padding:10px; 
       margin:0 auto;
       display:none;
   } 
        .background
     {
      background-image:url(image/banner-preveledge.jpg);
      background-color:#FDFDFD;
       
     }
     
     .text-select
     {
         height:30px;
         width:210px;
         border:solid 1px White;
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
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Home.aspx">Home</a></li>
           <li><a href="AboutUs.aspx">About Us</a></li>
           <li><a href="Mission_n_Vission.aspx">Mission & Vission</a></li>
           <li><a href="Packages.aspx" class="active">Packages</a></li>
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





<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">


<div class="row size-12" style="background-image:url(Assets/images/backgroung-image.jpg);background-position:0px 0px;background-size:100% auto;background-repeat:repeat-x;margin-bottom:0px;">
   <%--The new Content Form--%>
  <div class="reg_frm_wrap right" style="margin-top:40px;margin-right:20px;margin-bottom:15px;">
    <div style="background-color:#834DAB;padding-top:2px;">
     <ul class="nav inline-nav" style="padding-bottom:0px;">
      <li><a href="" class="panel-active-tab" >Sparshh Packages</a></li>
      <li><a href="" class="panel-inactive-tab">Sparshh Privilage</a></li>
      <li><a href="" class="panel-inactive-tab">Sparshh Elite</a></li>
      <li><a href="" class="panel-inactive-tab">Sparshh Club</a></li>  
     </ul>
    <div style="clear:both"></div>
    </div>
   <div class="form_inner_wrap" style="width:598px;">
        <div class="frm-divider"></div>
        <div class="frm-divider"></div>
        <p style="color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">1.Express your interest.</p>
        <p style="color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">2.Send direct messages and initiate chats.</p>
        <p style="color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">3.Member can opt for Audio-Video exclusive chat option as per their choice.</p>
        <p style="color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">4.Access verified contact numbers.</p>
        <p style="color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">5.Enhanced privacy setting.</p>
        <p style="color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">6.Access horoscope of matches.</p>
        <p style="color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">7.View recent profile visitors.</p>
        <p style="color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">To know many more and upgrade please visit SPARSHH ONLINE</p>
        <div class="frm-divider"></div>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;height:20px;">
       </div>
   </div>
  </div>
   <%--The End of new Content Form--%>
</div>

<%--<div class="row size-11">
 <div class="column size-12" style="margin-top:50px;">
  <h4>Packages </h4>
  <hr />
  <p>At “sparshh.com” we have carefully prepared our various attractive packages to address several needs of the clients as per their search and convenience.</p>
  <hr />
  <h4>Online Package :</h4>
  <p >1.	Express your interest.</p>
  <p >2.	Send direct messages and initiate chats.</p>
  <p >3.	Member can opt for Audio-Video exclusive chat option as per their choice.</p>
  <p >4.	Access verified contact numbers.</p>
  <p >5.	Enhanced privacy setting.</p>
  <p >6.	Access horoscope of matches.</p>
  <p >7.	View recent profile visitors.</p>
  <p >  To know many more and upgrade please visit SPARSHH ONLINE </p>
  <hr />
  <h4 >SPARSHH PRIVILEGE</h4>
  <hr />
  <p >1. Access to verified closest matches for 3 months, 6 months and 9 months respectively.</p>
  <p >2. Basic verification of profile’s background, qualification, Profession, Family etc by Sparshh.</p>
  <p >3. Filling formats, collecting documents, photographs from member.</p>
  <p >4. Matchmaking service through Customer Service Officer for 12 months.</p>
  <p >5. Help in searching and short listing profiles based on the criterion laid down by both the sides.</p>
  <p >6. Establishing communication with closest match after your selection and approval of the same.</p>
  <p >7. Personalized e-mail to all matching profiles. </p>
  <p >8. One personalized privilege Presentation in PDF will be prepared for you to present your details to the verified matches.</p>
  <p >9. Arrangement of meeting between both the families in a convenient place chosen by them.</p>
  <p >10. You will be allotted one day in a week for searching, short-listing, sending the profiles to the verified closest matches and also One day for taking the feedback from them and also for sharing the same to you.</p>
  <p >(Days & Time will be intimated to you before preceding your services)</p>
  <p >11. Computerized Compatibility match will be pursued with final match to finalize the negotiation.</p>
  <hr />
  <h4 >SPARSHH ELITE </h4>
  <hr />
  <p >Access to verified unlimited matches for One year span or up to marriage is fixed whichever is earlier.</p>
  <p >Filling formats, collecting documents, photographs, screening, short listing and analyzing criterion to find most close match for you.</p>
  <p >One dedicated CSO.</p>
  <p >Professional hand made horoscope will be prepared for you.</p>
  <p >You can have the liberty to reach us at our contact numbers any day in between 04.00 pm – 06.00 pm IST only except Saturdays & Holydays.</p>
  <p >Astrological details for each and every individual profile will be sent to you.</p>
  <p >Professional hand made Compatibility match will be pursued with final shortlisted matches to finalize the negotiation.</p>
  <p >Basic verification of the profiles like Life style analysis, life history, family details, property details, qualification, profession, remuneration through Sparshh (THIS FACILITY WILL BE AVAILABLE FOR ALL INDIA). </p>
  <p >International data verification also can be arranged on demand with own cost payable to the agency directly.</p>
  <p >You are entitled to receive choices for Professional Detective Agency verification as per the necessity. (1. Pan India verification and / or, 2. Two local verifications.)</p>
  <p >As per the requirement News Paper Add Facilities will be availed for you in a calendar year.</p>
  <p >One personalized Elite Presentation will be prepared for you to present your details to the verified matches.</p>
  <p >Feedback of the meeting will be shared to both the families. After taking the final feedback from both the families meeting will be arranged in a convenient place. </p>
  <p >Sparshh will search; short list profile matches for you Three days in a week and the feedbacks will be shared with you Two days in a week. (Except Saturdays & Holydays) 
(Days & Time will be intimated to you before preceding your services) 
</p>
<p >Photo shooting facilities by eminent SISHIR STUDIO with 10 copies at home or at Studio with full decorum and make up as per necessity to enhance further chances of finding soul-mate in a quick time. (IF REQUIRED, THIS FACILITY WILL BE AVAILABLE FOR KOLKATA AND SUBURBAN).</p>
<hr />
<h4 >SPARSHH CLUB </h4>
<hr />
<p >1.	Access to verified unlimited matches One and half year span or up to marriage is fixed whichever is earlier.</p>
<p >2.	Filling formats, collecting documents, photographs, screening, short listing and analyzing criterion to find most close match for you.</p>
<p >3.	One dedicated CSO</p>
<p >4.	Professional hand made horoscope will be prepared for you.</p>
<p >5.	Astrological details for each and every individual profile will be sent to you.</p>
<p >6.	Professional hand made Compatibility match will be pursued with final shortlisted matches to finalize the negotiation.</p>
<p >7.	Personalized e-mail to all matching profile.</p>
<p >8.	Basic verification of the profiles like Life style analysis, life history, family details, property details, qualification, profession, remuneration through Sparshh (THIS FACILITY WILL BE AVAILABLE FOR ALL INDIA). </p>
<p >9.	International data verification also can be arranged on demand with own cost payable to the agency directly. </p>
<p >
10.	You are entitled to receive choices for Professional Detective Agency verification as per the necessity. (1. One pan India verification with Two local verification Or, 2. Three local verifications.)
</p>
<p >11.	As per the requirement News Paper Add Facilities will be availed for you 3 Times in a calendar year.</p>
<p >12.	One personalized Elite Presentation will be prepared for you to present your details to the verified matches.</p>
<p >13.	Feedback of the meeting will be shared to both the families.</p>
<p >14.	After taking the final feedback from both the families meeting will be arranged in a convenient place. </p>
<p >15.	Sparshh will search; short list profile matches for you Four days in a week and the feedbacks will be shared with you Three days in a week. (Except Saturdays & Holydays). (Days & Time will be intimated to you before preceding your services) </p>
<p >16.	You can have the liberty to reach us at our contact numbers any day any time in between 10.00 am – 7 pm IST only except Saturdays & Holydays.</p>
<p >17.	Photo shooting facilities by eminent SISHIR STUDIO with 15 copies at home or at Studio with full decorum and make up as per necessity to enhance further chances of finding soul-mate in a quick time. (IF REQUIRED, THIS FACILITY WILL BE AVAILABLE FOR KOLKATA AND SUBURBAN).</p>
<p >18.	Facility to pay out the membership charges in part. Fifty percent needs to be cleared immediately on activation of the membership and the rest fifty percent needs to be cleared on final marriage fix but before verification proceedings. </p>
<p >19.	Exclusive Photo session by eminent studio at the time of wedding ceremony as per your choice and necessity.</p>
<p >20.	Entitlement for “sparshh.com” special post-wedding celebrations.</p>
 </div>
</div>--%>
</asp:Content>


