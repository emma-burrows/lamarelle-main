<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - French school for bilingual children Dartford" %>


<script runat="server">
  protected void Page_Load(object sender, EventArgs e)
  {
    if (Request.QueryString.ToString() == "photos")
    {
      Response.Redirect("~/fr/gallery.aspx?path=/images/classes/2009");
    }
    if (Request.Cookies["LaMarelleLang"] == null)
    {
      Response.Redirect("~/en/default.aspx");
    }
    else
    {

      if (Request.Cookies["LaMarelleLang"].Value == "fr")
        Response.Redirect("~/fr/default.aspx");
      else
        Response.Redirect("~/en/default.aspx");
    }
  }
</script>

<asp:Content ContentPlaceHolderID="MenuPlaceHolder" runat="server">

                  
</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
</asp:Content>

