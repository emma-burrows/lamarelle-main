<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Réponse pour événement" %>

<script runat="server">

  protected void btnEnvoyer_Click(object sender, EventArgs e)
  {
    string eventName = "Mardi Gras";
    
    if (Page.IsValid)
    {
      //get checkboxlist contents
      string children = "";
      foreach (ListItem child in cbAges.Items)
      {
        if (child.Selected == true)
          children = children + child.Value + ", ";
      }

      
      //Make body text
      StringBuilder sbBody = new StringBuilder();
      //Contact details
      sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>");

      sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br />");

      sbBody.Append("<b>Adultes:</b> " + Adultes.Text + "<br />");
      sbBody.Append("<b>Enfants:</b> " + Enfants.Text + "<br />");

      
      sbBody.Append("<b>Can come:</b> " + rbAttendance.SelectedValue + "<br />");
      sbBody.Append("<b>Children ages:</b> " + children + "<br />");
      
      sbBody.Append("<b>Comment:</b> " + txtComment.Text);

      //Make message
      System.Web.Mail.SmtpMail.SmtpServer = "localhost";
      System.Web.Mail.MailMessage msg = new System.Web.Mail.MailMessage();
      msg.From = "emma@eburrows.co.uk";
      msg.To = "emma@eburrows.co.uk";
      msg.Subject = eventName + " - " + txtNom.Text;
      msg.BodyFormat = System.Web.Mail.MailFormat.Html;
      msg.Body = sbBody.ToString();

      //Send message
      System.Web.Mail.SmtpMail.Send(msg);
      
      labResult.Text = "Nous vous remercions beacoup de votre réponse !";
      if (rbAttendance.SelectedValue == "yes")
      {
        labResult.Text += " Nous serons heureux de vous voir le 28 - avec votre déguisement, bien sûr.";
      }
      else
      {
        labResult.Text = " Nous sommes désolés de savoir que vous ne pouvez pas venir, mais nous espérons vous voir la prochaine fois.";
      }
      MainText.Visible = false;
    }
  }
 

</script>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<b><asp:Label ID="labResult" runat="server" /></b>
 
<asp:Panel ID="MainText" runat="server" Width="551px">
   <tm:dynamicheading id="Dynamicheading01" text="Réponse pour Mardi-Gras 2009" headingstyle="Cursif" runat="server" />

<p>
  <a href="/en/mardi-gras.htm">Cliquez ici pour voir plus d'information sur la fête...</a></p>
  <p>
    Veuillez remplir le formulaire suivant pour nous dire si vous pouvez à la fête de Mardi-Gras le 28 février 2009:</p>

    <table>
      <tr>
        <td style="width: 279px" valign="top">
          Votre nom :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNom" width="302px" runat="server" /></td>
      </tr>
      <tr>
        <td style="width: 279px" valign="top">Email :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtEmail" width="302px" runat="server" /></td>
      </tr>
      <tr>
        <td style="width: 279px" valign="top"></td>
        <td style="width: 301px" valign="top">
        <asp:RadioButtonList ID="rbAttendance" runat="server">
          <asp:ListItem Value="yes">Oui, nous allons venir</asp:ListItem>
          <asp:ListItem Value="no">Non, nous ne pouvons pas venir</asp:ListItem>
        </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td style="width: 279px" valign="top">Nb. Adultes: <asp:TextBox ID="Adultes" width="50px" runat="server" /></td>
        <td style="width: 301px" valign="top">Nb. Enfants: <asp:TextBox ID="Enfants" width="50px" runat="server" /></td>

      </tr>
      <tr>
        <td style="width: 279px" valign="top">Pour nous aider à organiser les meilleures activités, veuillez indiquer les tranches d'âge de vos enfants :</td>
        <td style="width: 301px" valign="top">
          <asp:CheckBoxList ID="cbAges" runat="server">
            <asp:ListItem Value="0-3">0-3 ans</asp:ListItem>
            <asp:ListItem Value="4-6">4-6 ans</asp:ListItem>
            <asp:ListItem Value="7-10">7-10 ans</asp:ListItem>
            <asp:ListItem Value="over10">plus de 10 ans</asp:ListItem>
          </asp:CheckBoxList></td>
     
      </tr>
      <tr>
        <td style="width: 279px; height: 60px" valign="top">
          Commentaires:</td>
        <td style="width: 301px; height: 60px" valign="top">
          <asp:TextBox id="txtComment" rows="6" width="303px" runat="server" TextMode="MultiLine"/></td>
      </tr>
    </table>
  <br />
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Envoyer" />
  <br />
  <br />
</asp:Panel>

</asp:Content>

