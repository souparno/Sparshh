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
           <li><a href="BusinessEnquiry.aspx" >Business Enquiry</a></li>
           <li><a href="AdvertiseWithUs.aspx" >Advertise With Us</a></li>
           <li><a href="/">Career</a></li>
           <li><a href="ContactUs.aspx" class="active">Contact Us</a></li>
          </ul>
  </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>







<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">


<div class="row size-12" style="background-image:url(Assets/images/backgroung-image.jpg);background-position:0px 0px;background-size:100% auto;background-repeat:repeat-x;margin-bottom:0px;min-height: 780px;">
   <%--The new registration Form--%>
  <div class="reg_frm_wrap right" style="margin-top:40px;margin-right:50px;margin-bottom:15px;width:520px">
    <div style="background-color:#834DAB;padding-top:2px;text-align:left;">
     <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li><a href="" class="panel-active-tab" >Contact Us</a></li>
     </ul>
    <div style="clear:both"></div>
    </div>
   <div class="form_inner_wrap">
        <div class="frm-divider"></div>
        <p>96/1,Rishi Bankim Road,Ground floor,Ward No.-25,Block a ,Nandapally,PO.Naihati,Dist-24pgs(N),pin-743165,West Bengal,India(Near Naihati Anandabazar)</p>
        <p>&nbsp;&nbsp;Contact Number: +91-33-6501 6001/2/3/4/5</p>
        <p>&nbsp;&nbsp;Help Number: +91-33-2581 0061</p>
        <p>&nbsp;&nbsp;Fax Number: +91-33-2581 0061</p>
        <p>&nbsp;&nbsp;Email Id: enquiry@sparshhmatrimony.com</p>

        <div class="frm-divider"></div>
        <strong><label>Full Name</label></strong> 
        <input type="text" id="txt_name" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Address</label></strong> 
        <input type="text" id="Text1" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Email Id</label></strong> 
        <input type="text" id="Text2" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Contact Number</label></strong> 
        <input type="text" id="Text3" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <strong><label>Comments</label></strong> 
        <input type="text" id="Text4" name="txt_name" class="reg_input_txt" runat="server"/>
        <span style="color:Red;">*</span> 
        <div class="frm-divider"></div>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;">
        <center><button class="silver" style="color:#834DAB">Register</button></center>
        </div>
   </div>
  </div>
   <%--The End of new Registration Form--%>
</div>

</asp:Content>

