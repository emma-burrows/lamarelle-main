<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/en/Jobs.aspx.cs" Inherits="en_Jobs" MasterPageFile="~/masterpage.master" Title="La Marelle - Emplois" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<asp:Label ID="labResult" runat="server" />
 
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

  <div class="form-group">
    <asp:Label ID="Label1" AssociatedControlID="txtNom" runat="server">Votre nom:</asp:Label>
    <asp:TextBox id="txtNom" CssClass="form-control" runat="server" AutoCompleteType="DisplayName" placeholder="Entrez votre nom"/>
  </div>
  <div class="form-group">
    <asp:Label ID="Label2" AssociatedControlID="txtEmail" runat="server">Votre email:</asp:Label>
    <asp:TextBox id="txtEmail" CssClass="form-control" runat="server" AutoCompleteType="Email" placeholder="Entrez votre email"/>
  </div>
  <div class="form-group">
    <asp:Label ID="Label3" AssociatedControlID="txtComment" runat="server">Pourquoi aimeriez-vous travailler à La Marelle?</asp:Label>
    <asp:TextBox id="txtComment" CssClass="form-control" rows="10" runat="server" TextMode="MultiLine"/>
  </div>
  <div class="form-group">
    <asp:Label ID="Label4" AssociatedControlID="txtComment" runat="server">Votre CV (Word ou PDF seulement):</asp:Label>
    <asp:FileUpload ID="CVUpload" CssClass="btn btn-default" runat="server" />
  </div>

  <br />
  <asp:Button ID="btnEnvoyer" CssClass="btn btn-primary" runat="server" OnClick="btnEnvoyer_Click" Text="Envoyer" />
  <br />
  <br />
</asp:Panel>

</asp:Content>

