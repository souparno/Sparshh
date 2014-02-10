<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
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
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">
<div class="row size-12" style="background-image:url(Assets/images/backgroung-image.jpg);background-position:-190px 0px;background-size:100% auto;background-repeat:repeat-x;margin-bottom:0px;min-height: 780px;padding-left:20px;">
   <%--The new Content Form--%>
  <div class="reg_frm_wrap right" style="margin-top:40px;margin-right:20px;margin-bottom:15px;">
    <div style="background-color:#834DAB;padding-top:2px;">
     <ul class="nav inline-nav" style="padding-bottom:0px;">
      <li><a href="javascript:void(0);" class="panel-active-tab"   id="package_tab"   onclick="document.getElementById('packages').style.display = 'block';document.getElementById('privilage').style.display = 'none';document.getElementById('elite').style.display = 'none';document.getElementById('club').style.display = 'none';document.getElementById('package_tab').className='panel-active-tab';document.getElementById('privilage_tab').className='panel-inactive-tab';document.getElementById('elite_tab').className='panel-inactive-tab';document.getElementById('club_tab').className='panel-inactive-tab';">Privacy Features</a></li>
      <li><a href="javascript:void(0);" class="panel-inactive-tab" id="privilage_tab" onclick="document.getElementById('packages').style.display = 'none';document.getElementById('privilage').style.display = 'block';document.getElementById('elite').style.display = 'none';document.getElementById('club').style.display = 'none';document.getElementById('package_tab').className='panel-inactive-tab';document.getElementById('privilage_tab').className='panel-active-tab';document.getElementById('elite_tab').className='panel-inactive-tab';document.getElementById('club_tab').className='panel-inactive-tab';">Varification Services</a></li>
      <li><a href="javascript:void(0);" class="panel-inactive-tab" id="elite_tab"     onclick="document.getElementById('packages').style.display = 'none';document.getElementById('privilage').style.display = 'none';document.getElementById('elite').style.display = 'block';document.getElementById('club').style.display = 'none';document.getElementById('package_tab').className='panel-inactive-tab';document.getElementById('privilage_tab').className='panel-inactive-tab';document.getElementById('elite_tab').className='panel-active-tab';document.getElementById('club_tab').className='panel-inactive-tab';">General Safety Rules</a></li>
      <li><a href="javascript:void(0);" class="panel-inactive-tab" id="club_tab"      onclick="document.getElementById('packages').style.display = 'none';document.getElementById('privilage').style.display = 'none';document.getElementById('elite').style.display = 'none';document.getElementById('club').style.display = 'block';document.getElementById('package_tab').className='panel-inactive-tab';document.getElementById('privilage_tab').className='panel-inactive-tab';document.getElementById('elite_tab').className='panel-inactive-tab';document.getElementById('club_tab').className='panel-active-tab';">Report Violation</a></li>  
     </ul>
    <div style="clear:both"></div>
    </div>
   <div class="form_inner_wrap" style="width:644px;">
        <div class="frm-divider"></div>
        <div class="frm-divider"></div>

        <div id="packages">
        <p>Sparshh Matrimony offers you various privacy options to protect the details of your profile and decide who views and contacts you.</p>
        <p><b>How to protect certain details of your profile?</b></p>
        <p>You can restrict access to your Photo, Horoscope and Reference by protecting them with passwords and only members to whom you give the password can view your details.</p>
        <p><b>How to block and ignore profiles?</b></p>
        <p>You can ignore profiles during search in the View full profile section. Only paid members can block profiles during search in the View full profile section.</p>
        <p><b>Will members know when you view their profile?</b></p>
        <p>No, members will not know when you view their profile.</p>
        <p><b>Why you must keep your login details confidential?</b></p>
        <p>You should keep your login details confidential, as your profile is your responsibility and can be used against you if it falls into the wrong hands.</p>
        </div>

        <div id="privilage" style="display:none;">
        <p>You can make use of these services to find out if a profile is genuine and safe to contact.</p>
        <p><b>Are the phone numbers on the site authentic?</b></p>
        <p>Sparshh Matrimony displays only verified phone numbers. Sparshh Matrimony insists that all the members verify their phone number through its free phone verification service. This service ensures that the number provided by a member is an active number.</p>
        <p><b>How to verify a member's credentials through Sparshh Matrimony?</b></p>
        <p>You can verify a member's credentials using Matrimony Stamp and Reference.</p>
        <p><b>Matrimony Stamp</b> is a seal of trust that members can have on their profile. A member will receive the Matrimony Stamp as soon as his/her Educational Certificates, Residence Proof and Pay slip are uploaded. The member will get the Matrimony Stamp only when he/she uploads all the three documents. Otherwise, only the uploaded documents will be shown on his/her profile. If you are a businessman or are Non-working, upload your Educational Certificates and Residence Proof to get the Matrimony Stamp. Only the Paid members have the privilege of viewing the documents, but the member can control who can view them.</p>
        <p><b>Matrimony Reference</b> is a feature which enables members to add references of relatives, friends and colleagues for the purpose of marriage. It helps members gather more information about prospects from their near and dear ones.</p>
        </div>


        <div id="elite" style="display:none;">
  <p >Finding a life partner is not very easy and that too on the internet which is very different from the usual tradition of arranged marriage. So it is very important to ensure your safety when you are searching your life partner. Bellow are the five time tested guidelines you must follow to ensure safety.</p>
  <p ><b>Why you must not reveal too much too soon?</b></p>
  <p >Be cautious in your communication and take your time in getting to know the person you're interested in. Don't give out very personal details like credit card and bank account information. Watch out for people who ask unwanted questions or vague about their answers.</p>
  <p ><b>Where you must not have your first meeting?</b></p>
  <p >Do not meet alone until you know the person really well. If you're meeting for the first time, try meeting in public places like coffee shops and avoid meeting in hotel rooms or any private place. Also keep your friends or family informed before you set out.</p>
  <p ><b>How to recognize a money scam and keep away?</b></p>
  <p >You can recognize a money scam when members ask for money. Beware of such people and do not pay anything for visa purposes or any such issues. Never discuss financial matters with someone you just met and hardly know. It could be highly unsafe.</p>
  <p ><b>Why you must involve your family?</b></p>
  <p >Marriage is a union of two families and not just two people. Keep your family informed about all your proceedings and involve them in your decision-making to be on the safe side. Make sure you introduce the prospect to your family.</p>
  <p ><b>Why your safety is also your responsibility?</b></p>
  <p >Getting married is a lifetime decision and no one can determine what's best for you than yourself, so it's also your responsibility to ensure your own safety and take precautionary steps.</p>
     </div>


       <div id="club" style="display:none;">
