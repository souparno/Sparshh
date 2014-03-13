<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" %>
<%@ Import Namespace="System"  %>
<%@ Import Namespace="System.Collections.Generic"  %>
<%@ Import Namespace="System.Linq"  %>
<%@ Import Namespace="System.Web"  %>
<%@ Import Namespace="System.Web.UI.WebControls"  %>
<%@ Import Namespace="System.Web.Services"  %>
<%@ Import Namespace="System.Data"  %>
<%@ Import Namespace="System.Data.SqlClient"  %>


<script runat="server">



    string _connection;
    protected void Page_Load(object sender, EventArgs e)
    {
        _connection = System.Configuration.ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
        if (!IsPostBack)
        {
            FillToken();
            
        }
    }


    public void grd_token_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewRow row = (GridViewRow)grd_token.Rows[e.RowIndex];
        string sql = "delete from off_line_tocken where tocken_id='" + grd_token.DataKeys[e.RowIndex].Value + "'";
        SqlConnection con = new SqlConnection(_connection);
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        FillToken();
    }

    public void FillToken()
    {
        string sql = @"SELECT [tocken_id]
      ,[usr_name]
      ,[date_to_day]
      ,[date_to_month]
      ,[date_to_year]
      ,[token_info]
  FROM [matrimony].[dbo].[off_line_tocken]
JOIN offline_usr_details on 
offline_usr_details.usr_id = off_line_tocken.usr_id;";

        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(_connection);
        SqlDataAdapter da = new SqlDataAdapter(sql, con);
        da.Fill(dt);

        grd_token.DataSource = dt;
        grd_token.DataBind();
    }
    
    
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
<div style="float: left; width: 341px; height: auto;">
            <div class="listin_div" id="offline_membership">
                    <div class="box_top">
                        <img height="18" width="18" style="margin: 5px 0 0 17px;float: left;" alt="" src="../css/images/box_icon.png" />
                        <div class="top_tex">Manage OFFline Members</div>
                    </div>
                    <div class="box_middle">
                        <div class="inner">
                            <ul>
                                <li><a href="Admin-AddOFlineMembers.aspx"><span class="aro"></span>Add Members</a></li>
                                <li><a href="Admin-ViewOfflineMembers.aspx"><span class="aro"></span>View All Members</a></li>
                                <li><a href="Admin-MangeOfflineToken.aspx"><span class="aro"></span>Manage Token</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="box_bottom">
                    </div>
                </div>
</div>

<div style="float: left; width: 500px; height: auto;margin-left:200px;">
    
    <asp:GridView 
    ID="grd_token" 
    runat="server" 
    GridLines="Horizontal"
    Width="100%" 
    DataKeyNames="tocken_id" 
    AutoGenerateColumns="false"
    ShowHeaderWhenEmpty="true"
    OnRowDeleting="grd_token_RowDeleting">
     <Columns>
      
      <asp:TemplateField HeaderText="TokenID">
      <HeaderStyle HorizontalAlign="Left" />
      <ItemStyle HorizontalAlign="Left" />
       <ItemTemplate>
        www.sparshhmatrimony.com/Guest/?id=<%# Eval("tocken_id")%>
       </ItemTemplate>
      </asp:TemplateField>

      <asp:TemplateField HeaderText="Expiry Date">
      <HeaderStyle HorizontalAlign="Left" />
      <ItemStyle HorizontalAlign="Left" />
       <ItemTemplate>
        <%# Eval("date_to_day")%>-<%# Eval("date_to_month")%>-<%# Eval("date_to_year")%>
       </ItemTemplate>
      </asp:TemplateField>


     <asp:TemplateField HeaderText="Offline User Mentioned">
      <HeaderStyle HorizontalAlign="Left" />
      <ItemStyle HorizontalAlign="Left" />
       <ItemTemplate>
        <%# Eval("usr_name")%>
       </ItemTemplate>
      </asp:TemplateField>


      <asp:TemplateField HeaderText="Token Info">
      <HeaderStyle HorizontalAlign="Left" />
      <ItemStyle HorizontalAlign="Left" />
       <ItemTemplate>
        <%# Eval("token_info")%>
       </ItemTemplate>
      </asp:TemplateField>

      <asp:CommandField ShowDeleteButton="true" />

     </Columns>
    </asp:GridView>
 

</div>
</asp:Content>

