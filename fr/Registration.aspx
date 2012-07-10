<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Inscriptions" %>

<script runat="server">

  protected void btnEnvoyer_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
      //Make body text
      StringBuilder sbBody = new StringBuilder();
      //Contact details
      sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>" +
            "<b>Pr�nom:</b> " + txtPrenom.Text + "<br/>" +
            "<b>Adresse:</b> " + txtAdresse.Text + "<br/>");
      if (!string.IsNullOrEmpty(txtTel1.Text))
      {
        sbBody.Append("<b>Telephone:</b> " + txtTel1.Text + " (" + selTel1.SelectedValue + ")" + "<br/>");
      };
      if (!string.IsNullOrEmpty(txtTel2.Text))
      {
        sbBody.Append("<b>Telephone:</b> " + txtTel2.Text + " (" + selTel2.SelectedValue + ")" + "<br/>");
      };

      sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br />");
      sbBody.Append("<b>Nationalit�:</b> " + txtNationalite.Text + "<br />");

      //Children details
      sbBody.Append("<br/><u><b>Enfants</b></u><br/>");

      sbBody.Append(txtPrenomEnfant1.Text + " " + txtNomEnfant1.Text.ToUpper() + " (" + txtDateEnfant1.Text + " - " + txtNatEnfant1.Text + " - " + dlSexeEnfant1.Text + ")<br/>");
      if (!string.IsNullOrEmpty(txtPrenomEnfant2.Text))
      {
        sbBody.Append(txtPrenomEnfant2.Text + " " + txtNomEnfant2.Text.ToUpper() + " (" + txtDateEnfant2.Text + " - " + txtNatEnfant2.Text + " - " + dlSexeEnfant2.Text + ")<br/>");
      };
      if (!string.IsNullOrEmpty(txtPrenomEnfant3.Text))
      {
          sbBody.Append(txtPrenomEnfant3.Text + " " + txtNomEnfant3.Text.ToUpper() + " (" + txtDateEnfant3.Text + " - " + txtNatEnfant3.Text + " - " + dlSexeEnfant3.Text + ")<br/>");
      };

      //Knowledge
      sbBody.Append("<br/>");
      if (cbBilinguisme.SelectedIndex > -1)
      {
        sbBody.Append("<br/><b>Raison du bilinguisme:</b> ");
        for (int i = 0; i < cbBilinguisme.Items.Count; i++)
        {
          if (cbBilinguisme.Items[i].Selected == true)
            sbBody.Append(cbBilinguisme.Items[i].Text + " ");
        };
      };

      if (cbNiveau.SelectedIndex > -1)
      {
        sbBody.Append("<br/><b>Niveau des enfants:</b> ");
        for (int i = 0; i < cbNiveau.Items.Count; i++)
        {
          if (cbNiveau.Items[i].Selected == true)
            sbBody.Append(cbNiveau.Items[i].Text + " ");
        };
      };
      sbBody.Append("<br/><b>Langues:</b> " + txtLangues.Text);

      sbBody.Append("<br/><br/><b>Source:</b> " + ddlSource.SelectedValue + " (" + Precisions.Text + ")");

      //Make message
      System.Web.Mail.SmtpMail.SmtpServer = "localhost";
      System.Web.Mail.MailMessage msg = new System.Web.Mail.MailMessage();
      msg.From = "site@lamarelle.org.uk";
      msg.To = "info@lamarelle.org.uk";
      msg.Cc = "emma@eburrows.co.uk";
      msg.Subject = "Inscription Marelle - " + txtPrenom.Text + " " + txtNom.Text.ToUpper();
      msg.BodyFormat = System.Web.Mail.MailFormat.Html;
      msg.Body = sbBody.ToString();

      //Send message
      System.Web.Mail.SmtpMail.Send(msg);
      labResult.Text = "Merci pour votre demande d'inscription. Nous vous contacterons au plus vite !";
      MainText.Visible = false;
    }
  }
  
  
 
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<b><asp:Label ID="labResult" runat="server" /></b>
 
<asp:Panel width="100%" ID="MainText" runat="server">
   
   <tm:dynamicheading id="Dynamicheading01" text="Inscriptions" headingstyle="Cursif" runat="server" />
  
<p>Vous �tes int�ress� par cette �cole du samedi matin qui permettra � votre enfant de d�velopper sa connaissance du monde francophone, de ma�triser la langue fran�aise et d'am�liorer son expression orale tout en participant � des activit�s ludiques avec des petits copains de son �ge ? Voici comment les inscrire.</p>

