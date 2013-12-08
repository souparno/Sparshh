<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyMatches.aspx.cs" Inherits="Users_MyMatches" %>
<%@ Register Src="~/Users/SideNav.ascx" TagPrefix="UC" TagName="SideNavigation" %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Linq"  %>
<%@ Import Namespace="System.Data.SqlClient" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
          .background
  {
      background-color:#F2F2F2;

  }
        
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

     
     
     .text-select
     {
         height:30px;
         width:210px;
         border:solid 1px #D9D9D9;
         -moz-border-radius: 5px;
         -webkit-border-radius: 5px;
         border-radius: 5px;
     }
     
     .plus
     {
         background-image:url('../image/glyphicons-halflings-white.png');
         background-position: -408px -96px;
         height: 14px;
         width: 14px;
         display: inline-block;
     }
     .minus
     {
         background-image:url('../image/glyphicons-halflings-white.png');
         background-position: -433px -96px;
         height: 14px;
         width: 14px;
         display: inline-block;
     }
     .remove
     {
         background-image:url('../image/glyphicons-halflings-white.png');  
         background-position: -312px 0;
         height: 14px;
         width: 14px;
         display: inline-block;
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
    function lightbox_display_on() {
        document.getElementById("black_overlay").style.display = "block";
        document.getElementById("loader").style.display = "block";
    }

    function msgbox_display_on(ToUserId) {
        document.getElementById("hdn_ToUser").value = ToUserId;
        document.getElementById("black_overlay").style.display = "block";
        document.getElementById("msg_box").style.display = "block";
    }

    function SendMsg() {
        var touserid = document.getElementById("hdn_ToUser").value;
        var msg = document.getElementById("txt_msg").value;
        PageMethods.SendMsg(touserid, msg,semdmsg_success);

    }
    function semdmsg_success() {
        document.getElementById("black_overlay").style.display = "none";
        document.getElementById("msg_box").style.display = "none";
    }
</script>
</asp:Content>
<asp:Content ContentPlaceHolderID="BlackOverLay" runat="server">
    <div class="black-overlay" id="black_overlay"></div>

 <div class="row size-4">
  <div class="column size-5 light-content" id="msg_box">
     <input type="hidden" id="hdn_ToUser" />
     <textarea rows="10" cols="10" class="text-select" style="width:90%;height:30%" id="txt_msg"></textarea>
     <a id="A5" href="javascript:void(0)" runat="server" class="panel-7" onclick="SendMsg()">Send</a>
     <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('black_overlay').style.display ='none';document.getElementById('msg_box').style.display ='none'">Cancel</a>
  </div>
 </div>

 <div class=" row size-1">
  <div class=" column size-12">
   <div class="light-content" id="loader">
    <img src="../image/Request_loader.gif" alt=""  />
   </div>
  </div>
 </div>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
    <UC:SideNavigation runat="server" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">

    

<div class="row size-12">
<div class="column size-12">
 <div class="panel-3">
   <h3 style="padding:0px;margin:0px;">Search By Id</h3>
   <hr />
   <input type="text" class="text-select" id="txt_searchId" name="txt_searchId" runat="server" />
   <a id="A3" href="javascript:void(0)" runat="server" class="panel-7" onserverclick="SearchByIdClick">Search</a>
  <hr />
  <h3 style="padding:0px;margin:0px;">Quick Search</h3>
  <hr />
    &nbsp;<select class="text-select" name="ddl_mother_tongue" id="ddl_mother_tongue" runat="server"></select>
    &nbsp;<select id="ddl_religion" name="ddl_religion" class="text-select" runat="server" onchange="form1.submit();lightbox_display_on();" onserverchange="QuickSearchReligion_OnChange"></select>
    &nbsp;<select id="ddl_Caste" name="ddl_Caste" class="text-select" runat="server"></select>
    <br />
    <br />
   Bride<input type="radio" name="Gender" runat="server" id="radio_Female"/>
   Groom<input type="radio" name="Gender" runat="server" id="radio_male" />
   &nbsp;<select class="text-select" id="ddl_marital_status" runat="server" ></select>
   &nbsp;Age From:<select class="text-select" style="width:54px;" runat="server" id="ddl_age_frm"></select>
   &nbsp;Age To:<select class="text-select" style="width:54px;" runat="server" id="ddl_age_to"></select>
    <br />
    <br />
    <a href="javascript:void(0)" runat="server" class="panel-7" onserverclick="QuickSearch_Click">Search</a>
 </div>
 
</div>
</div>



<div class="row size-12">

 <div class="column size-4">
<div class="panel-3" style="padding-left:0px;padding-right:0px;padding-top:0px;margin-top:0px;">
<h3 style="text-align:center;">Refine Search Results</h3>
<div class="row size-12">

<div class="panel-5">
<span>Height</span>
</div>
<div style="padding-left:10px;">
<br />
From:
<select style="width:54px;" class="text-select" id="ddl_height_from" name="ddl_height_from" onchange="refine_search()">
<%
DataSet ds = new DataSet();
string path = Server.MapPath("~/App_Data/Height.xml");
ds.ReadXml(path);    
DataTable Height = ds.Tables["Height"];
    
    
    
foreach (DataRow dr in Height.Rows)
{
    Response.Write("<option value='"+dr["Key"]+"'>"+dr["Value"]+"</option>");
}    
%>
</select>
To:
<select style="width:54px;" class="text-select" id="ddl_height_to" name="ddl_height_to" onchange="refine_search()">
<%
    
        
    var query = from t1 in Height.AsEnumerable()
                orderby Convert.ToInt32(t1.Field<string>("Key")) descending
                select new
                {
                    Key=t1.Field<string>("Key"),
                    Value=t1.Field<string>("Value"),
                };
        
    
    
foreach (var row in query)
{
   Response.Write("<option value='" + row.Key + "'>" + row.Value + "</option>");
}
%>
</select>
</div>
<br />
<div class="panel-5">
<span>Education</span>
</div>
<div style="padding-left:10px;">

<input type="checkbox" value='%' checked="checked" name="EducationAll_Chk" id="EducationAll_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Education" />
<a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)">All</a>
<br />
    <asp:Repeater ID="Repeater_EducationSearch" runat="server">
      <ItemTemplate>
          <input type="checkbox" value='<%# Eval("Key") %>' id="Education_Chk" name="Education_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Education" />
          <a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)"><%# Eval("Value") %></a>
          <br />
      </ItemTemplate>
    </asp:Repeater>

