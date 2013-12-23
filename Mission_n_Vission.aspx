<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>
<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%--<style type="text/css">
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
     
    </style>--%>
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
           <li><a href="Mission_n_Vission.aspx" class="active">Mission & Vission</a></li>
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




<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">

<div class="row size-12" style="background-image:url(Assets/images/backgroung-image.jpg);background-position:0px 0px;background-size:100% auto;background-repeat:repeat-x;margin-bottom:0px;min-height: 780px;">
   <%--The new Content Form--%>
  <div class="reg_frm_wrap right" style="margin-top:40px;margin-right:20px;margin-bottom:15px;">
    <div style="background-color:#834DAB;padding-top:2px;">
     <ul class="nav inline-nav" style="padding-bottom:0px;">
      <li><a href="" class="panel-active-tab" >Mission</a></li>
      <li><a href="" class="panel-inactive-tab">Vision</a></li>
     </ul>
    <div style="clear:both"></div>
    </div>
   <div class="form_inner_wrap" style="width:488px;">
        <div class="frm-divider"></div>
        <div class="frm-divider"></div>
        <p style="padding:10px;color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">&nbsp;&nbsp;To make the world a heavenly paradise where all can find there dream match with quality and affordable services.</p>
        <div class="frm-divider"></div>
        <p style="padding:10px;color:#555555;font-family: Georgia,serif;text-align: left;font-weight:bold;">&nbsp;&nbsp;To become simple and humble solution in the matrimonial services that can spread smiles to the million hearts across the globe and enrich the livelihood to a new panacea.</p>
        <div class="frm-divider"></div>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;height:20px;">
        </div>

   </div>
  </div>
   <%--The End of new Content Form--%>
</div>
</asp:Content>

