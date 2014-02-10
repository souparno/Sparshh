<%@ Page Language="C#" %>
<%@ Import Namespace="System"  %>
<%@ Import Namespace="System.Collections.Generic"  %>
<%@ Import Namespace="System.Linq"  %>
<%@ Import Namespace="System.Web"  %>
<%@ Import Namespace="System.Web.UI.WebControls"  %>
<%@ Import Namespace="System.Web.Services"  %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>
<%@ Import Namespace="System.IO"  %>
<%@ Import Namespace="System.Configuration"  %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
   
    public void Upload_Click(object sender, EventArgs e)
    {

        string picture_folder_name = ConfigurationManager.AppSettings["MemberPictureFolder"];
        string file_path = Server.MapPath("~/"+picture_folder_name+"/");
        
        
        
        HttpPostedFile file = picture_uploader.PostedFile;
        string filename = file.FileName.Split('.')[0];
        file.SaveAs(file_path + generate_file_name(file_path,file.FileName.Split('.')[0], file.FileName.Split('.')[1]));
     }

    public string generate_file_name(string file_path,string file_name,string file_ext)
    {
        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        var random = new Random();
        var result = new string(
            Enumerable.Repeat(chars, 4)
                      .Select(s => s[random.Next(s.Length)])
                      .ToArray());

        DirectoryInfo difiles = new DirectoryInfo(file_path);
        var file_present = (from di_file in difiles.GetFiles() where di_file.Name == file_name + result + "." + file_ext select difiles.Name).Count();
        
        if (file_present == 0) return file_name + result + "." + file_ext;
        return generate_file_name(file_path,file_name,file_ext);
            
    }

   
    
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<form id="form1" runat="server">
 <table>
  <tr>
   <td>Upload Picture</td>
   <td><input type="file" id="picture_uploader" runat="server" /></td>
  </tr>
  <tr>
   <td colspan="2">
    <button runat="server" onserverclick="Upload_Click" >Save</button>
   </td>
  </tr>
 </table>
 
 
 </form> 
</body>
</html>
