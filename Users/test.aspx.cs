using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.IO;



public partial class Users_test : System.Web.UI.Page
{

    class OnlineUsers
    {
        public string UserId;
        public string UserName;
        public string TimeStamp;
    }


    protected void Page_Load(object sender, EventArgs e)
    {

        //getting the online users id from the cache
        string path = Server.MapPath("../Assets/cache/");
        string json = File.ReadAllText(path + "cache.txt");
        JavaScriptSerializer js = new JavaScriptSerializer();

        List<OnlineUsers> clsobj = js.Deserialize<List<OnlineUsers>>(json);

        foreach (var p in clsobj)
        {
            Response.Write(p.UserId);
            Response.Write("<br/>");
        }

    }
}