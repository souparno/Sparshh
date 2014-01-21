<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>
<%@ Import Namespace="System.Linq"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style type="text/css">
     .text-select
     {
         height:30px;
         width:210px;
         border:solid 1px black;
         -moz-border-radius: 5px;
         -webkit-border-radius: 5px;
         border-radius: 5px;
     }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <center style="margin-top:120px;">
    <table>
            <tr>
             <td>UserId</td>
             <td><input type="text" class="text-select" name="txt_uid" /></td>
            </tr>
            <tr>
             <td>Password</td>
             <td><input type="text" class="text-select" name="txt_password"/></td>
            </tr>
            <tr>
             <td colspan="2">
              <hr />
              <center><button runat="server" onserverclick="LogIn_Click">Login</button></center>
             </td>
            </tr>
           </table>
    </center>
    </form>
</body>
</html>

<script type="text/C#" runat="server">
    protected void LogIn_Click(object sender, EventArgs e)
    {
        
        string uid = Request.Form["txt_uid"];
        string password = Request.Form["txt_password"];
        string _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        SqlConnection con = new SqlConnection(_connection);
        string sql = "select admin_id from admin_credential where admin_email='"+uid+"' and admin_password='"+password+"'";
        SqlCommand cmd = new SqlCommand(sql, con);


        con.Open();
        string user_code = Convert.ToString(cmd.ExecuteScalar());
        con.Close();


        if (user_code != null && user_code != "")
        {
            Session["UserId"] = user_code;
            Response.Redirect("~/Admin/Admin-Home.aspx");
        }

    }
</script>