<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Emplois" %>


<script runat="server">

  protected void btnEnvoyer_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {

      
      //Make body text
      StringBuilder sbBody = new StringBuilder();
      //Contact details
      sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>");

      sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br /><br/>");
      sbBody.Append(txtComment.Text.Replace(Environment.NewLine, "<br/>"));

      //Make message
      System.Web.Mail.SmtpMail.SmtpServer = "localhost";
      System.Web.Mail.MailMessage msg = new System.Web.Mail.MailMessage();
      msg.From = txtEmail.Text;
      msg.To = "hasinaharris1@hotmail.com";
      msg.Cc = "site@lamarelle.org.uk";
      msg.Subject = "Emploi La Marelle - " + txtNom.Text;
      msg.BodyFormat = System.Web.Mail.MailFormat.Html;
      msg.Body = sbBody.ToString();

      if (CVUpload.HasFile)
        try
        {
            CVUpload.SaveAs(Server.MapPath("../_files") + "\\" + CVUpload.FileName);
            System.Web.Mail.MailAttachment ma = new System.Web.Mail.MailAttachment(Server.MapPath("../_files") + "\\" + CVUpload.FileName);
            msg.Attachments.Add(ma);
            labResult.Text = "Merci pour votre message et votre CV. Nous vous contacterons bientôt.";
        }
        catch (Exception ex)
        {
          labResult.Text = "ERREUR: " + ex.Message.ToString();
        }
      else
        labResult.Text = "Merci pour votre message. Nous vous contacterons bientôt.";
        
        
      //Send message
      System.Web.Mail.SmtpMail.Send(msg);
      MainText.Visible = false;
    }
  }
 

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<b><asp:Label ID="labResult" runat="server" /></b>
 
<asp:Panel ID="MainText" runat="server">
   <h1>Emplois à La Marelle</h1>

<h2>Enseignants, assistants et bénévoles francophones</h2>
<p>La Marelle est une association qui grandit et nous recherchons toujours de nouveaux collaborateurs
pour organiser nos activités, comme par exemple:</p>

<ul>
  <li>Enseignants et assistant(e)s de langue maternelle française</li>
  <li>Bénévoles pour les tâches administratives comme la publicité et les levées de fonds</li>
</ul>

<p>Les cours ont lieu les samedi matins à <a href="https://maps.google.co.uk/?q=La+Marelle+DA2+6JX" target="_blank"
            title="Voir notre situation géographique sur Google Maps">Fleetdown Primary School</a> à Dartford dans le nord-ouest du Kent (à 40 minutes de Londres par train). 
Nous faisons cours 30 samedi par an.</p> 
 <p>
Pour plus d'information, veuillez nous envoyer un CV (format Word ou PDF seulement) avec lettre de motivation en français en utilisant le formulaire ci-dessous:</p>

    <table>
      <tr>
        <td style="width: 110px" valign="top">
          Votre nom :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNom" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">Votre email :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtEmail" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px; height: 60px" valign="top">
          Votre lettre :</td>
        <td style="width: 301px; height: 60px" valign="top">
          <asp:TextBox id="txtComment" rows="10" width="303px" runat="server" TextMode="MultiLine"/></td>
        <td style="width: 87px; height: 60px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px; height: 60px" valign="top">
          Votre CV (Word ou PDF) :</td>
        <td style="width: 301px; height: 60px" valign="top">
          <asp:FileUpload ID="CVUpload" runat="server" />
        <td style="width: 87px; height: 60px" valign="top">
        </td>
      
      </tr>
    </table>
  <br />
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Envoyer" />
  <br />
  <br />
</asp:Panel>

</asp:Content>