</div>
<div class="panel-5">
<span>Occupation</span>
</div>
<div style="padding-left:10px;">

<input type="checkbox" value='%' name="OccupationAll_Chk" checked="checked" id="OccupationAll_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Occupation" />
<a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)">All</a>
<br />
    <asp:Repeater ID="Repeater_OccupationSearch" runat="server">
    <ItemTemplate>
       <input type="checkbox" value='<%# Eval("Key") %>' name="Occupation_Chk" id="Occupation_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Occupation" />
       <a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)"><%# Eval("Value") %></a>
       <br />
    </ItemTemplate>
    </asp:Repeater>

</div>
<div class="panel-5">
<span>Location</span>
</div>
<div style="padding-left:10px;">
<input type="checkbox" value='%' name="LocationAll_Chk" id="LocationAll_Chk" checked="checked" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Location" />
<a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)">All</a>
<br />
  <asp:Repeater ID="Repeater_Location" runat="server">
      <ItemTemplate>

          <input type="checkbox" value='<%# Eval("Key") %>' name="Location_Chk" id="Location_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Location"  />
          <a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)"><%# Eval("Value") %></a>
          <br />
      </ItemTemplate>
    </asp:Repeater>
</div>
<div class="panel-5">
<span>Income</span>
</div>
<div style="padding-left:10px;">
<input type="checkbox" value='%' name="IncomeAll_Chk" id="IncomeAll_Chk" checked="checked" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Income" />
<a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)">All</a>
<br />
  <asp:Repeater ID="Repeater_IncomeSearch" runat="server">
      <ItemTemplate>
          <input type="checkbox" value='<%# Eval("Key") %>' name="Income_Chk" id="Income_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Income" />
          <a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)"><%# Eval("Value") %></a>
          <br />
      </ItemTemplate>
 </asp:Repeater>

