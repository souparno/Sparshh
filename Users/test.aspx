<%@ Page Language="C#"%>
<%@ Import Namespace="System.Web.Script.Serialization"  %>


<script type="text/C#" runat="server">

    public class user
    {
       public string userid;
    }

    
    protected void Page_Load(object sender, EventArgs e)
    {
        user[] usr_obj = new user[3];

        usr_obj[0] = new user();
        usr_obj[0].userid = "user1";

        usr_obj[1] = new user();
        usr_obj[1].userid = "user2";

        usr_obj[2] = new user();
        usr_obj[2].userid = "user5";

        JavaScriptSerializer js = new JavaScriptSerializer();
        Response.Write(js.Serialize(usr_obj));

        string str = "../Assets/js/cache.js";
        string strValue = "../Assets/UserLoginCache/LoginCache.txt";
        string strAll = "<script type='text/javascript' src='" + str + "'><" + "/script><script type='text/javascript'>var data = JSON.parse('" + js.Serialize(usr_obj) + "');var obj=new cachechannel('" + strValue + "');obj.connect();<" + "/script>"; 
        Response.Write(strAll);
        
        //ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "passJasonData", "alert('hello');var data = JSON.parse(RequestObj.responseText);", true);
        //Page.ClientScript.RegisterStartupScript(typeof(Page), "Script", "alert('hello');", true);
        //ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "call me", "alert('hello');", true);
        //Page.ClientScript.RegisterStartupScript(typeof(Page), "kkk", "alert('hello');");
    }
   
       
</script>
