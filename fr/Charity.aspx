<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - L'association" %>


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
      msg.From = "emma@eburrows.co.uk";
      msg.To = "emma@eburrows.co.uk";
      msg.Subject = "Contact La Marelle - " + txtNom.Text;
      msg.BodyFormat = System.Web.Mail.MailFormat.Html;
      msg.Body = sbBody.ToString();

      //Send message
      System.Web.Mail.SmtpMail.Send(msg);
      labResult.Text = "Merci pour votre email. Christine vous contactera au plus vite !";
      MainText.Visible = false;
    }
  }
 

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<b><asp:Label ID="labResult" runat="server" /></b>
 
<asp:Panel ID="MainText" runat="server">
   <tm:dynamicheading id="Dynamicheading01" text="L'association La Marelle" headingstyle="Cursif" runat="server" />

<p>Créée en 2009, La Marelle est une association à but non-lucratif avec le statut 
    anglais de &quot;Charity&quot;, enregistrée sous le numéro 1135186, équivalent d&#39;une association Loi 1901.
    <a  href="http://www.charitycommission.gov.uk/Showcharity/RegisterOfCharities/CharityWithoutPartB.aspx?RegisteredCharityNumber=1135186&SubsidiaryNumber=0">Voir les détails de La Marelle sur le site de la Charity Commission</a> .

<p>Son but principal est d&#39;aider les parents francophones à passer leur langue et 
    leur culture à leurs enfants par le biais d&#39;une école du samedi matin, semblable 
    à <a href="http://www.petites-ecoles.co.uk">celles qui existent</a> dans 
    d&#39;autres régions du Royaume-Uni. L&#39;école a le soutien du &quot;Plan Ecoles&quot; de 
    l&#39;Ambassade de France, dont le but est de promouvoir l&#39;enseignement du français 
    auprès des enfants des communautés francophones.</p>

    <p>
        La Marelle propose également des cours de français langue étrangère, ainsi qu&#39;un 
        café informel tous les samedi matins. Beaucoup de ses parents d&#39;élèves 
        participent également au <a href="http://francoforum.xooit.com">FrancoForum</a> 
        qui permet de rencontrer des francophones au delà du cadre de l&#39;école.</p>

<h2>Le comité</h2>

<p>Le comité compte actuellement les membres suivants :</p>

<ul>
  <li>Emma Burrows - Présidente</li>
  <li>Sharon Mensah - Secrétaire</li>
  <li>Antturya Greenleaf - Trésorière</li>
  <li>Magda Karafotias - Trustee</li>
</ul>

    <p>
        Conformément aux règles de la Charity Commission, le comité organise une réunion 
        annuelle pour présenter la situation de l&#39;association à ses membres, les parents 
        d&#39;élèves.</p>
        
                <p><a href="../images/Constitution-Nov09.pdf">Voir la constitution de La Marelle</a> (en anglais)</p>


<h2>Contact</h2>

<p>Pour tous renseignements supplémentaires, veuillez nous appeller au <b>07954 585 601</b>, ou remplissez le formulaire suivant :</p>

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
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Envoyer" />
  <br />
  <br />
    </asp:Panel>

</asp:Content>

