<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" Title="La Marelle - Error" %>

<script  runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        string lang="en";
        if (Request.Cookies["LaMarelleLang"] == null)
        {
            lang = "en";
        }
        else
        {
            lang = Request.Cookies["LaMarelleLang"].Value;
        }
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1>Error - Erreur</h1>

<p>A problem has occurred with the page you requested. Either there is an error on the page, or the page does not exist. If this error persists, please use our <a href="en/contact.aspx">Contact page</a> to tell us which page you were trying to view.</p>

<p>Une erreur s'est produite lors du chargement de la page que vous avez demandée. Ceci est dû soit à une erreur sur la page, ou au fait que la page n'existe pas. Si le problème persiste, veuillez utiliser notre <a href="fr/contact.aspx">page de contact</a> pour nous dire quelle page vous avez essayé de voir.</p>
</asp:Content>

