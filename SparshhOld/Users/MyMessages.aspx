<%@ Page Title="" Language="C#" MasterPageFile="~/Users/MasterPage.master" AutoEventWireup="true" CodeFile="MyMessages.aspx.cs" Inherits="Users_MyMessages" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
          .background
  {
      background-color:#F2F2F2;

  }
  
  
  .black-overlay{
            display: none;
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
       top:100px; 
       position:fixed;
       border:1px solid Orange;
       background-color:White;
       padding:10px; 
       margin:0 auto;
       display:none;
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
     .plus
     {
         background-image:url('../image/glyphicons-halflings-white.png');
         background-position: -408px -96px;
         height: 14px;
         width: 14px;
     }
     .minus
     {
         background-image:url('../image/glyphicons-halflings-white.png');
         background-position: -433px -96px;
         height: 14px;
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
     function msgbox_display_on(ToUserId) {
         document.getElementById("hdn_ToUser").value = ToUserId;
         document.getElementById("black_overlay").style.display = "block";
         document.getElementById("msg_box").style.display = "block";
     }

     function SendMsg() {
         var touserid = document.getElementById("hdn_ToUser").value;
         var msg = document.getElementById("txt_msg").value;
         PageMethods.SendMsg(touserid, msg, semdmsg_success);

     }
     function semdmsg_success() {
         document.getElementById("black_overlay").style.display = "none";
         document.getElementById("msg_box").style.display = "none";
     }
 </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
     <%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Profile.aspx">My Profile</a></li>
           <li><a href="MyMatches.aspx" >My Matches</a></li>
           <li><a href="MyContacts.aspx">My Contacts</a></li>
           <li><a href="MyMessages.aspx" class="active">My Messages</a></li>
           <li><a href="Upgrade.aspx">Upgrade</a></li>
          </ul>
  </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">


<%--Light Box Content--%>
 <div class="row size-5 light-content" id="msg_box">
     <input type="hidden" id="hdn_ToUser" />
     <textarea rows="10" cols="10" class="text-select" style="width:90%;height:30%" id="txt_msg"></textarea>
     <br />
     <a id="A5" href="javascript:void(0)" runat="server" class="panel-7" onclick="SendMsg()">Send</a>
     <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('black_overlay').style.display ='none';document.getElementById('msg_box').style.display ='none'">Cancel</a>
 </div>
<%--End of lIght box Content--%>



<div class="row size-12">
 <div class="column size-12">
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
                 <hr />
                 <p>Message:&nbsp;&nbsp;<%# Eval("Message")%></p>
                 
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
              <a href='javascript:void(0)' onclick="" class="thumbsup" id="A4"></a>
              <br />
              <a href="ExpressInterest.aspx?ProfileId=<%#Eval("usr_id") %>" style="font-size:x-small;color:Black;">SEND INTEREST</a>
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