<h2>Crit�res d'admission</h2>
  <p>
    L'�cole accueille les enfants de 2 � 15 ans. Les cours auront lieu enti�rement en fran�ais, et il est donc essentiel que votre enfant comprenne bien le fran�ais. L'�cole s'adresse donc aux enfants qui ont un parent francophone qui leur parle fran�ais, ou qui ont r�cemment effectu� un s�jour prolong� dans un pays francophone.</p>
    <p>Un entretien pr�liminaire, effectu� lors de la r�union pr�-rentr�e, permettra aux enseignants de d�terminer si l'enfant a les connaissances linguistiques n�cessaires, et chaque nouvel �l�ve admis aura une p�riode d'essai de cinq s�ances (un demi trimestre). Ceci permettra de d�terminer si l'�cole fran�aise de La Marelle est le meilleur environment pour votre enfant, ou s'il s'�panouirait mieux dans <a href="FrenchClasses.aspx">un cours</a> destin� aux enfants anglophones.</p>
    
 <h2>Cours</h2>
  <p>
    Les s�ances sont de 3 heures, 10 samedi matins par trimestre, et se d�roulent � l'�cole primaire de Fleetdown Primary School � Dartford. <a href="Classes.aspx">Consultez notre page p�dagogique</a> pour plus d'information sur l'enseignement propos� et la r�partition des classes.</p>
    
    <p>Vous pouvez voir les dates exactes des cours pour l'ann�e � venir sur <a href="Dates.aspx">notre calendrier</a>.</p>
    
<h2>Tarifs</h2>
  <p>Nos tarifs sont calcul�s pour couvrir uniquement les frais de fonctionnement, la location des salles et la r�mun�ration des enseignants. Une cotisation fournitures de <b>�10</b> par �l�ve est �galement due au d�but de chaque ann�e scolaire.</p>
<p>Afin de r�server la place de votre enfant, nous vous demandons de payer un acompte de 50% d�s que possible. Le solde sera alors d� au plus tard deux semaines avant la rentr�e. Voyez notre <a href="Fees.aspx">page sur les tarifs</a> pour plus d'informations concernant les tarifs et les modalit�s de paiement.</p>

<h2>Inscription</h2>  
  
  <p>Pour inscrire vos enfants, veuillez remplir le questionnaire suivant et nous vous contacterons&nbsp;:</p>
        <br />

      <strong>Vos coordonn�es :</strong>
      <br />

    <table width="600">
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
          Pr�nom :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtPrenom" style="width: 302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px; height: 60px" valign="top">
          Adresse :</td>
        <td style="width: 301px; height: 60px" valign="top">
          <asp:TextBox id="txtAdresse" rows="3" width="303px" runat="server" TextMode="MultiLine"/></td>
        <td style="width: 87px; height: 60px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">
          T�l�phone 1 :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtTel1" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        <asp:DropDownList ID="selTel1" runat="server" width="103px">
          <asp:ListItem>journ�e</asp:ListItem>
          <asp:ListItem>soir</asp:ListItem>
        </asp:DropDownList>
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">
          T�l�phone 2 :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtTel2" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        <asp:DropDownList ID="selTel2" runat="server" width="103px">
          <asp:ListItem>journ�e</asp:ListItem>
          <asp:ListItem>soir</asp:ListItem>
        </asp:DropDownList>
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
        <td style="width: 110px" valign="top">Nationalit�(s) :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNationalite" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
    </table>
  <strong>
    <br />
    Votre/Vos enfant(s) :</strong><br />
  <table width="600">
    <tr>
      <td style="width: 11px">
      </td>
      <td style="width: 145px">
        <strong>Nom</strong></td>
      <td style="width: 145px">
        <strong>Pr�nom</strong></td>
      <td style="width: 118px">
        <strong>Date de naissance (jj/mm/aa)</strong></td>
      <td style="width: 40px">
          <b>Sexe</b></td>
        <td style="width: 120px">
            <strong>Nationalit�</strong></td>
    </tr>
    <tr>
      <td style="width: 11px">