</div>
<br />
<div class="panel-5">
<span>Mangalik</span>
</div>
<div style="padding-left:10px;">
<input type="checkbox" value='%' name="MangalikAll_Chk" id="MangalikAll_Chk" checked="checked" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Mangalik" />
<a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)">All</a>
<br />
  <asp:Repeater ID="Repeater_MangalikSearch" runat="server">
      <ItemTemplate>
          <input type="checkbox" value='<%# Eval("Key") %>' name="Mangalik_Chk" id="Mangalik_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Mangalik"  />
          <a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)"><%# Eval("Value") %></a>
          <br />
      </ItemTemplate>
 </asp:Repeater>

</div>
<div class="panel-5">
<span>Diet</span>
</div>
<div style="padding-left:10px;">
<input type="checkbox" value='%' checked="checked" name="DietAll_Chk" id="DietAll_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Diet"/>
<a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)">All</a>
<br />
    <asp:Repeater ID="Repeater_Diet" runat="server">
      <ItemTemplate>
          <input type="checkbox" value='<%# Eval("Key") %>' id="Diet_Chk" name="Diet_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Diet"/>
          <a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)"><%# Eval("Value") %></a>
          <br />
      </ItemTemplate>
    </asp:Repeater>
</div>
<div class="panel-5">
<span>Profile Posted By</span>
</div>
<div style="padding-left:10px;">
<input type="checkbox" value='%' checked="checked" name="ProfilePostedByAll_Chk" id="ProfilePostedByAll_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_ProfilePostedBy" />
<a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)">All</a>
<br />
    <asp:Repeater ID="REpeater_ProfilepostedBy" runat="server">
      <ItemTemplate>
          <input type="checkbox" value='<%# Eval("Key") %>' id="ProfilePostedBy_Chk" name="ProfilePostedBy_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_ProfilePostedBy"  />
          <a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)"><%# Eval("Value") %></a>
          <br />
      </ItemTemplate>
    </asp:Repeater>
</div>
<div class="panel-5">
<span>Age</span>
</div>
<div style="padding-left:10px;">
<br />
From:
<select>
 <% 
    for (int i = 18; i <= 60; i++)
     {
         Response.Write("<option value='"+i+"'>"+i+"</option>");
     }
%>
</select>
To:
<select>
 <% 
    for (int i = 18; i <= 60; i++)
     {
         Response.Write("<option value='"+i+"'>"+i+"</option>");
     }
%>
</select>
</div>
<br />
<div class="panel-5">
<span>Marrital Status</span>
</div>
<div style="padding-left:10px;">
<input type="checkbox" value='%' checked="checked" name="MaritalStatusAll_Chk" id="MaritalStatusAll_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_MaritalStatus" />
<a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)">All</a>
<br />
    <asp:Repeater ID="Repaeter_MaritalStatus" runat="server">
      <ItemTemplate>
          <input type="checkbox" value='<%# Eval("Key") %>' name="MaritalStatus_Chk" id="MaritalStatus_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_MaritalStatus" />
          <a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)"><%# Eval("Value") %></a>
          <br />
      </ItemTemplate>
    </asp:Repeater>
  </div>
<div class="panel-5">
<span>Mother Tongue</span>
</div>
<div style="padding-left:10px;">
<input type="checkbox" value='%' checked="checked" name="MotherTongueAll_Chk" id="MotherTongueAll_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_MotherTongue" />
<a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)">All</a>
<br />
    <asp:Repeater ID="Repeater_MotherTongue" runat="server">
      <ItemTemplate>
          <input type="checkbox" value='<%# Eval("Key") %>' name="MotherTongue_Chk" id="MotherTongue_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_MotherTongue" />
          <a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)"><%# Eval("Value") %></a>
          <br />
      </ItemTemplate>
    </asp:Repeater>
    </div>


