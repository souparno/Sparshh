<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient" %>
<% 
    
 string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
 int end_time= System.DateTime.Now.Second + 20;
 SqlConnection con = new SqlConnection(_connection);
    
    
    
 while (System.DateTime.Now.Second<=end_time)
 {
     string sql = "SELECT chat_id,msg,viewed FROM chat WHERE chat_id in(SELECT ISNULL(MIN(chat_id),0) AS id FROM chat WHERE viewed =0);";
     SqlDataAdapter da = new SqlDataAdapter(sql, con);
     DataTable dt = new DataTable();
     da.Fill(dt);

     if (dt.Rows.Count > 0)
     {
         sql = "update chat set viewed='1' where chat_id='"+ dt.Rows[0]["chat_id"] +"';";
         SqlCommand cmd = new SqlCommand(sql, con);
         if (con.State == ConnectionState.Closed)
         {
             con.Open(); 
         }
         cmd.ExecuteNonQuery();
         con.Close();
         Response.Write(dt.Rows[0]["msg"]);
         break;
     }
 }
%>