1.</td>
      <td style="width: 150px">
        <asp:TextBox id="txtNomEnfant1" width="143px" runat="server" /></td>
      <td style="width: 150px">
        <asp:TextBox id="txtPrenomEnfant1" width="145px" runat="server" /></td>
      <td style="width: 118px">
        <asp:TextBox id="txtDateEnfant1" width="118px" runat="server" /></td>
      <td style="width: 40px">
          <asp:DropDownList ID="dlSexeEnfant1" runat="server">
              <asp:ListItem>M</asp:ListItem>
              <asp:ListItem>F</asp:ListItem>
          </asp:DropDownList>
        </td>
        <td style="width: 120px">
            <asp:TextBox ID="txtNatEnfant1" runat="server" width="120px" />
        </td>
    </tr>
    <tr>
      <td style="width: 11px">
2.</td>
      <td style="width: 143px">
        <asp:TextBox id="txtNomEnfant2" width="143px" runat="server" /></td>
      <td style="width: 150px">
        <asp:TextBox id="txtPrenomEnfant2" width="145px" runat="server" /></td>
      <td style="width: 118px">
        <asp:TextBox id="txtDateEnfant2" width="118px" runat="server" /></td>
       <td style="width: 40px">
           <asp:DropDownList ID="dlSexeEnfant2" runat="server">
               <asp:ListItem>M</asp:ListItem>
               <asp:ListItem>F</asp:ListItem>
           </asp:DropDownList>
        </td>
        <td style="width: 120px">
            <asp:TextBox ID="txtNatEnfant2" runat="server" width="120px" />
        </td>
   </tr>
    <tr>
      <td style="width: 11px">
3.</td>
      <td style="width: 143px">
        <asp:TextBox id="txtNomEnfant3" width="143px" runat="server" /></td>
      <td style="width: 150px">
        <asp:TextBox id="txtPrenomEnfant3" width="145px" runat="server" /></td>
      <td style="width: 118px">
        <asp:TextBox id="txtDateEnfant3" width="118px" runat="server" /></td>
       <td style="width: 40px">
           <asp:DropDownList ID="dlSexeEnfant3" runat="server">
               <asp:ListItem>M</asp:ListItem>
               <asp:ListItem>F</asp:ListItem>
           </asp:DropDownList>
        </td>
        <td style="width: 120px">
            <asp:TextBox ID="txtNatEnfant3" runat="server" width="120px" />
        </td>
    </tr>
  </table>
  <br />
  <strong>Origine du bilinguisme :<br /></strong>
    <asp:CheckBoxList ID="cbBilinguisme" runat="server" RepeatColumns="2" Width="621px">
      <asp:ListItem Value="Parent(s) francophone(s)">Parent(s) francophone(s)</asp:ListItem>
      <asp:ListItem Value="Sejour prolonge dans pays francophone">S�jour prolong� dans pays francophone</asp:ListItem>
    </asp:CheckBoxList><br />

  <table>
    <tr>
      <td style="width: 217px">
      </td>
      <td style="width: 371px">
      </td>
    </tr>
    <tr>
      <td style="width: 217px">
        <strong>Langues parl�es � la maison :</strong></td>
      <td style="width: 371px">
        <asp:TextBox id="txtLangues" style="width: 370px" runat="server" /></td>
    </tr>
  </table>
  <br />
  <strong>
Niveau du fran�ais des enfants :<br />
  </strong>
  <asp:CheckBoxList ID="cbNiveau" runat="server" RepeatColumns="4" Width="370px">
    <asp:ListItem>Compris</asp:ListItem>
    <asp:ListItem>Parl&#233;</asp:ListItem>
    <asp:ListItem>Lu</asp:ListItem>
    <asp:ListItem>Ecrit</asp:ListItem>
  </asp:CheckBoxList><br />
  
  <strong>
Comment avez-vous entendu parler de La Marelle ?<br />
  </strong>

<table>
    <tr>
      <td style="width: 217px">
    <asp:DropDownList ID="ddlSource" runat="server" width="203px">
          <asp:ListItem>amis/coll�gues</asp:ListItem>
<asp:ListItem>email (preciser l'expediteur)</asp:ListItem>
<asp:ListItem>web (preciser le site)</asp:ListItem>
<asp:ListItem>affichette (preciser le lieu)</asp:ListItem> 
<asp:ListItem>carte de visite</asp:ListItem>
<asp:ListItem>article presse</asp:ListItem>
<asp:ListItem>autres (pr�ciser)</asp:ListItem>
        </asp:DropDownList>
       </td>
      <td style="width: 371px">
        <asp:TextBox id="Precisions" style="width: 370px" runat="server" Text="(pr�ciser ici)"/></td>
    </tr>
</table>
  
  <br />
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Envoyer" />
  <br />
  <br />

</asp:Panel>

  
</asp:Content>

