<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" %>
<%@ Import Namespace="System"  %>
<%@ Import Namespace="System.Collections.Generic"  %>
<%@ Import Namespace="System.Linq"  %>
<%@ Import Namespace="System.Web"  %>
<%@ Import Namespace="System.Web.UI.WebControls"  %>
<%@ Import Namespace="System.Web.Services"  %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>

<script runat="server">
    string _connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        if(!IsPostBack) Fill_GridSearchResult();
        
    }
    private void Fill_GridSearchResult()
    {
        DataSet ds = new DataSet();
        string path = Server.MapPath("~/App_Data/MotherTongue.xml");
        ds.ReadXml(path);
        DataTable MotherTongue = ds.Tables["MotherTongue"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Religion.xml");
        ds.ReadXml(path);
        DataTable Religion = ds.Tables["Religion"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Caste.xml");
        ds.ReadXml(path);
        DataTable Caste = ds.Tables["Caste"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Height.xml");
        ds.ReadXml(path);
        DataTable Height = ds.Tables["Height"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/EducationDetails.xml");
        ds.ReadXml(path);
        DataTable Education = ds.Tables["EducationDetails"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/OccupationDetails.xml");
        ds.ReadXml(path);
        DataTable Occupation = ds.Tables["OccupationDetails"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Income.xml");
        ds.ReadXml(path);
        DataTable Income = ds.Tables["Income"];

        ds = new DataSet();
        path = Server.MapPath("~/App_Data/Country.xml");
        ds.ReadXml(path);
        DataTable Country = ds.Tables["Country"];

        string picture_folder_name = ConfigurationManager.AppSettings["MemberPictureFolder"];

        string sql = "select usr_id,usr_profile_pic,usr_name,usr_mother_tongue,usr_religion,usr_height,usr_caste,usr_education_category,usr_profession,usr_incme,usr_country from offline_usr_details;";
        SqlConnection con = new SqlConnection(_connection);
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        DataTable dt = new DataTable();
        da.Fill(dt);



        var query = from t15 in
                             (
                                 from t13 in
                                     (
                                         from t11 in
                                             (
                                                 from t9 in
                                                     (
                                                         from t7 in
                                                             (
                                                                 from t5 in
                                                                     (
                                                                         from t3 in
                                                                             (
                                                                                 from t1 in dt.AsEnumerable()
                                                                                 join t2 in MotherTongue.AsEnumerable()
                                                                                 on t1.Field<string>("usr_mother_tongue") equals t2.Field<string>("Key") into table
                                                                                 from p in table.DefaultIfEmpty()
                                                                                 select new
                                                                                 {
                                                                                     usr_id = t1.Field<string>("usr_id"),
                                                                                     Name = t1.Field<string>("usr_name"),
                                                                                     MotherTongue = p == null ? "" : p.Field<string>("Value"),
                                                                                     Religion = t1.Field<string>("usr_religion"),
                                                                                     Height = t1.Field<string>("usr_height"),
                                                                                     Caste = t1.Field<string>("usr_caste"),
                                                                                     Education = t1.Field<string>("usr_education_category"),
                                                                                     Occupation = t1.Field<string>("usr_profession"),
                                                                                     Income = t1.Field<string>("usr_incme"),
                                                                                     Country = t1.Field<string>("usr_country"),
                                                                                     ProfilePic = "../" + picture_folder_name + "/" + t1.Field<string>("usr_profile_pic"),
                                                                                 }).AsEnumerable()
                                                                         join t4 in Religion.AsEnumerable()
                                                                         on t3.Religion equals t4.Field<string>("Key") into table
                                                                         from p in table.DefaultIfEmpty()
                                                                         select new
                                                                         {
                                                                             usr_id = t3.usr_id,
                                                                             Name = t3.Name,
                                                                             MotherTongue = t3.MotherTongue,
                                                                             Religion = p == null ? "" : p.Field<string>("Value"),
                                                                             Height = t3.Height,
                                                                             Caste = t3.Caste,
                                                                             Education = t3.Education,
                                                                             Occupation = t3.Occupation,
                                                                             Income = t3.Income,
                                                                             Country = t3.Country,
                                                                             ProfilePic = t3.ProfilePic,
                                                                         }).AsEnumerable()
                                                                 join t6 in Height.AsEnumerable()
                                                                 on t5.Height equals t6.Field<string>("Key") into table
                                                                 from p in table.DefaultIfEmpty()
                                                                 select new
                                                                 {
                                                                     usr_id = t5.usr_id,
                                                                     Name = t5.Name,
                                                                     MotherTongue = t5.MotherTongue,
                                                                     Religion = t5.Religion,
                                                                     Height = p == null ? "" : p.Field<string>("Value"),
                                                                     Caste = t5.Caste,
                                                                     Education = t5.Education,
                                                                     Occupation = t5.Occupation,
                                                                     Income = t5.Income,
                                                                     Country = t5.Country,
                                                                     ProfilePic = t5.ProfilePic,
                                                                 }).AsEnumerable()
                                                         join t8 in Caste.AsEnumerable()
                                                         on t7.Caste equals t8.Field<string>("Key") into table
                                                         from p in table.DefaultIfEmpty()
                                                         select new
                                                         {
                                                             usr_id = t7.usr_id,
                                                             Name = t7.Name,
                                                             MotherTongue = t7.MotherTongue,
                                                             Religion = t7.Religion,
                                                             Height = t7.Height,
                                                             Caste = p == null ? "" : p.Field<string>("Value"),
                                                             Education = t7.Education,
                                                             Occupation = t7.Occupation,
                                                             Income = t7.Income,
                                                             Country = t7.Country,
                                                             ProfilePic = t7.ProfilePic,
                                                         }).AsEnumerable()
                                                 join t10 in Education.AsEnumerable()
                                                 on t9.Education equals t10.Field<string>("Key") into table
                                                 from p in table.DefaultIfEmpty()
                                                 select new
                                                 {
                                                     usr_id = t9.usr_id,
                                                     Name = t9.Name,
                                                     MotherTongue = t9.MotherTongue,
                                                     Religion = t9.Religion,
                                                     Height = t9.Height,
                                                     Caste = t9.Caste,
                                                     Education = p == null ? "" : p.Field<string>("Value"),
                                                     Occupation = t9.Occupation,
                                                     Income = t9.Income,
                                                     Country = t9.Country,
                                                     ProfilePic = t9.ProfilePic,
                                                 }).AsEnumerable()
                                         join t12 in Occupation.AsEnumerable()
                                         on t11.Occupation equals t12.Field<string>("Key") into table
                                         from p in table.DefaultIfEmpty()
                                         select new
                                         {
                                             usr_id = t11.usr_id,
                                             Name = t11.Name,
                                             MotherTongue = t11.MotherTongue,
                                             Religion = t11.Religion,
                                             Height = t11.Height,
                                             Caste = t11.Caste,
                                             Education = t11.Education,
                                             Occupation = p == null ? "" : p.Field<string>("Value"),
                                             Income = t11.Income,
                                             Country = t11.Country,
                                             ProfilePic = t11.ProfilePic,
                                         }).AsEnumerable()
                                 join t14 in Income.AsEnumerable()
                                 on t13.Income equals t14.Field<string>("Key") into table
                                 from p in table.DefaultIfEmpty()
                                 select new
                                 {
                                     usr_id = t13.usr_id,
                                     Name = t13.Name,
                                     MotherTongue = t13.MotherTongue,
                                     Religion = t13.Religion,
                                     Height = t13.Height,
                                     Caste = t13.Caste,
                                     Education = t13.Education,
                                     Occupation = t13.Occupation,
                                     Income = p == null ? "" : p.Field<string>("Value"),
                                     Country = t13.Country,
                                     ProfilePic = t13.ProfilePic,
                                 }).AsEnumerable()
                         join t16 in Country.AsEnumerable()
                         on t15.Country equals t16.Field<string>("Key") into table
                         from p in table.DefaultIfEmpty()
                         select new
                         {
                             usr_id = t15.usr_id,
                             Name = t15.Name,
                             MotherTongue = t15.MotherTongue,
                             Religion = t15.Religion,
                             Height = t15.Height,
                             Caste = t15.Caste,
                             Education = t15.Education,
                             Occupation = t15.Occupation,
                             Income = t15.Income,
                             Country = p == null ? "" : p.Field<string>("Value"),
                             ProfilePic = t15.ProfilePic,

                         };






        Grd_Search_Result.DataSource = query;
        Grd_Search_Result.DataBind();

    }

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="" class="active" >View Offline Members</a></li>
          </ul>
  </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
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


<%--Offline Members Grid--%>
<div class="column size-6">
 <div class="container">
  <asp:GridView ID="Grd_Search_Result" 
       runat="server"
       GridLines="None"
       AutoGenerateColumns="false"
       Width="100%">
        <Columns>
         <asp:TemplateField>
           <ItemTemplate>

           <div class="row size-12" style="margin-bottom:10px;">
             <div class='row size-12 panel-3' style='padding:10px;margin-bottom:0px;'>
              <div class='column size-3' style='padding-left:0px;'>
               <img src="<%#Eval("ProfilePic")%>" style="height:auto; width:100%;" alt="" />
               <hr />
              </div>
              <div class='column size-9'>
               <table width="100%">
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
             <div class='row size-12  panel-1' style='padding:10px;'>
             <div class="column" style="border-right:1px solid #D9D9D9;width:24%;">
              <a href="javascript:void(0)" style="font-size:x-small;color:Black">VIEW PROFILE</a>
             </div>
             <div class="column" style="border-right:1px solid #D9D9D9;width:24%;">
              <a href="Admin-EditOfflineMember.aspx?uid=<%#Eval("usr_id") %>" style="font-size:x-small;color:Black;">EDIT PROFILE</a>
             </div>
             <div class="column" style="border-right:1px solid #D9D9D9;width:24%;">
              <a href="javascript:void(0)" style="font-size:x-small;color:Black;">DELETE PROFILE</a>
             </div>
             <div class="column" style="width:24%;">
              <a href="Admin-CreateToken.aspx?uid=<%#Eval("usr_id") %>" style="font-size:x-small;color:Black;">CREATE TOKEN</a>
             </div>
            </div>
            </div>

           </ItemTemplate>
         </asp:TemplateField>
        </Columns>
       </asp:GridView>
 </div>
</div>
<%--End of Grid--%>
</div>
</asp:Content>

