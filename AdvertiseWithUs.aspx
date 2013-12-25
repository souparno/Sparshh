<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BlackOverLay" Runat="Server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Home.aspx"  >Home</a></li>
           <li><a href="AboutUs.aspx">About Us</a></li>
           <li><a href="Mission_n_Vission.aspx">Mission & Vission</a></li>
           <li><a href="Packages.aspx">Packages</a></li>
           <li><a href="Process.aspx">Process</a></li>
           <li><a href="Clients_n_Delights.aspx">Client Delights</a></li>
           <li><a href="FAQ.aspx">FAQ</a></li>
           <li><a href="BusinessEnquiry.aspx" >Business Enquiry</a></li>
           <li><a href="AdvertiseWithUs.aspx" class="active">Advertise With Us</a></li>
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
     <ul class="nav inline-nav" style="padding-bottom:0px;">
      <li><a href="" class="panel-active-tab" >Advertise With Us</a></li>
     </ul>
    <div style="clear:both"></div>
    </div>
   <div class="form_inner_wrap">
        <div class="frm-divider"></div>
        <p style="padding:10px;color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">&nbsp;&nbsp;Sparshh matrimony is an inspiration for the individuals who want to get communed with its revolutionary processes. It has already received many accolades in the way of its continuous journey for a divine social purpose.The recession-proof wedding market in India is getting aggregated in degrees into the online space at a considerable rate thereby opening the floodgates of opportunities for the online matrimonial market towards growth. A tool for searching prospective customers, online matrimonial sites offer the comfort and choice of millions of prospects along with information about the same. Added features in the likes of allowing interaction along user interface that newspaper classifieds fail to provide have worked to facilitate higher adoption of such services.Therefore, sparshh matrimony is getting reviewed and leaving its impression in huge population across the globe each day and this can become the ideal platform for many relevant advertisements also who want to reach out at a large scale and in turn can get the desired benefit and mileage.Kindly fill the form bellow and let us know about your prospect.</p>
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
        <p style="padding:10px;color:#555555;font-family: Georgia,serif;text-align:left;font-weight:bold;">&nbsp;&nbsp;Email:addwithus@sparshhmatrimony.com</p>
        <div style="border-radius: 0 0 5px 5px;background-color:#834DAB;margin-left:-18px;margin-right:-18px;margin-bottom:-20px;padding:10px;">
        <center><button class="silver" style="color:#834DAB">Register</button></center>
        </div>
   </div>
  </div>
   <%--The End of new Registration Form--%>
</div>
</asp:Content>

