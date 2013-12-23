<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisterPersonalDetails.aspx.cs" Inherits="RegisterPersonalDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">


  <style type="text/css">
     .background
     {
      background-image:url(image/banner-preveledge.jpg);
      background-color:#FDFDFD;
       
     }
     .text-select
     {
         height:30px;
         width:210px;
         border:solid 1px Orange;
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

<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">

<div class="row size-8">
  <fieldset class="panel-1">
  <legend>
   <ul class="inline-list">
   <li class="panel-7" style="margin-right:10px;"><a href="Home.aspx">Log In</a></li>
   <li class="panel-7"><a href="RegisterPersonalDetails.aspx">Register</a></li>
  </ul>
  </legend>


    <table id="register" style="color:Black;">
        <tr>
         <td colspan="2"><h4>Personal Details</h4></td>
        </tr>
        <tr>
         <td colspan="2"><hr /></td>
        </tr>
        <tr>
         <td colspan="2"><h4>Physical Attributes</h4></td>
        </tr>
        <tr>
         <td>Height</td>
         <td class="pad">
          <select id="ddl_height" class="text-select" runat="server"></select>
         </td>
        </tr>
        <tr>
         <td>Weight</td>
         <td class="pad"><input type="text" class="text-select" runat="server" id="txt_weight"/>(KG)</td>
        </tr>
<%--        <tr>
         <td>Body Type</td>
         <td class="pad">
             <asp:RadioButton ID="RadioButton3" runat="server" />Avarage
             <asp:RadioButton ID="RadioButton4" runat="server" />Athletic
             <asp:RadioButton ID="RadioButton5" runat="server" />Slim
             <asp:RadioButton ID="RadioButton6" runat="server" />Heavy
         </td>
        </tr>
        <tr>`   
         <td>Complexion</td>
         <td class="pad"><asp:TextBox ID="TextBox3" runat="server" CssClass="text-select"></asp:TextBox></td>
        </tr>--%>
        <tr>
         <td>Physical Challange</td>
         <td class="pad">
             <select class="text-select" runat="server" id="ddl_challanged">
             </select>
             <span style="color:Red;">*</span>             
         </td>
        </tr>
        <tr>
         <td>Blood Group</td>
         <td class="pad">
          <select class="text-select" id="ddl_blood_group" runat="server">
          </select>
          <span style="color:Red;">*</span>
         </td>
        </tr>
        <tr>
         <td>Diet</td>
         <td class="pad">
          <select class="text-select" runat="server" id="ddl_diet"></select>
         </td>
        </tr>
        <tr>
         <td colspan="2"><hr /></td>
        </tr>
        <tr>
         <td colspan="2"><h4>Occupational Attributes</h4></td>
        </tr>
        <tr>
         <td>Highest Education</td>
         <td class="pad">
          <select class="text-select" id="ddl_highest_education" runat="server">
          </select>
          <span style="color:Red;">*</span>
         </td>
        </tr>
        <tr>
         <td>Education Deatils</td>
         <td class="pad">
          <input type="text" class="text-select" runat="server" id="txt_education_details" />
         </td>
        </tr>
        <tr>
         <td>Occupation</td>
         <td class="pad">
          <select class="text-select" id="ddl_occupation" runat="server">
          </select>
          <span style="color:Red;">*</span>
         </td>
        </tr>
        <tr>
         <td>Occupation Details</td>
         <td class="pad">
          <input type="text" class="text-select" id="txt_occupation_details" runat="server" />
         </td>
        </tr>
        <tr>
         <td>Income</td>
         <td class="pad">
          <select class="text-select" id="ddl_income" runat="server"></select>
         </td>
        </tr>
        <tr>
         <td colspan="2"><hr /></td>
        </tr>
        <tr>
         <td colspan="2"><h4>Religious Attributes</h4></td>
        </tr>
        <tr>
         <td>Sub Caste</td>
         <td class="pad">
          <input type="text" class="text-select" runat="server" id="txt_subcaste" />
          <span style="color:Red;">*</span>
         </td>
        </tr>
        <tr>
         <td>Gotra</td>
         <td class="pad">
          <input type="text" class="text-select" runat="server" id="txt_gotra" />
         </td>
        </tr>
<%--        <tr>
         <td>Star</td>
         <td class=" pad">
          <select class="text-select"></select>
         </td>
        </tr>--%>
        <tr>
         <td>Sun Sign</td>
         <td class="pad">
          <select class="text-select" runat="server" id="ddl_sunsign"></select>
         </td>
        </tr>
        <tr>
         <td>Mangalik</td>
         <td class="pad">
          <select class="text-select" runat="server" id="ddl_mangalik"></select>
         </td>
        </tr>
        <tr>
         <td colspan="2"><hr /></td>
        </tr>
        <tr>
         <td colspan="2"><h4>Family Details</h4></td>
        </tr>
        <tr>
         <td>Family Values</td>
         <td class="pad">
          <select class="text-select" runat="server" id="ddl_family_values"></select>
         </td>
        </tr>
        <tr>
         <td>Family Type</td>
         <td class="pad">
            <select class=" text-select" runat="server" id="ddl_family_type"></select>
         </td>
        </tr>
        <tr>
         <td>Fathers Occupation</td>
         <td class="pad"><input type="text" class="text-select" runat="server" id="txt_fathers_occupation" /></td>
        </tr>
        <tr>
         <td>Mothers Occupation</td>
         <td class="pad"><input type="text" class="text-select" runat="server" id="txt_mothers_occupation" /></td>
        </tr>
        <tr>
         <td>Family Origin</td>
         <td class="pad"><input type="text" class="text-select" runat="server" id="txt_family_origin" /></td>
        </tr>
        <tr>
         <td colspan="2"><hr /></td>
        </tr>
        <tr>
         <td colspan="2"><h4>About Myself</h4></td>
        </tr>
        <tr>
         <td class="pad" colspan="2" >
          <textarea class="text-select" style="width:90%;height:100px;" rows="10" cols="10" runat="server" id="txt_about_me">
          </textarea>
          <span style="color:Red;">*</span>
         </td>
        </tr>
        <tr>
         <td colspan="2"><hr /></td>
        </tr>
        <tr>
         <td colspan="2">
                         
             <button type="button" runat="server" onserverclick="Register_Click" class="panel-7">Continue Registration</button>
             
             </td>
        </tr>
      </table>
     
  </fieldset>
  </div>


</asp:Content>

