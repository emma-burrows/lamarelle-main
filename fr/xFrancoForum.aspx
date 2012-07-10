<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="FrancoForum - Réseau francophone dans le Kent" %>

<script runat="server">

  protected void btnEnvoyer_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
      //Make body text
      StringBuilder sbBody = new StringBuilder();
      //Contact details
      sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>" +
            "<b>Prénom:</b> " + txtPrenom.Text + "<br/>");

      sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br />");
      sbBody.Append(txtComment.Text);

      //Make message
      System.Web.Mail.SmtpMail.SmtpServer = "localhost";
      System.Web.Mail.MailMessage msg = new System.Web.Mail.MailMessage();
      msg.From = "emma@eburrows.co.uk";
      msg.To = "emma@eburrows.co.uk";
      msg.Subject = "FrancoForum - " + txtPrenom.Text + " " + txtNom.Text.ToUpper();
      msg.BodyFormat = System.Web.Mail.MailFormat.Html;
      msg.Body = sbBody.ToString();

      //Send message
      System.Web.Mail.SmtpMail.Send(msg);
      labResult.Text = "Merci pour votre email. Emma vous contactera au plus vite !";
      MainText.Visible = false;
    }
  }
  
  protected void Page_Load(object sender, EventArgs e)
  {

    if (Request.Cookies["LaMarelleLang"] == null)
    {
      HttpCookie objCookie = new HttpCookie("LaMarelleLang");
      Response.Cookies.Clear();
      Response.Cookies.Add(objCookie);
      objCookie.Values.Add("LaMarelleLang", "en");
      DateTime dtExpiry = DateTime.Now.AddDays(15);
      Response.Cookies["LaMarelleLang"].Expires = dtExpiry;

    }
  }

  protected void lkFrench_Click(object sender, EventArgs e)
  {
    Response.Cookies["LaMarelleLang"].Value = "fr";
    Response.Redirect("~/fr" + Request.FilePath.Substring(Request.FilePath.LastIndexOf("/")));
  }

  protected void lkEnglish_Click(object sender, EventArgs e)
  {
    Response.Cookies["LaMarelleLang"].Value = "en";
    Response.Redirect("~/en" + Request.FilePath.Substring(Request.FilePath.LastIndexOf("/")));
  }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<b><asp:Label ID="labResult" runat="server" /></b>
 
<asp:Panel ID="MainText" runat="server">
   <tm:dynamicheading id="Dynamicheading01" text="Rencontrez d'autres francophones" headingstyle="Cursif" runat="server" />
  <p>
    Si vous êtes francophone et que vous aimeriez rencontrer d'autres francophones dans le nord-ouest du Kent, pourquoi ne pas rejoindre le groupe des "FrancoForum" ? (Nous accueillons les FrancoMamans, les FrancoPapas, et les FrancoPersonnes de tous âges !)</p>
  <p>
  Rejoignez gratuitement notre liste de distribution, puis vous pourrez correspondre avec d'autres francophones dans votre région, vous renseigner sur les événements de la communauté francophone, et participer aux activités du groupe si le coeur vous en dit (sorties restau, piques-niques, visites de lieux touristiques...).
  </p>
  <p>
    Pour nous rejoindre, rien de plus simple. Remplissez le formulaire ci-dessous et Emma vous inscrira sur la liste gérée par YahooGroups. (Vous pouvez ensuite vous désabonner librement à tout moment.)</p>
         <br />

      <strong>Vos coordonnées :</strong>
      <br />

    <table>
      <tr>
        <td style="width: 110px" valign="top">
          Nom :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNom" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">
          Prénom :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtPrenom" style="width: 302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">Email :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtEmail" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px; height: 60px" valign="top">
          Commentaires :</td>
        <td style="width: 301px; height: 60px" valign="top">
          <asp:TextBox id="txtComment" rows="3" width="303px" runat="server" TextMode="MultiLine"/></td>
        <td style="width: 87px; height: 60px" valign="top">
        </td>
      </tr>
    </table>
  
  <br />
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Envoyer" />
  <br />
  <br />
</asp:Panel>
  
</asp:content>     
  
