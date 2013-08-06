<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/en/Contact.aspx.cs" Inherits="en_Contact" MasterPageFile="~/masterpage.master" Title="La Marelle - Contact" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Label ID="labResult" runat="server" />
 
<asp:Panel ID="MainText" runat="server">
   <h1>Contactez-nous</h1>

<p>Si vous pensez inscrire vos enfants à La Marelle, veuillez remplir notre</p>

<p align="center"><a href="Registration.aspx#form"><strong>Fiche d'inscription en ligne</strong></a></p>

<p>La fiche d'inscription n'engage à rien et nous permet de mieux vous répondre en nous donnant les détails des âges de vos enfants et vos coordonnées complètes.</p>

<p>Si vous avez des questions d'ordre général, veuillez remplir le formulaire suivant :</p>

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
          <asp:TextBox id="txtCommentaires" rows="6" width="303px" runat="server" TextMode="MultiLine"/></td>
        <td style="width: 87px; height: 60px" valign="top">
        </td>
      </tr>
    </table>
  <br />
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Send" />
  <br />
  <br />
</asp:Panel>

</asp:Content>

