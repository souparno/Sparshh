<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient" %>
<script type="text/C#" runat="server">
    public int create_chat_id()
    {
        string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        SqlConnection con = new SqlConnection(_connection);
        string sql = "select isnull(max(chat_id)+1,1) as id from chat;";
        SqlCommand cmd = new SqlCommand(sql, con);
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
        int chat_id = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
        return chat_id;
    }
</script>


<% 
    string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
    string msg = Request.Form["msg"];
    int chat_id = create_chat_id();
    SqlConnection con = new SqlConnection(_connection);
    string sql = "INSERT INTO chat (chat_id,msg,viewed) VALUES ('"+ chat_id +"', '"+ msg +"', '0');";
    SqlCommand cmd = new SqlCommand(sql, con);
    if (con.State == ConnectionState.Closed)
    {
        con.Open();
    }
    cmd.ExecuteNonQuery();
    con.Close();
%>
