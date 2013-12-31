<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

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

<div class="row size-12" style="background-image:url(Assets/images/backgroung-image.jpg);background-position:0px 0px;background-size:100% auto;background-repeat:repeat-x;margin-bottom:0px;min-height: 780px;">
   <%--The new Content Form--%>
  <div class="reg_frm_wrap right" style="margin-top:40px;margin-right:20px;margin-bottom:15px;">
    <div style="background-color:#834DAB;padding-top:2px;">
     <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li><a href="javascript:void(0);" id="profile_tab"  class="panel-active-tab"   onclick="document.getElementById('Profile').style.display = 'block';document.getElementById('Accolades').style.display = 'none';document.getElementById('Team').style.display = 'none';document.getElementById('profile_tab').className='panel-active-tab';document.getElementById('accolade_tab').className='panel-inactive-tab';document.getElementById('team_tab').className='panel-inactive-tab';">Sparshh Profile</a></li>
      <li><a href="javascript:void(0);" id="accolade_tab" class="panel-inactive-tab" onclick="document.getElementById('Profile').style.display = 'none';document.getElementById('Accolades').style.display = 'block';document.getElementById('Team').style.display = 'none';document.getElementById('profile_tab').className='panel-inactive-tab';document.getElementById('accolade_tab').className='panel-active-tab';document.getElementById('team_tab').className='panel-inactive-tab';">Sparshh Accolades</a></li>
      <li><a href="javascript:void(0);" id="team_tab"     class="panel-inactive-tab" onclick="document.getElementById('Profile').style.display = 'none';document.getElementById('Accolades').style.display = 'none';document.getElementById('Team').style.display = 'block';document.getElementById('profile_tab').className='panel-inactive-tab';document.getElementById('accolade_tab').className='panel-inactive-tab';document.getElementById('team_tab').className='panel-active-tab';">Sparshh Team</a></li>  
     </ul>
    <div style="clear:both"></div>
    </div>
   <div class="form_inner_wrap" style="width:488px;">
   
   <div class="frm-divider"></div>
   <div class="frm-divider"></div>

   <div id="Profile">

        <p>&nbsp;&nbsp;Marriage is the eternal solemn life journey of two loving souls within which hides the wooing of the God and Goddess. This is the glimpse of life where the practical meets the mythical. For many people the experience of this romantic phase is their first acquaintance of spirituality without knowing it. It’s the intense infatuation between not only two people, but, also two families which elevates them beyond ordinary perception of harmony where the world becomes enchanted. It’s the finest ecstatic platform to exchange and express true divine love among humans. Certainly to make a match, there are many aspects that have to be kept in mind like cultural attributes, religious versatilities, socio-economic stands and many more in between two families.</p>
        <p>&nbsp;&nbsp;With this essence of understanding “sparshh.com” has been registered and developed which is already getting patronized by many diversified class of people not only in India but also across the world through our corporate website www.sparshhmatrimony.com.</p>
        <p>&nbsp;&nbsp;Established in the year of 2011-12 “sparshh.com” already has developed the privileged market constituted by thorough analysis of Indian culture and requirements of people looking to get married which also determines the prolific health of communal relationship. </p>
        <p>&nbsp;&nbsp;Starting from a small venture and limited workforce it is still growing and expanding by creating rich and enormous database of elite class of clients in India and across the world through our several value added unique services. We have dedicated team that persevere hard to cater the needs of the clients from more than fourteen religions such as Bengali, Gujrati, Hindi Marwari, Punjabi, Urdu and many more.</p>
   </div>

   <div id="Accolades" style="display:none;">
        <p>&nbsp;&nbsp;“sparshh.com” has grown with high pace in matchmaking arena. Our journey is crowned with many social accolades like –</p>
        <p>&nbsp;&nbsp;a.The only matrimony which is dispensing superior lucrative services with comparable and affordable prices to serve all the socio-economic class of people.</p>
        <p>&nbsp;&nbsp;b.Have been successful in establishing accomplished unions all over India and world since inception.</p>
        <p>&nbsp;&nbsp;c.First matrimony in India to introduce one time registration charge valid till marriage.</p>
        <p>&nbsp;&nbsp;d.First matrimony to Endeavour Post Wedding Celebration in members.</p>
   </div>
        
   <div id="Team" style="display:none;">
     <p>&nbsp;&nbsp;“sparshh.com” is enriched and led by a number of professionally managed and highly qualified individuals and MBAs catering the needs of the people and to build an expertise venture towards the matrimonial system in India and across the world.“sparshh.com” is working constantly on many axis of matrimony such as advertising, screening of profiles, servicing, match-making, marketing etc to fulfill the requirements of each client.</p>
   </div>
       

        <div class="frm-divider"></div>
        <div class="frm-divider"></div>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;height:20px;">
        
        </div>

   </div>
  </div>
   <%--The End of new Content Form--%>
</div>
</asp:Content>