<p >Report violation and enable us to take immediate action. You will be helping yourself and other members not to fall prey to miscreants.</p>
<p ><b>What do I do when I see a fraudulent profile?</b></p>
<p >When you see a fraudulent profile you should inform us about it by reporting violation so we may check on the profile and take necessary action against the member.</p>
<p ><b>What must I do when someone keeps harassing me?</b></p>
<p >When someone harasses you, you should report violation so we may put an end to it by taking necessary action against the miscreant.</p>
<p ><b>How to report violation?</b></p>
<p >You can report violation by sending a mail to us at <b>reportviolation@sparshhmatrimony.com.</b></p>
<p ><b>Do I have to reveal my identity when I report violation?</b></p>
<p >Yes, it is mandatory that you reveal your identity while reporting violation; however, your identity will be kept confidential and will not be disclosed to the miscreant.</p>
<p ><b>What steps does Sparshh Matrimony take to address such issues?</b></p>
<p>Sparshh Matrimony has worked with cyber police in the past to take into custody people who have misused its services. Sparshh Matrimony ensures that its members have a safe and pleasant experience on the site.</p>
     </div>


        <div class="frm-divider"></div>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;height:20px;">
       </div>
   </div>
  </div>

   <%--The End of new Content Form--%>
</div>
</asp:Content>

