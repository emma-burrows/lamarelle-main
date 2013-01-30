<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Charity" %>

<script runat="server">

  protected void btnEnvoyer_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
      //Make body text
      StringBuilder sbBody = new StringBuilder();
      //Contact details
      sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>");

      sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br />");
      sbBody.Append(txtComment.Text);

      //Make message
      System.Web.Mail.SmtpMail.SmtpServer = "localhost";
      System.Web.Mail.MailMessage msg = new System.Web.Mail.MailMessage();
      msg.From = txtEmail.Text;
      msg.To = "hasinaharris1@hotmail.com";
      msg.Cc = "emma@eburrows.co.uk; secretaire.la.marelle.dartford@gmail.com";
      msg.Subject = "Contact La Marelle - " + txtNom.Text;
      msg.BodyFormat = System.Web.Mail.MailFormat.Html;
      msg.Body = sbBody.ToString();

      //Send message
      System.Web.Mail.SmtpMail.Send(msg);
      labResult.Text = "Nous vous remercions de votre message et vous r�pondrons au plus vite !";
      MainText.Visible = false;
    }
  }
 

</script>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<b><asp:Label ID="labResult" runat="server" /></b>
 
<asp:Panel ID="MainText" runat="server">
   <h1>Contactez-nous</h1>

<p>Si vous pensez inscrire vos enfants � La Marelle, veuillez remplir notre</p>

<p align="center"><a href="Registration.aspx#form"><strong>Fiche d'inscription en ligne</strong></a></p>

<p>La fiche d'inscription n'engage � rien et nous permet de mieux vous r�pondre en nous donnant les d�tails des �ges de vos enfants et vos coordonn�es compl�tes.</p>

<p>Si vous avez des questions d'ordre g�n�ral, veuillez remplir le formulaire suivant :</p>

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
          <asp:TextBox id="txtComment" rows="6" width="303px" runat="server" TextMode="MultiLine"/></td>
        <td style="width: 87px; height: 60px" valign="top">
        </td>
      </tr>
    </table>
  <br />
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Send" />
  <br />
  <br />
</asp:Panel>

<p>Vous pouvez �galement nous �crire au 5 Eynsford Road, Greenhithe DA9 9HB.</p>
<p>Cette adresse est uniquement pour le courrier de La Marelle - les le�ons et les journ�es d'inscription ont lieu � <a href="https://maps.google.co.uk/?q=La+Marelle+DA2+6JX" target="_blank"
            title="Voir notre situation g�ographique sur Google Maps">Fleetdown Primary School</a> � Dartford et nos autres activit�s auront lieu � l'endroit indiqu� sur leur page web.</p>

</asp:Content>

