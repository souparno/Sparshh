<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BlackOverLay" Runat="Server">
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
      <li><a href="javascript:void(0);" class="panel-active-tab"   id="mission_tab"   onclick="document.getElementById('mission').style.display = 'block';document.getElementById('vission').style.display = 'none';document.getElementById('mission_tab').className='panel-active-tab';document.getElementById('vission_tab').className='panel-inactive-tab';" >Mission</a></li>
      <li><a href="javascript:void(0);" class="panel-inactive-tab" id="vission_tab"   onclick="document.getElementById('mission').style.display = 'none';document.getElementById('vission').style.display = 'block';document.getElementById('mission_tab').className='panel-inactive-tab';document.getElementById('vission_tab').className='panel-active-tab';">Vision</a></li>
     </ul>
    <div style="clear:both"></div>
    </div>
   <div class="form_inner_wrap" style="width:488px;">
        <div class="frm-divider"></div>
        <div class="frm-divider"></div>

        <div id="mission">
         <p>&nbsp;&nbsp;To make the world a heavenly paradise where all can find there dream match with quality and affordable services.</p>
        </div>
        
        <div id="vission" style="display:none;">
         <p>&nbsp;&nbsp;To become simple and humble solution in the matrimonial services that can spread smiles to the million hearts across the globe and enrich the livelihood to a new panacea.</p>
        </div>
   
        
        
        
        <div class="frm-divider"></div>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;height:20px;">
        </div>

   </div>
  </div>
   <%--The End of new Content Form--%>
</div>
</asp:Content>

