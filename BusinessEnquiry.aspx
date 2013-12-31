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
              <a href="AboutUs.aspx" >About Us</a>
                 <ul class="dropdown-menu">
                  <li><a href="AboutUs.aspx">About Us</a></li>
                  <li><a href="Mission_n_Vission.aspx">Mission & Vission</a></li>
                  <li><a href="Process.aspx">Process</a></li>
                 </ul>
           </li>
           <li><a href="Packages.aspx">Packages</a></li>
           <li><a href="Clients_n_Delights.aspx">Client Delights</a></li>
           <li><a href="FAQ.aspx" >FAQ</a></li>
           <li><a href="BusinessEnquiry.aspx" class="active">Business Enquiry</a></li>
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
   <%--The new registration Form--%>
  <div class="reg_frm_wrap right" style="margin-top:40px;margin-right:50px;margin-bottom:15px;width:520px">
    <div style="background-color:#834DAB;padding-top:2px;text-align:left;">
     <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li><a href="" class="panel-active-tab" >Business Enquiry</a></li>
     </ul>
    <div style="clear:both"></div>
    </div>
   <div class="form_inner_wrap">
        <div class="frm-divider"></div>
        <p >&nbsp;&nbsp;Marriage is the eternal solemn life journey of two loving souls within which hides the wooing of the God and Goddess. This is the glimpse of life where the practical meets the mythical. For many people the experience of this romantic phase is their first acquaintance of spirituality without knowing it. It’s the intense infatuation between not only two people, but, also two families which elevates them beyond ordinary perception of harmony where the world becomes enchanted. It’s the finest ecstatic platform to exchange and express true divine love among humans. Certainly to make a match, there are many aspects that have to be kept in mind like cultural attributes, religious versatilities, socio-economic stands and many more in between two families.</p>
        <div class="frm-divider"></div>
        <strong><label>Full Name</label></strong> 
        <input type="text" id="txt_name" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Organisation/Company</label></strong> 
        <input type="text" id="Text1" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Nature Of Business</label></strong> 
        <input type="text" id="Text2" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Contact No.</label></strong> 
        <input type="text" id="Text3" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Email Id</label></strong> 
        <input type="text" id="Text4" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Address</label></strong> 
        <input type="text" id="Text5" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Type Of Enquiry</label></strong> 
        <input type="text" id="Text6" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <p style="padding:10px;color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">&nbsp;&nbsp;Email:business@sparshhmatrimony.com</p>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;">
        <center><button class="silver" style="color:#834DAB">Register</button></center>
        </div>
   </div>
  </div>
   <%--The End of new Registration Form--%>
</div>

</asp:Content>

