<%@ Page Title="" Language="C#"%>
<%@ Register Src="~/Admin/SideNav.ascx" TagPrefix="UC" TagName="Navigation" %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>
<%@ Import Namespace="System.Linq"  %>
<%
  string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
  SqlConnection con = new SqlConnection(_connection);
  string sql = "delete from usr_details where usr_id='" + Request.QueryString["UserId"] + "';";
  SqlCommand cmd = new SqlCommand(sql, con);
  con.Open();
  cmd.ExecuteNonQuery();
  con.Close();

  Response.Redirect("EditDeleteMember.aspx");          
%>