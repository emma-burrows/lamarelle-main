<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/en/Default.aspx.cs" Inherits="en_Default"
  MasterPageFile="~/masterpage.master" Title="La Marelle - Ecole française de French" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <table width="100%">
    <tr>
      <td colspan="2">
        <div class="cursif" style="text-align: center;">
          Apprendre est un jeu d'enfant</div>
        <p>
          La Marelle est une école française située à <a href="https://maps.google.co.uk/?q=La+Marelle+DA2+6JX" target="_blank"
            title="Voir notre position sur Google Maps">Dartford dans le nord-ouest du Kent</a> (association numéro <a href="http://charitycommission.gov.uk/Showcharity/RegisterOfCharities/CharityWithoutPartB.aspx?RegisteredCharityNumber=1135186&SubsidiaryNumber=0">1135186</a>).
          Nous proposons des activités et cours en français le samedi matin.</p>
        <table align="center" cellpadding="5" cellspacing="10" style="width: 100%">
          <tr>
            <td style="text-align: left" width="50%" class="red box">
              <img align="baseline" alt="Frog" height="50px" src="../images/frog.png" width="50px"
                style="float: left" />
              <div>
                <h1 style="margin-bottom: 3px;">
                  <a href="FrenchClasses.aspx">Français langue étrangère</a></h1>
                <p>
                  Cours de français pour non-francophones de 3 ans au niveau GCSE et au-delà.</p>
              </div>
            </td>
            <td class="green box" style="text-align: left" width="50%">
              <img align="baseline" alt="Ladybird" height="50px" src="../images/Ladybird.png" width="50px"
                style="float: left" />
              <div>
                <h1 style="margin-bottom: 3px;">
                  <a href="Classes.aspx">Petite École Française</a></h1>
                <p>
                  École du samedi pour les enfants francophones, dans le cadre du «&nbsp;Plan Écoles&nbsp;»
                  de l'Ambassade de France.</p>
              </div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <h1>
    Dernières nouvelles</h1>
  <table align="center" width="100%" cellpadding="5" cellspacing="10">
    <asp:Repeater ID="FormView1" runat="server">
      <ItemTemplate>
        <tr>
          <td class="yellow box">
            <h2>
              <asp:HyperLink NavigateUrl='<%# Bind("URL") %>' ID="FrenchTitleLabel" runat="server"
                Text='<%# Bind("Title") %>' /></h2>
            <asp:Literal ID="FrenchLabel" runat="server" Text='<%# Bind("Description") %>' />
          </td>
        </tr>
      </ItemTemplate>
      <AlternatingItemTemplate>
        <tr>
          <td class="purple box">
            <h2>
              <asp:HyperLink NavigateUrl='<%# Bind("URL") %>' ID="FrenchTitleLabel" runat="server"
                Text='<%# Bind("Title") %>' /></h2>
            <asp:Label ID="FrenchLabel" runat="server" Text='<%# Bind("Description") %>' />
          </td>
        </tr>
      </AlternatingItemTemplate>
    </asp:Repeater>
  </table>
</asp:Content>
