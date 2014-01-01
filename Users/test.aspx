<%@ Page Language="C#"%>
<%@ Import Namespace="System.IO"  %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Web"  %>
<%@ Import Namespace="System.Web.Script.Serialization"  %>
<%@ Import Namespace="System.Collections.Generic"  %>


<script type="text/C#" runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {


        string path = Server.MapPath("../Assets/UserLoginCache/");
        string json = File.ReadAllText(path + "chat2.txt");
        JavaScriptSerializer js = new JavaScriptSerializer();
        Dictionary<string, string> rateDict = js.Deserialize<Dictionary<string, string>>(json);


        DataTable dt = new DataTable();
        dt.Columns.Add("userid",typeof(string));
        
        DataRow dr = dt.NewRow();
        dr["userid"] = "user1";
        dt.Rows.Add(dr);
        dr = dt.NewRow();
        dr["userid"] = "user3";
        dt.Rows.Add(dr);
        dr = dt.NewRow();
        dr["userid"] = "user4";
        dt.Rows.Add(dr);



        var query2 = from t1 in dt.AsEnumerable()
                     join t2 in rateDict.AsQueryable()
                     on t1.Field<string>("userid") equals t2.Value into table
                     from p in table.DefaultIfEmpty()
                     select new
                     {
                         userid =t1.Field<string>("userid"),
                         present=p.Key==null? "false":"true",
                     };
        
        
        
        foreach (var p in query2)
        {
            Response.Write(p.userid +"---"+ p.present +"<br/>");
        }
        

    }
   
       
</script>
