<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MyPictures.aspx.cs" Inherits="Users_MyPictures" %>
<%@ Register Src="~/Users/SideNav.ascx" TagPrefix="UC" TagName="Navigation" %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>
<%@ Import Namespace="System.Linq"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
  .background
  {
      background-image:url(../image/banner-preveledge.jpg);
      
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
 

  .language-nav
     {
         background-image:url(../image/nav-bg.png);
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
 <script type="text/javascript">
     function makeProfilePic(pic_name) {
         PageMethods.MakeProfilePic(pic_name, Success);

     }
     function Success() {
         alert("Profile Picture Created Successfully");
     }
 </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BlackOverLay" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
  <UC:Navigation ID="Navigation1" runat="server" />
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="content" Runat="Server">

 <div class="row size-11">
  <div class="column size-12">
   <div class="panel-3">
     Upload Picture&nbsp;&nbsp;&nbsp;&nbsp;<asp:FileUpload ID="image_Upload" runat="server" CssClass="text-select"/>
     &nbsp;&nbsp;<a href="javascript:void(0)" class="panel-7" runat="server" onserverclick="UploadPic_Click">Upload</a>
   </div>
  </div>
 </div>

 <div class="row size-11">
   <div class="panel-3">


    <%
    
        string userid = Convert.ToString(Session["UserId"]);
        string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        SqlConnection con = new SqlConnection(_connection);
        string sql = "select pic_id,picture from usr_pic_album where usr_id='" + userid + "';";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);

        foreach (DataRow dr in dt.Rows)
        {
            
     %>
        <div class='column size-2' style='text-align:center;'>
        <img src='Pictures/<% Response.Write(dr["picture"]); %>' style='width:100%;height:auto' alt=''/>
        <br />
        <a href='javascript:void(0);' style='color:Blue;' onclick="makeProfilePic('<% Response.Write(dr["picture"]); %>')">Profile Pic</a>
        </div>
     <%           
        }
            
     %>


    <div class="clear"></div>
  </div>
 </div>

</asp:Content>

