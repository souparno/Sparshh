using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.IO;
using System.Data;



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
        string path = Server.MapPath("");
        string json = File.ReadAllText(path + "/abc.txt");
        JavaScriptSerializer js = new JavaScriptSerializer();

        List<OnlineUsers> clsobj = js.Deserialize<List<OnlineUsers>>(json);

        foreach (var p in clsobj)
        {
            Response.Write(p.UserId);
            Response.Write("<br/>");
        }

        DataTable dt = new DataTable();
        dt.Columns.Add("userid",typeof(string));
        
        DataRow dr = dt.NewRow();
        dr["userid"] = "useri";
        dt.Rows.Add(dr);
        
        dr = dt.NewRow();
        dr["userid"] = "user2";
        dt.Rows.Add(dr);

        dr = dt.NewRow();
        dr["userid"] = "SP0000004";
        dt.Rows.Add(dr);


        var query = from t1 in dt.AsEnumerable()
                    join t2 in clsobj
                    on t1.Field<string>("userid") equals t2.UserId into table
                    from p in table.DefaultIfEmpty()
                    select new
                    {
                        userid = t1.Field<string>("userid"),
                        present = p == null? "np":"p",
                        //present = p.UserId == null ? "np" : "p",
                    };


        foreach (var m in query)
        {
            Response.Write(m.userid + "---" + m.present + "<br/>");
        }
        
        
 

                 
    }
}