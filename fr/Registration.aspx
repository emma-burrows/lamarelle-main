<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/en/Registration.aspx.cs" Inherits="en_Registration"  MasterPageFile="~/masterpage.master" Title="La Marelle - Inscriptions" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Label ID="labResult" runat="server" />
 
<asp:Panel width="100%" ID="MainText" runat="server">
   
   <h1>Inscriptions</h1>
  
<a name="form"></a>


  <p>Pour inscrire vos enfants ou recevoir plus d&#39;informations, veuillez remplir le 
    questionnaire suivant et nous vous contacterons rapidement&nbsp;:</p>
        <br />

      <strong>Vos coordonnées :</strong>
      <br />

    <table width="600">
      <tr>
        <td style="width: 110px" valign="top">
          Nom de famille :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNom" width="302px" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtNom" runat="server" ErrorMessage="Veuillez entrer votre nom de famille"></asp:RequiredFieldValidator>
        </td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">
          Prénom :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtPrenom" style="width: 302px" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPrenom" runat="server" ErrorMessage="Veuillez entrer votre prénom"></asp:RequiredFieldValidator>
        </td>
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
          Téléphone 1 :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtTel1" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        <asp:DropDownList ID="selTel1" runat="server" width="103px">
          <asp:ListItem>journée</asp:ListItem>
          <asp:ListItem>soir</asp:ListItem>
        </asp:DropDownList>
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">
          Téléphone 2 :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtTel2" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        <asp:DropDownList ID="selTel2" runat="server" width="103px">
          <asp:ListItem>journée</asp:ListItem>
          <asp:ListItem>soir</asp:ListItem>
        </asp:DropDownList>
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">Email :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtEmail" width="302px" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="txtEmail" 
            ErrorMessage="Veuillez entrer une adresse couriel pour que nous puissions vous joindre."></asp:RequiredFieldValidator>
        </td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">Nationalité(s) :</td>
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
        <strong>Prénom</strong></td>
      <td style="width: 118px">
        <strong>Date de naissance (jj/mm/aa)</strong></td>
      <td style="width: 40px">
          <b>Sexe</b></td>
        <td style="width: 120px">
            <strong>Nationalité</strong></td>
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
      <asp:ListItem Value="Sejour prolonge dans pays francophone">Séjour prolongé dans pays francophone</asp:ListItem>
      <asp:ListItem Value="Cherche cours FLE">Enfants non-francophones (Français langue étrangère)</asp:ListItem>
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
        <strong>Langues parlées à la maison :</strong></td>
      <td style="width: 371px">
        <asp:TextBox id="txtLangues" style="width: 370px" runat="server" /></td>
    </tr>
  </table>
  <br />
  <strong>
Niveau du français des enfants :<br />
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
          <asp:ListItem>amis/collègues</asp:ListItem>
<asp:ListItem>email (preciser l'expediteur)</asp:ListItem>
<asp:ListItem>web (preciser le site)</asp:ListItem>
<asp:ListItem>affichette (preciser le lieu)</asp:ListItem> 
<asp:ListItem>carte de visite</asp:ListItem>
<asp:ListItem>article presse</asp:ListItem>
<asp:ListItem>autres (préciser)</asp:ListItem>
        </asp:DropDownList>
       </td>
      <td style="width: 371px">
        <asp:TextBox id="Precisions" style="width: 370px" runat="server" Text="(préciser ici)"/></td>
    </tr>
</table>

<br />
  <strong>Comments:</strong><br />
  <asp:TextBox id="txtCommentaires" rows="6" width="100%" runat="server" TextMode="MultiLine"/>
  
  <br />
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Envoyer" />
   <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
  <br />
  <br />

</asp:Panel>

  
</asp:Content>

