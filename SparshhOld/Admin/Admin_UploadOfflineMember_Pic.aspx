<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" %>
<%@ Import Namespace="System"  %>
<%@ Import Namespace="System.Collections.Generic"  %>
<%@ Import Namespace="System.Linq"  %>
<%@ Import Namespace="System.Web"  %>
<%@ Import Namespace="System.Web.UI.WebControls"  %>
<%@ Import Namespace="System.Web.Services"  %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>
<%@ Import Namespace="System.IO"  %>

<script runat="server">
    string _connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        if (!IsPostBack)
        {


        }
    }

    

    public void UploadPic_Click(object sender, EventArgs e)
    {
        //uploading pictures
        string picture_folder_name = ConfigurationManager.AppSettings["MemberPictureFolder"];
        string file_path = Server.MapPath("~/" + picture_folder_name + "/");
        HttpPostedFile file = picture_uploader.PostedFile;
        string profile_pic_name = "";
        if (file.FileName != "")
        {
            profile_pic_name = generate_picture_name(file_path, file.FileName.Split('.')[0], file.FileName.Split('.')[1]);
            file.SaveAs(file_path + profile_pic_name);

            string sql = "INSERT INTO [matrimony].[dbo].[offline_usr_pic]   ([usr_id],[pic_name])  VALUES  ('"+Request.QueryString["usr_id"]+"' ,'"+profile_pic_name+"')";            
            SqlConnection con = new SqlConnection(_connection);
            SqlCommand cmd = new SqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
        }
        
    }
    public string generate_picture_name(string file_path, string file_name, string file_ext)
    {
        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        var random = new Random();
        var result = new string(
            Enumerable.Repeat(chars, 4)
                      .Select(s => s[random.Next(s.Length)])
                      .ToArray());

        DirectoryInfo difiles = new DirectoryInfo(file_path);
        var file_present = (from di_file in difiles.GetFiles() where di_file.Name == file_name + result + "." + file_ext select difiles.Name).Count();

        if (file_present == 0) return file_name + result + "." + file_ext;
        return generate_picture_name(file_path, file_name, file_ext);

    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="" class="active" >Upload Images</a></li>
          </ul>
  </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
<div class="row size-12" style="margin-top:20px;">
 


 <%--Left Navigation Panel--%>
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
<%-- End of Left Navigation Panel--%>

<div class="column size-6">
<div class="container">
 
    <%--User Pic--%>
  <div class="row size-12">
  <div>
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a id="A8" href="javascript:void(0);" class="panel-inactive-tab" style="font-size:13px;" >Profile pic</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap" style="padding-top:10px;">

      <div class="panel-3">
     Upload Picture&nbsp;&nbsp;&nbsp;&nbsp;<input type="file" id="picture_uploader" runat="server" />
     &nbsp;&nbsp;<button runat="server" onserverclick="UploadPic_Click">Upload</button>
   </div>



   <div class="row size-12">

      <%
    

        string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        SqlConnection con = new SqlConnection(_connection);
        string sql = "SELECT [usr_id],[pic_name]  FROM [matrimony].[dbo].[offline_usr_pic] where usr_id='" + Request.QueryString["usr_id"] + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);
        string picture_folder_name = ConfigurationManager.AppSettings["MemberPictureFolder"];
        foreach (DataRow dr in dt.Rows)
        {
            
     %>
        <div class='column size-2' style='text-align:center;'>
        <div class="container">
        <img src='../MemberPictures/<% Response.Write(dr["pic_name"]); %>' style='width:100%;height:auto' alt=''/>
        </div>
        </div>
     <%           
        }
            
     %>

     </div>

   </div>  
  </div>
  <%--end User Pic--%>
</div>
</div>

</div>
</div>
</asp:Content>

