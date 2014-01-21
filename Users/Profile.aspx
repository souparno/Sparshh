<%@ Page Title="" Language="C#" MasterPageFile="~/Users/MasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="Users_Profile" MaintainScrollPositionOnPostback="false" %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>
<%@ Import Namespace="System.Linq"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
     

     
     
     
  .background
  {
      background-color:White;

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
     function display_overlay() {
         document.getElementById('black_overlay').style.display = 'block';
     }
 </script>
 <script type="text/javascript">

     function get_religion() {
         var religion = document.getElementById("ddl_religion_edit").value;
         PageMethods.get_caste(religion, set_caste);

     }

     function set_caste(inner_html) {
         document.getElementById("ddl_Caste_edit").innerHTML = inner_html;

     }
   
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Navigation" Runat="Server">
<%--Top Navigation--%>
<div class="row size-12" style=" background: none repeat scroll 0 0 #E8E8E8;margin-bottom:0px;">
 <div class="column size-12">
          <ul class="nav inline-nav">
           <li><a href="Profile.aspx" class="active" >My Profile</a></li>
           <li><a href="MyMatches.aspx">My Matches</a></li>
           <li><a href="MyContacts.aspx">My Contacts</a></li>
           <li><a href="MyMessages.aspx">My Messages</a></li>
           <li><a href="Upgrade.aspx">Upgrade</a></li>
          </ul>
  </div>
</div>
<%--End Of top Navigation--%>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="content" Runat="Server">

<div class="row size-12">

<div class="column size-2">
  <div class="panel-3" style="margin-top:40px;">
     <%
     string userid = Convert.ToString(Session["UserId"]);
     string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
     SqlConnection con = new SqlConnection(_connection);
     string sql = "select usr_profile_pic from usr_details where usr_id='" + userid + "';";
     SqlCommand cmd = new SqlCommand(sql, con);
     con.Open();
     string profile_pic = Convert.ToString(cmd.ExecuteScalar());
     con.Close();
     
 %>
 <center><img src='<% Response.Write(profile_pic);%>' style="width:100%;height:auto;border:1px solid black;" alt="" /></center>
  </div>
  <div class="clear"></div>
  <center>
    <h3 style="font-size:14px;">User Code: <% Response.Write(userid); %></h3>
  <a class="panel-7" href="MyPictures.aspx"><b>Upload Pictures</b></a>
  </center>
</div>
<div class="column size-10">
<div class="container">
 <div style="margin-top:40px;">
      <ul class="nav inline-nav" style="padding-bottom:0px;text-align:left;">
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;" >About Me</a></li>
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-active-tab"   style="font-size:13px;">Basic Information</a></li>
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;">Education n Occupation</a></li>
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;">Religion Attributes</a></li>  
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;">Physical Attributes</a></li>
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;">Contact Information</a></li>
      <li style="margin-left:0px;margin-right:0px;"><a href="" class="panel-inactive-tab" style="font-size:13px;">Family Details</a></li>
     </ul>
    <div style="clear:both"></div>
   <div class="form_inner_wrap">
        <asp:FormView ID="frm_basic_info" runat="server">
       <ItemTemplate>
         <h4 style="margin-top:0px;">
          Basic Information
          <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_Basic_Info').style.display='block';document.getElementById('black_overlay').style.display='block';">Edit</a>
         </h4>
         <table>
           <tr>
             <td>Profile Posted By</td>
             <td>:&nbsp;&nbsp;<%# Eval("ProfilePostedBy") %></td>
           </tr>
           <tr>
            <td>Name</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_name") %></td>
           </tr>
           <tr>
             <td>Gender</td>
             <td>:&nbsp;&nbsp;<%# Eval("usr_gender") %></td>
           </tr>
           <tr>
             <td>Date Of Birth</td>
             <td>:&nbsp;&nbsp;<%# Eval("usr_dob_day")%>-<%# Eval("usr_dob_month")%>-<%# Eval("usr_dob_year") %></td>
           </tr>
           <tr>
             <td>Age</td>
             <td>:&nbsp;&nbsp;<%# Convert.ToInt32(DateTime.Now.Year) - Convert.ToInt32(Eval("usr_dob_year"))%></td>
           </tr>
           <tr>
             <td>Marital Status</td>
             <td>:&nbsp;&nbsp;<%# Eval("Marital_status")%></td>
           </tr>
           <tr>
            <td>No. Of Children</td>
            <td>:&nbsp;&nbsp;<%# Eval("NoOfChildren")%></td>
           </tr>
           <tr>
            <td>Children Living</td>
            <td>:&nbsp;&nbsp;<%# Eval("ChildrenLivingWith") %></td>
           </tr>
          </table>

          <%--Start Of the Edit Region of the basic Info--%>
          <div class="light-content size-7" id="Edit_Basic_Info" style="z-index:10000;">

         <h4>
          BASIC INFORMATION
          <a id="A2" href="javascript:void(0)" class="panel-7" runat="server" onserverclick="UpdateBasicInfo_Click" >Update</a>
           <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_Basic_Info').style.display='none';document.getElementById('black_overlay').style.display='none';" >Cancel</a>
         </h4>

             

            <table>
           <tr>
             <td>Posted By:</td>
             <td class="pad">
              <select class="text-select" name="ddl_profileposted_by_edit">
               <option value='<%# Eval("ProfilePostedBy_Key") %>'><%# Eval("ProfilePostedBy")==""?"--Select Profile Posted By": Eval("ProfilePostedBy") %></option>
                 <%
              
                 DataSet ds = new DataSet();
                 string path = Server.MapPath("~/App_Data/ProfilePostedBy.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["ProfilePostedBy"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
                %>
              </select>
             </td>
           </tr>
           <tr>
            <td>Name:</td>
            <td class="pad"><input type="text" class="text-select" name="txt_name_edit" value='<%# Eval("usr_name") %>' /></td>
           </tr>
           <tr>
             <td>Gender:</td>
             <td class="pad">
             <%
               
                 
                 string userid = Convert.ToString(Session["UserId"]);
                 string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
                 SqlConnection con = new SqlConnection(_connection);
                 string sql = "select usr_gender from usr_details where usr_id='" + userid + "';";
                 SqlCommand cmd = new SqlCommand(sql, con);
                 con.Open();
                 string gender = Convert.ToString(cmd.ExecuteScalar()).Trim();
                 con.Close();

                 if (gender.Equals("Male"))
                 {

                     Response.Write("<input type='radio' name='gender' value='Male' checked='true' />Male");
                     Response.Write("<input type='radio' name='gender' value='Fe-Male' />Fe-Male");
                 }
                 else
                 {
                     Response.Write("<input type='radio' name='gender' value='Male' />Male");
                     Response.Write("<input type='radio' name='gender' value='Fe-Male' checked='true' />Fe-Male");
                 }
             %>

             </td>
           </tr>
           <tr>
             <td>Date Of Birth:</td>
             <td class="pad">
           
           <select class="text-select" style="width:60px;" name="ddl_dob_day">
            <option value='<%# Eval("usr_dob_day") %>'><%# Convert.ToInt32(Eval("usr_dob_day")) == 0 ?"dd":Eval("usr_dob_day") %></option>
            <% 
                for (int i = 1; i <= 31; i++)
                {
                    Response.Write("<option value='"+i+"'>"+i+"</option>"); 
                }
            %>
           </select>

           <select class="text-select" style="width:60px;" name="ddl_dob_month">
            <option value='<%# Eval("usr_dob_month") %>'><%# Convert.ToInt32(Eval("usr_dob_month")) == 0 ? "mm" : Eval("usr_dob_month")%></option>
            <% 
                for (int i = 1; i <= 12; i++)
                {
                    Response.Write("<option value='"+i+"'>"+i+"</option>"); 
                }
            %>
           </select>

           <select class="text-select" style="width:80px;" name="ddl_dob_year">
            <option value='<%# Eval("usr_dob_year") %>'><%# Convert.ToInt32(Eval("usr_dob_year")) == 0 ? "mm" : Eval("usr_dob_year")%></option>
            <% 
                for (int i = 1970; i <= 2013; i++)
                {
                    Response.Write("<option value='"+i+"'>"+i+"</option>"); 
                }
            %>
           </select>
         </td>
           </tr>
           <tr>
             <td>Marital Status:</td>
             <td class="pad">
             <select name="ddl_marital_status_edit" class="text-select">
             <option value='<%# Eval("marital_status_key") %>'><%# Eval("Marital_status") == "" ? "--Select Marital Status" : Eval("Marital_status") %></option>
             <%
              
                 ds = new DataSet();
                 path = Server.MapPath("~/App_Data/MaritalStatus.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["MaritalStatus"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
              %>
              </select>
             </td>
           </tr>
           <tr>
            <td>No. Of Children</td>
            <td class="pad">
             <select name="ddl_no_of_Children" class="text-select">
              <option value='<%# Eval("NoOfChildrenKey") %>'><%# Eval("NoOfChildren") == "" ? "--Select No. Of Children" : Eval("NoOfChildren")%></option>
              <%
                  ds = new DataSet();
                  path = Server.MapPath("~/App_Data/NoOfChildren.xml");
                  ds.ReadXml(path);
                  foreach (DataRow dr in ds.Tables["NoOfChildren"].Rows)
                  {
                      Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                  }  
              %>
             </select>
            </td>
           </tr>
           <tr>
            <td>Children Staying With</td>
            <td class="pad">
             <select id="ddl_children_living_with" name="ddl_children_living_with" class="text-select">
              <option value='<%# Eval("ChildrenLivingWithKey") %>'><%# Eval("ChildrenLivingWithKey") == "" ? "--Select Option" : Eval("ChildrenLivingWith")%></option>
              <%
                  ds = new DataSet();
                  path = Server.MapPath("~/App_Data/ChildrenStayingWith.xml");
                  ds.ReadXml(path);
                  foreach (DataRow dr in ds.Tables["ChildrenStayingWith"].Rows)
                  {
                      Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                  }  
              %>
            </td>
           </tr>
          </table>

          </div>

          <%--End of the Edit Region of Basic Info--%>



       </ItemTemplate>
      </asp:FormView>
    </div>
   </div>
</div>
</div>
  
</div>

<div class="row size-12">
<div class="column size-12">
  <div class="panel-3">
      <asp:FormView ID="Frm_About_User" runat="server">
       <ItemTemplate>
        <h4 style="margin-top:0px;">
          About Me
          <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_About_Myself').style.display='block';document.getElementById('black_overlay').style.display='block';">Edit</a>
        </h4>
        <table>
         <tr>
          <td>About Me:</td>
          <td>&nbsp;&nbsp;<%# Eval("usr_about")%>
          </td>
         </tr>
        </table>

        <%--Edit Region start for about user--%>
        <div class="light-content size-7" id="Edit_About_Myself" style="z-index:10000;">
         <h4>
          About Me
          <a id="A2" href="javascript:void(0)" class="panel-7" runat="server" onserverclick="UpdateAboutMe_Click">Update</a>
           <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_About_Myself').style.display='none';document.getElementById('black_overlay').style.display='none';" >Cancel</a>
         </h4>

         <table>
         <tr>
          <td>&nbsp;&nbsp;<textarea class="text-select" rows="100" cols="100" style="width:90%;height:100px;" name="txt_about_me"><%# Eval("usr_about")%></textarea>
          </td>
         </tr>
        </table>

         </div>
         <%--End of Edit Region for about user--%>

       </ItemTemplate>
      </asp:FormView>
  </div>
</div>
</div>

<div class="row size-12">
 <div class="column size-12">
  <div class="panel-3">



<asp:FormView ID="Frm_Education_Occupation" runat="server">
<ItemTemplate>
           <h4>
             Education And Occupation
             <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_Education_Occupation').style.display='block';document.getElementById('black_overlay').style.display='block';" >Edit</a>
           </h4>
           <table>
            <tr>
             <td>Higest Education</td>
             <td>:&nbsp;&nbsp;<%# Eval("Education") %></td>
            </tr>
            <tr>
             <td>Education Details:</td>
             <td>:&nbsp;&nbsp;<%# Eval("Education_details") %></td>
            </tr>
            <tr>
             <td>Occupation:</td>
             <td>:&nbsp;&nbsp;<%# Eval("Occupation") %></td>
            </tr>
            <tr>
             <td>Occupation Details</td>
             <td>:&nbsp;&nbsp;<%# Eval("Occupation_details") %></td>
            </tr>
            <tr>
             <td>Annual Income</td>
             <td>:&nbsp;&nbsp;<%# Eval("Income") %></td>
            </tr>
           </table>

                   
           <%--Start of edit--%>
           <div class="light-content size-7" id="Edit_Education_Occupation" style="z-index:10000;">
           <h4>
           Education And Occupation
           <a href="javascript:void(0)" class="panel-7" runat="server" onserverclick="UpdateEducationOccupation_Click" >Update</a>
           <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_Education_Occupation').style.display='none';document.getElementById('black_overlay').style.display='none';" >Cancel</a>
           </h4>
           <table>
            <tr>
             <td>Higest Education:</td>
             <td class="pad">
               <select class="text-select" id="ddl_highest_education_edit" name="ddl_highest_education_edit">
                <option value='<%# Eval("Education_Key") %>'><%# Eval("Education")==""?"--Select Qualification":Eval("Education") %></option>
                <%
              
                 DataSet ds = new DataSet();
                 string path = Server.MapPath("~/App_Data/EducationDetails.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["EducationDetails"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
                %>
               </select>
             </td>
            </tr>
            <tr>
             <td>Education Details</td>
             <td class="pad"><input type="text" class="text-select" id="txt_education_detail" name="txt_education_detail" value='<%# Eval("Education_details") %>'/></td>
            </tr>
            <tr>
             <td>Occupation:</td>
             <td class="pad">
               <select id="ddl_occupation_edit" name="ddl_occupation_edit" class="text-select">
                 <option value='<%# Eval("Occupation_Key") %>'><%# Eval("Occupation") == "" ? "--Select Occupation" : Eval("Occupation")%></option>
                 
                 <%
              
                 ds = new DataSet();
                 path = Server.MapPath("~/App_Data/OccupationDetails.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["OccupationDetails"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
                %>
               </select>
             </td>
            </tr>
            <tr>
             <td>Occupation Details:</td>
             <td class="pad"><input type="text" class="text-select" id="Occupation_details" name="Occupation_details" value='<%# Eval("Occupation_details") %>' /></td>
            </tr>
            <tr>
             <td>Annual Income</td>
             <td class="pad">
              <select class="text-select" id="ddl_income_edit" name="ddl_income_edit">
               <option value='<%# Eval("Income_Key") %>'><%# Eval("Income") == "" ? "--Select Annual Income" : Eval("Income") %></option>

               <%
              
                 ds = new DataSet();
                 path = Server.MapPath("~/App_Data/Income.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["Income"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
                %>
              </select>

             </td>
            </tr>
           </table>
           </div>
           
            <%--End of edit--%>

          </ItemTemplate>
</asp:FormView>
  </div>
 </div>
</div>
<div class="row size-12">
 <div class="column size-12">
  <div class="panel-3">
      <asp:FormView ID="Frm_Religious_Attributes" runat="server">
       <ItemTemplate>
         
          <h4>
             Religious Attributes
             <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('edit_religious_attributes').style.display='block';document.getElementById('black_overlay').style.display='block';" >Edit</a>
          </h4>
          <table>
           <tr>
            <td>Mother Tongue:</td>
            <td>:&nbsp;&nbsp;<%# Eval("MotherTongue")%></td>
           </tr>
           <tr>
            <td>Religion</td>
            <td>:&nbsp;&nbsp;<%# Eval("Religion")%></td>
           </tr>
           <tr>
            <td>Caste</td>
            <td>:&nbsp;&nbsp;<%# Eval("Caste")%></td>
           </tr>
           <tr>
            <td>Sub Caste</td>
            <td>:&nbsp;&nbsp;<%# Eval("SubCaste") %></td>
           </tr>
           <tr>
            <td>Place Of Birth</td>
            <td>:&nbsp;&nbsp;<%# Eval("BirthPlace") %></td>
           </tr>
           <tr>
            <td>Mangalik</td>
            <td>:&nbsp;&nbsp;<%# Eval("Mangalik")%></td>
           </tr>
           <tr>
            <td>Gotra</td>
            <td>:&nbsp;&nbsp;<%# Eval("Gotra") %></td>
           </tr>
           <tr>
            <td>Nakshatra</td>
            <td>:&nbsp;&nbsp;<%# Eval("Nakshatra") %></td>
           </tr>
           <tr>
            <td>Sun Sign</td>
            <td>:&nbsp;&nbsp;<%# Eval("Sunsign") %></td>
           </tr>
          </table>


           <%--Edit Religious Attribute Div--%>
      <div class="size-7 light-content" id="edit_religious_attributes" style="z-index:10000;">
        <h4>
           Religious Attributes
           <a id="A1" href="javascript:void(0)" class="panel-7" runat="server" onserverclick="Update_ReligiousArrribute_Click" >Update</a>
           <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('edit_religious_attributes').style.display='none';document.getElementById('black_overlay').style.display='none';" >Cancel</a>
          </h4>

          <table>
           <tr>
            <td>Mother Tongue</td>
            <td class="pad">
            
            <select id="ddl_mother_tongue_edit" name="ddl_mother_tongue_edit" class="text-select">
             <option value='<%# Eval("MotherTongue_Key") %>'><%# Eval("MotherTongue") == "" ? "--Select MotherTongue" : Eval("MotherTongue") %></option>
              <%
              
                 DataSet ds = new DataSet();
                 string path = Server.MapPath("~/App_Data/MotherTongue.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["MotherTongue"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
              %>
            </select>
            
            </td>
            </tr>
            <tr>
             <td>Religion</td>
             <td class="pad">
    
             
             <select id="ddl_religion_edit" name="ddl_religion_edit" onchange="get_religion()" class="text-select">
             <option value='<%# Eval("Religion_Key") %>'><%# Eval("Religion") == "" ? "--Select Religion" : Eval("Religion") %></option>
             <%
                 
                 ds = new DataSet();
                 path = Server.MapPath("~/App_Data/Religion.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["Religion"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
              %>
           </select>
             
             
             </td>
            </tr>
            <tr>
             <td>Caste</td>
             <td class="pad">
              <select id="ddl_Caste_edit" name="ddl_Caste_edit" class="text-select">
                <option value='<%# Eval("Caste_Key") %>'><%# Eval("Caste") == "" ? "--Select Caste" : Eval("Caste") %></option>

                <%
                    string userid = Convert.ToString(Session["UserId"]);
                    string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
                    SqlConnection con = new SqlConnection(_connection);
                    string sql = "select usr_religion from usr_details where usr_id='"+userid+"';";
                    SqlCommand cmd = new SqlCommand(sql, con);
                    con.Open();
                    string Religion_Key = Convert.ToString(cmd.ExecuteScalar());
                    con.Close();
                                 
                      
                    
                    ds = new DataSet();
                    path = Server.MapPath("~/App_Data/Caste.xml");
                    ds.ReadXml(path);


                    var query = from t1 in ds.Tables["Caste"].AsEnumerable()
                                where t1.Field<string>("Religion-Key") == Religion_Key
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
             </td>
            </tr>
            <tr>
             <td>Subcaste</td>
             <td class="pad">
              <input type="text" name="txt_subcaste_edit" class="text-select" value='<%# Eval("SubCaste") %>' />
             </td>
            </tr>
            <tr>
             <td>Place Of Birth</td>
             <td class="pad">
               <input type="text" class="text-select" name="txt_birth_place_edit" value='<%# Eval("BirthPlace") %>' />
              </td>
            </tr>
            <tr>
             <td>Mangalik</td>
             <td class="pad">
              <select id="ddl_mangalik_edit" name="ddl_mangalik_edit" class="text-select">
               <option value='<%# Eval("Mangalik_Key") %>'><%# Eval("Mangalik") == "" ? "--Select Mangalik Type" : Eval("Mangalik")%></option>
               <%
                 
                 ds = new DataSet();
                 path = Server.MapPath("~/App_Data/Mangalik.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["Mangalik"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
              %>
              </select>
             </td>
            </tr>
            <tr>
             <td>Gotra</td>
             <td class="pad">
              <input type="text" value='<%# Eval("Gotra") %>' name="txt_gotra_edit" class="text-select" />
             </td>
            </tr>
            <tr>
             <td>Nakshatra</td>
             <td class="pad">
              <select name="ddl_nakshatra_edit" class="text-select">
               <option value='<%# Eval("Nakshatra_Key") %>'><%# Eval("Nakshatra")==""?"--Select Nakshtar":Eval("Nakshatra") %></option>
               <%
                 
                 ds = new DataSet();
                 path = Server.MapPath("~/App_Data/Nakshatra.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["Nakshatra"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
              %>
              </select>
             </td>
            </tr>
            <tr>
             <td>Sun Sign</td>
             <td class="pad">
              <select class="text-select" name="sunsign_edit">
               <option value='<%# Eval("SunSign_Key") %>'><%# Eval("SunSign")==""?"--Select SunSign":Eval("SunSign") %></option>
                <%
                 
                 ds = new DataSet();
                 path = Server.MapPath("~/App_Data/SunSign.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["SunSign"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
              %>
              </select>
               
             </td>
            </tr>
          </table>

          </div>
      <%--End Of Edit Religious Attribute Div--%>




       </ItemTemplate>
      </asp:FormView>
     

  </div>
 </div>
</div>
<div class="row size-12">
 <div class="column size-12">
  <div class="panel-3">


      <asp:FormView ID="Frm_Physical_Attributes" runat="server" >
       <ItemTemplate>
         <h4>
           Physical Attributes
           <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_Physical_Attribute').style.display='block';document.getElementById('black_overlay').style.display='block';" >Edit</a>
          </h4>
          <table>
           <tr>
            <td>Height</td>
            <td>:&nbsp;&nbsp;<%# Eval("Height") %></td>
           </tr>
           <tr>
            <td>Weight</td>
            <td>:&nbsp;&nbsp;<%# Eval("Weight") %></td>
           </tr>
           <tr>
            <td>Challanged:</td>
            <td>:&nbsp;&nbsp;<%# Eval("Challanged") %></td>
           </tr>
           <tr>
            <td>Diet</td>
            <td>:&nbsp;&nbsp;<%# Eval("Diet") %></td>
           </tr>
           <tr>
            <td>Blood Group</td>
            <td>:&nbsp;&nbsp;<%# Eval("BloodGroup") %></td>
           </tr>
          </table>

          <%--Start of Edit Region Of Physical Attributes--%>
           <div class="size-7 light-content" id="Edit_Physical_Attribute" style="z-index:10000;">
              <h4>
               Physical Attributes
               <a href="javascript:void(0)" class="panel-7" runat="server" onserverclick="Update_PhysicalArrribute_Click">Update</a>
               <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_Physical_Attribute').style.display='none';document.getElementById('black_overlay').style.display='none';" >Cancel</a>
              </h4>

              <table>
               <tr>
                <td>Height</td>
                <td class="pad">
                 <select name="ddl_height_edit" class="text-select">
                  <option value='<%# Eval("Height_Key") %>'><%# Eval("Height")==""?"--Select Height":Eval("Height") %></option>
                  <%
                      DataSet ds = new DataSet();
                      string path = Server.MapPath("~/App_Data/Height.xml");
                      ds.ReadXml(path);
                      foreach (DataRow dr in ds.Tables["Height"].Rows)
                      {
                          Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                      }
                  %>
                 </select>
                </td>
               </tr>
               <tr>
                <td>Weight</td>
                <td class="pad">
                 <input type="text" name="txt_weight_edit" class="text-select" value='<%# Eval("Weight") %>' />Kg
                </td>
               </tr>
               <tr>
                <td>Challanged</td>
                <td class="pad">
                 <select class="text-select" name="ddl_challanged_edit">
                 <option value='<%# Eval("Challanged_Key") %>'><%# Eval("Challanged")==""?"--Select Type": Eval("Challanged") %></option>
                  <%
                 
                 ds = new DataSet();
                 path = Server.MapPath("~/App_Data/Challanged.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["Challanged"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
                  %>
                 </select>
                </td>
               </tr>
               <tr>
                <td>Diet</td>
                <td class="pad">
                 <select name="ddl_diet_edit" class="text-select">
                 <option value='<%# Eval("Diet_Key") %>'><%# Eval("Diet")==""?"--Select Diet": Eval("Diet") %></option>
                  <%
                 
                 ds = new DataSet();
                 path = Server.MapPath("~/App_Data/Diet.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["Diet"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
                  %>
                 </select>
                </td>
               </tr>
               <tr>
                <td>Blood Group</td>
                <td class="pad">
                 <select name="ddl_blood_group_edit" class="text-select">
                 <option value='<%# Eval("BloodGroup_Key") %>'><%# Eval("BloodGroup")==""?"--Select Blood Group": Eval("BloodGroup") %></option>
                  <%
                 
                 ds = new DataSet();
                 path = Server.MapPath("~/App_Data/BloodGroup.xml");
                 ds.ReadXml(path);
                 foreach (DataRow dr in ds.Tables["BloodGroup"].Rows)
                 {
                     Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                 }
                 
                  %>
                 </select>
                </td>
               </tr>
              </table>



           </div>
          <%--End Of Edit Region Of Physical Attributes--%>



       </ItemTemplate>
      </asp:FormView>

      
  </div>
 </div>
</div>
<div class="row size-12">
 <div class="column size-12">
  <div class="panel-3">
      <asp:FormView ID="Frm_Contact_Information" runat="server">
       <ItemTemplate>
         <h4>
           Contact Information
           <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_ContactInformation').style.display='block';document.getElementById('black_overlay').style.display='block';" >Edit</a>
          </h4>
          <table>
           <tr>
            <td>Email Id</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_email") %></td>
           </tr>
           <tr>
            <td>Mobile No.</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_mobile") %></td>
           </tr>
           <tr>
            <td>LandLine No.</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_land_no") %></td>
           </tr>
           <tr>
            <td>Address</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_address") %></td>
           </tr>
           <tr>
            <td>City</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_city")%></td>
           </tr>
           <tr>
            <td>State</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_state")%></td>
           </tr>
           <tr>
            <td>Country</td>
            <td>:&nbsp;&nbsp;<%# Eval("usr_country")%></td>
           </tr>
          </table>


          <%--Start of Edit Region Of Physical Attributes--%>
           <div class="size-7 light-content" id="Edit_ContactInformation" style="z-index:10000;">
              <h4>
               Physical Attributes
               <a id="A3" href="javascript:void(0)" class="panel-7" runat="server" onserverclick="UpdateContactInformation_Click" >Update</a>
               <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_ContactInformation').style.display='none';document.getElementById('black_overlay').style.display='none';" >Cancel</a>
              </h4>
              <table>
               <tr>
                <td>Email Id</td>
                <td><input type="text" class="text-select" name="txt_email_edit" value='<%# Eval("usr_email") %>'/></td>
               </tr>
               <tr>
                <td>Mobile No.</td>
                <td><input type="text" class="text-select" name="txt_mob_no_edit" value='<%# Eval("usr_mobile") %>' /></td>
               </tr>
               <tr>
                <td>Land No.</td>
                <td><input type="text" class="text-select" name="txt_land_no_edit" value='<%# Eval("usr_land_no") %>' /></td>
               </tr>
               <tr>
                <td>Address</td>
                <td>
                  <textarea class="text-select" name="txt_address_edit" style="height:80px;" rows="10" cols="10"><%# Eval("usr_address") %></textarea>
                </td>
               </tr>
               <tr>
                <td>City</td>
                <td><input type="text" class="text-select" name="txt_city_edit" value='<%# Eval("usr_city")%>' /></td>
               </tr>
               <tr>
                <td>State</td>
                <td><input type="text" class="text-select" name="txt_state_edit" value='<%# Eval("usr_state")%>' /></td>
               </tr>
               <tr>
                <td>Country</td>
                <td>
                 <select class="text-select" name="ddl_country">
                 <option value='<%# Eval("usr_country_key") %>'><%# Eval("usr_country_key") == "" ? "--Select Country" : Eval("usr_country")%></option>
                  <%
                      DataSet ds = new DataSet();
                      string path = Server.MapPath("~/App_Data/Country.xml");
                      ds.ReadXml(path);
                      foreach (DataRow dr in ds.Tables["Country"].Rows)
                      {
                          Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                      }
                  %>
                 </select>
                </td>
               </tr>
              </table>
           </div>
          <%--Start of Edit Region Of Physical Attributes--%>

          </ItemTemplate>
          </asp:FormView>
  </div>
 </div>
</div>
<div class="row size-12">
 <div class="column size-12">
  <div class="panel-3">
      <asp:FormView ID="Frm_Family_Details" runat="server">
       <ItemTemplate>
         <h4>
           Family Details
           <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_FamilyDetails').style.display='block';document.getElementById('black_overlay').style.display='block';" >Edit</a>
          </h4>
          <table>
           <tr>
            <td>Family Values</td>
            <td>:&nbsp;&nbsp;<%# Eval("FamilyValue") %></td>
           </tr>
           <tr>
            <td>Family Type</td>
            <td>:&nbsp;&nbsp;<%# Eval("FamilyType")%></td>
           </tr>
           <tr>
            <td>Family Status</td>
            <td>:&nbsp;&nbsp;</td>
           </tr>
           <tr>
            <td>Ancestral Origin</td>
            <td>:&nbsp;&nbsp;<%# Eval("AncestralOrigin")%></td>
           </tr>
           <tr>
            <td>Fathers Occupation</td>
            <td>:&nbsp;&nbsp;<%# Eval("FathersOccupation")%></td>
           </tr>
           <tr>
            <td>Mothers Occupation</td>
            <td>:&nbsp;&nbsp;<%# Eval("MothersOccupation")%></td>
           </tr>
           <tr>
            <td>Brothers</td>
            <td>:&nbsp;&nbsp;<%# Eval("Brothers")%></td>
           </tr>
           <tr>
            <td>Brothers Married</td>
            <td>:&nbsp;&nbsp;<%# Eval("BrothersMarried")%></td>
           </tr>
           <tr>
            <td>Sisters</td>
            <td>:&nbsp;&nbsp;<%# Eval("Sisters")%></td>
           </tr>
           <tr>
            <td>Sisters Married</td>
            <td>:&nbsp;&nbsp;<%# Eval("SistersMarried")%></td>
           </tr>
          </table>


          <%--Start of Edit Region Of Physical Attributes--%>
           <div class="size-7 light-content" id="Edit_FamilyDetails" style="z-index:10000;">
              <h4>
                Family Details
               <a id="A3" href="javascript:void(0)" class="panel-7" runat="server" onserverclick="UpdateFamilyDetails_Click">Update</a>
               <a href="javascript:void(0)" class="panel-7" onclick="document.getElementById('Edit_FamilyDetails').style.display='none';document.getElementById('black_overlay').style.display='none';" >Cancel</a>
              </h4>
              <table>
               <tr>
                <td>Family Value</td>
                <td>
                 <select class="text-select" name="ddl_family_value">
                  <option value='<%# Eval("FamilyValueKey") %>'><%# Eval("FamilyValue") == "" ? "--Select Family Value" : Eval("FamilyValue")%></option>
                  <%
                 
                     DataSet ds = new DataSet();
                     string path = Server.MapPath("~/App_Data/FamilyValues.xml");
                     ds.ReadXml(path);
                     foreach (DataRow dr in ds.Tables["FamilyValues"].Rows)
                     {
                         Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                     }
                 
                  %>
                 </select>
                </td>
               </tr>
               <tr>
                <td>Family Type</td>
                <td>
                 <select class="text-select" name="ddl_family_type">
                  <option value='<%# Eval("FamilyTypeKey") %>'><%# Eval("FamilyType") == "" ? "--Select Family Type" : Eval("FamilyType")%></option>
                  <%
                 
                     ds = new DataSet();
                     path = Server.MapPath("~/App_Data/FamilyType.xml");
                     ds.ReadXml(path);
                     foreach (DataRow dr in ds.Tables["FamilyType"].Rows)
                     {
                         Response.Write("<option value='" + Convert.ToString(dr["Key"]) + "'>" + Convert.ToString(dr["Value"]) + "</option>");
                     }
                 
                  %>
                 </select>
                </td>
               </tr>
               <tr>
                <td>Ancestral Origin</td>
                <td><input type="text" class="text-select" value='<%# Eval("AncestralOrigin") %>' name="txt_ancestral_origin" /></td>
               </tr>
               <tr>
                <td>Fathers Occupation</td>
                <td><input type="text" class="text-select" value='<%# Eval("FathersOccupation") %>' name="txt_fathers_occupation" /></td>
               </tr>
               <tr>
                <td>Mothers Occupation</td>
                <td><input type="text" class="text-select" value='<%# Eval("MothersOccupation") %>' name="txt_mothers_occupation"  /></td>
               </tr>
               <tr>
                <td>Bothers</td>
                <td><input type="text" class="text-select" value='<%# Eval("Brothers")%>' name='txt_brothers' /></td>
               </tr>
               <tr>
                <td>Brothers Maried</td>
                <td><input type="text" class="text-select" value='<%# Eval("BrothersMarried")%>' name='txt_brothers_married' /></td>
               </tr>
               <tr>
                <td>Sisters</td>
                <td><input type="text" class="text-select" value='<%# Eval("Sisters")%>' name='txt_sisters' /></td>
               </tr>
               <tr>
                <td>Sisters Married</td>
                <td><input type="text" class="text-select" value='<%# Eval("SistersMarried")%>' name='txt_sisters_married' /></td>
               </tr>
              </table>
           </div>
          <%--Start of Edit Region Of Physical Attributes--%>

          </ItemTemplate>
          </asp:FormView>
  </div>
 </div>
</div>
</asp:Content>

