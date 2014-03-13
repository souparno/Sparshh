<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="" class="active" >Hello Admin</a></li>
          </ul>
  </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">

<%--Start of the Content Section--%>

<div class="row size-12" style="margin-top:20px;">
 
 <div class="column size-6">
  <div class="container">
   <div>
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a id="tab_about" href="javascript:void(0);" class="panel-inactive-tab" style="font-size:13px;" >Manage Offline Members</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap" style="padding-top:10px;">
                                 <p><a href="Admin-AddOFlineMembers.aspx"><span class="aro"></span>Add Members</a></p>
                                <p><a href="Admin-ViewOfflineMembers.aspx"><span class="aro"></span>View All Members</a></p>
                                <p><a href="Admin-MangeOfflineToken.aspx"><span class="aro"></span>Mnage Token</a></p>
    </div>
   </div>
  </div>
 </div>

</div>

<%--End of the Content Section--%>

</asp:Content>