<div class="panel-5">
<span>Religion</span>
</div>
<div style="padding-left:10px;">
<input type="checkbox" value='%' checked="checked" name="ReligionAll_Chk" id="ReligionAll_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Religion" />
<a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)">All</a>
<br />
  <asp:Repeater ID="Repeater_religion" runat="server">
      <ItemTemplate>
          <input type="checkbox" value='<%# Eval("Key") %>' name="Religion_Chk" id="Religion_Chk" onclick="form1.submit();lightbox_display_on();" runat="server" onserverchange="Refine_Search_Religion" />
          <a style="color:#5B5B5B;" class="checkbox-selector" href="javascript:void(0)"><%# Eval("Value") %></a>
          <br />
      </ItemTemplate>
    </asp:Repeater>
    </div>

</div>
</div>
</div>
  
  <div class="column size-8">
   <div class="panel-3" style="margin-top:0px;" id="search_result">

   <b>You Searched-->&nbsp;&nbsp;<label id="lbl_search" runat="server"></label></b>
   <hr />
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

               <a href="ViewProfile.aspx?ProfileView=<%# Eval("usr_id")  %>" style="font-size:x-small;color:Black"><i class="handsup"></i>&nbsp;&nbsp;VIEW PROFILE</a>
              </div>
              <div class='column size-9'>

                
                 <table style="width:100%;">
                  <tr>
                   <td colspan="2">
                    <a href="javascript:void(0)" onclick="show_chat('<%# Eval("usr_id") %>');" style="color:Black;font-size:small"><i class="chat"></i>&nbsp;&nbsp;CHAT</a>
                   </td>
                  </tr>
                  <tr>
                   <td>User Name</td>
                   <td>:&nbsp;&nbsp;<%#Eval("Name") %>(<%#Eval("usr_id") %>)</td>
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
              <a href="MyMatches.aspx?ExpressInterestProfileId=<%#Eval("usr_id") %>&&ExpressInterestProfileName=<%#Eval("Name") %>" style="font-size:x-small;color:Black;">
               <i class="thumbsup"></i>
               <br />
               SEND INTEREST
              </a>
             </div>
             <div class="column size-3">
              <a href="javascript:void(0)" onclick="msgbox_display_on('<%# Eval("usr_id") %>')" style="font-size:x-small;color:Black;">
               <i class="message"></i>
               <br />
               MESSAGE
              </a>
             </div>
            </div>

           </ItemTemplate>
         </asp:TemplateField>
        </Columns>
       </asp:GridView>



   </div>
  </div>
  
 </div>


<div class="light-content" id="ShowExpressInterest">
 <h3>Interest Expressed To <% Response.Write(Request.QueryString["ExpressInterestProfileName"] +"("+ Request.QueryString["ExpressInterestProfileId"] + ")"); %></h3>
 <a href="MyMatches.aspx" class="panel-7">Ok</a>
</div>


<%
  
    string ExpressInterestProfileId = Request.QueryString["ExpressInterestProfileId"];
    string ExpressInterestProfileName=Request.QueryString["ExpressInterestProfileName"];
    if (ExpressInterestProfileId != null && ExpressInterestProfileName !=null )
    {
        string FromUerId = Convert.ToString(Session["UserId"]);
        string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        SqlConnection con = new SqlConnection(_connection);
        string sql = "insert into usr_ExpressInterest(usr_id_to,usr_id_from,InterestPending) values('" + ExpressInterestProfileId + "','" + FromUerId + "','0');";
        SqlCommand cmd = new SqlCommand(sql, con);
        con.Open();
        int exec = cmd.ExecuteNonQuery();
        con.Close();
        if (exec >= 1)
        {
            Response.Write("<script type='text/javascript'>document.getElementById('black_overlay').style.display = 'block';document.getElementById('ShowExpressInterest').style.display = 'block';</script>");
        }
        
    }
            
%>

</asp:Content>

