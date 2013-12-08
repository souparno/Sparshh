<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyContacts.aspx.cs" Inherits="Users_MyContacts" %>
<%@ Register Src="~/Users/SideNav.ascx" TagPrefix="UC" TagName="SideNav" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
  .background
  {
      background-color:#F2F2F2;

  }
     .bookmark
     {
         background-image:url('../image/glyphicons-halflings.png');
         background-position: -312px -24px;
         height: 14px;
         width: 14px;
         display: inline-block;
     }
     .eye-open
     {
         background-image:url('../image/glyphicons-halflings.png');
         background-position: -96px -120px;
         height: 14px;
         width: 14px;
         display: inline-block;
     }
     .message
     {
         background-image:url('../image/glyphicons-halflings.png');
         background-position: -72px 0;
         height: 14px;
         width: 14px;
         display: inline-block;
     }
     .thumbsup
     {
      background-image:url('../image/glyphicons-halflings.png');   
      background-position: -96px -144px;
      height: 14px;
      width: 14px;
      display: inline-block;
     }
     .chat
     {
      background-image:url('../image/glyphicons-halflings.png');   
      background-position: -240px -120px;
      height: 14px;
      width: 14px;
      display: inline-block;
     }
     .handsup
     {
         background-image:url('../image/glyphicons-halflings.png');  
         background-position: -192px -144px;
         height: 14px;
         width: 14px;
         display: inline-block;
     }
</style>
<script type="text/javascript">
    function AcceptInterst(UserIdFrom) {
        PageMethods.AcceptInterest(UserIdFrom,AcceptInterst_success);

    }
    function AcceptInterst_success() {
        alert("Interst Accepted Successfully");
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BlackOverLay" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
 <UC:SideNav runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">

<div class="size-12">
 <div class="column size-4">
  <div class="panel-3" style="padding-left:0px;padding-right:0px;padding-top:0px;margin-top:0px;">
  <br />
  <br />
     <div class="panel-1">
      <a href="javascript:void(0);" style="color:Black;" runat="server" onserverclick="Fill_ExpressInterestReceived">Express Interest Received</a>
    </div>
     <div class="panel-1">
      <a href="javascript:void(0);" style="color:Black;" runat="server" onserverclick="Fill_ExpressInterestSent">Express Interest Sent</a>
    </div>
    <div class="panel-1">
      <a href="" style="color:Black;">Short Listed Profile</a>
    </div>
    <div class="panel-1">
      <a href="" style="color:Black;" runat="server" onserverclick="Fill_Contact">My Contacts</a>
    </div>
  </div>
 </div>


 <div class="column size-8">
   <div class="panel-3">
    <asp:GridView ID="Grd_Search_Result" 
       runat="server"
       GridLines="None"
       AutoGenerateColumns="false"
       Width="100%">
        <Columns>
         <asp:TemplateField>
           <ItemTemplate>
             <div class='row panel-1' style='padding:10px;margin-bottom:0px;'>
              <div class='column size-3' style='padding-left:0px;'>
               <img src="Pictures/<%# Eval("ProfilePic") %>" style='width:100%;height:auto;border:1px solid black;' alt='' />
               <hr />

               <a href="javascript:void(0)" style="font-size:x-small;color:Black"><i class="handsup"></i>&nbsp;&nbsp;VIEW PROFILE</a>
              </div>
              <div class='column size-9'>
                 <table style="width:100%;">
                  <tr>
                   <td colspan="2">
                    <a href="javascript:void(0)" onclick="show_chat('<%# Eval("usr_id") %>');" style="color:Black;font-size:small"><i class="chat"></i>&nbsp;&nbsp;CHAT</a>
                   </td>
                  </tr>
                  <tr>
                   <td>User Code</td>
                   <td>:&nbsp;&nbsp;<%#Eval("usr_id") %></td>
                  </tr>
                  <tr>
                   <td>Height</td>
                   <td>:&nbsp;&nbsp;<%#Eval("Height")%></td>
                  </tr>
                  <tr>
                   <td>Religion</td>
                   <td>:&nbsp;&nbsp;<%#Eval("Religion")%></td>
                  </tr>
                  <tr>
                   <td>Caste</td>
                   <td>:&nbsp;&nbsp;<%#Eval("Caste") %></td>
                  </tr>
                  <tr>
                   <td>Mother Tongue</td>
                   <td>:&nbsp;&nbsp;<%#Eval("MotherTongue")%></td>
                  </tr>
                  <tr>
                   <td>Education</td>
                   <td>:&nbsp;&nbsp;<%#Eval("Education") %></td>
                  </tr>
                  <tr>
                   <td>Occupation</td>
                   <td>:&nbsp;&nbsp;<%#Eval("Occupation")%></td>
                  </tr>
                  <tr>
                   <td>Income</td>
                   <td>:&nbsp;&nbsp;<%#Eval("Income") %></td>
                  </tr>
                  <tr>
                   <td>Location</td>
                   <td>:&nbsp;&nbsp;<%#Eval("Country") %></td>
                  </tr>
                 </table>
                 
              </div>
             </div>
             <div class='row panel-1 size-12' style='padding:10px;'>
             <div class="column size-3" style="border-right:1px solid #D9D9D9;">
              <a href='javascript:void(0)' onclick="" class="eye-open" id="A2"></a>
              <br />
              <a href="javascript:void(0)" style="font-size:x-small;color:Black;">VIEW CONTACT</a>
             </div>
             <div class="column size-3" style="border-right:1px solid #D9D9D9;">
              <a href='javascript:void(0)' onclick="" class="bookmark" id="A1"></a>
              <br />
              <a href="javascript:void(0)" style="font-size:x-small;color:Black;">SHORT LIST</a>
             </div>
             <div class="column size-3" style="border-right:1px solid #D9D9D9;">
              <a href='javascript:void(0)' onclick="AcceptInterst('<%# Eval("usr_id") %>')" class="thumbsup" id="A4"></a>
              <br />
              <a href="javascript:void(0);" onclick="AcceptInterst('<%# Eval("usr_id") %>')" style="font-size:x-small;color:Black;">ACCEPT</a>
             </div>
             <div class="column size-3">
              <a href='javascript:void(0)' onclick="msgbox_display_on('<%# Eval("usr_id") %>')" class="message" id="A3"></a>
              <br />
              <a href="javascript:void(0)" onclick="msgbox_display_on('<%# Eval("usr_id") %>')" style="font-size:x-small;color:Black;">REPLY</a>
             </div>
            </div>

           </ItemTemplate>
         </asp:TemplateField>
        </Columns>
       </asp:GridView>
  </div>
 </div>


</div>




</asp:Content>

