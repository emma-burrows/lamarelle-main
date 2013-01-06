<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/en/Default.aspx.cs" Inherits="en_Default"  MasterPageFile="~/masterpage.master" Title="La Marelle - French school for bilingual children Dartford"%>


<asp:Content ID="Content1" ContentPlaceHolderID="MenuPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <table width="100%">
    <tr>
    <td colspan="2" >

    <div class="cursif" style="text-align: center;">Apprendre est un jeu d'enfant</div> 
          <p>La Marelle est une école et un centre communautaire français située à <a href="https://maps.google.co.uk/?q=Fleetdown+Primary+School+DA2+6JX" title="Voir notre position sur Google Maps">Dartford dans le nord-ouest du Kent</a>. Nous proposons des activités et cours en français le samedi matin.</p>
        </td>
      </tr>
    </table>

    <h1>Dernières nouvelles</h1>
    <table width="100%" cellpadding="0">
      <tr>
        <td>
          <asp:Repeater ID="FormView1" runat="server">
            <ItemTemplate>
              <table class="yellow" style="padding: 10px" width="100%">
                <tr>
                  <td>
                    <h1><asp:Hyperlink NavigateUrl='<%# Bind("URL") %>' ID="FrenchTitleLabel" runat="server" Text='<%# Bind("Title") %>' /></h1>
                    <asp:Literal ID="FrenchLabel" runat="server" Text='<%# Bind("Description") %>' />
                  </td>
                </tr>
              </table>
            </ItemTemplate>
            <AlternatingItemTemplate>
              <table class="blue" style="padding: 10px" width="100%">
                <tr>
                  <td>
                    <h1><asp:Hyperlink NavigateUrl='<%# Bind("URL") %>' ID="FrenchTitleLabel" runat="server" Text='<%# Bind("Title") %>' /></h1>
                    <asp:Label ID="FrenchLabel" runat="server" Text='<%# Bind("Description") %>' />
                  </td>
                </tr>
              </table>
            </AlternatingItemTemplate>
          </asp:Repeater>
        </td>
      </tr>
    </table>

    <h1>Nos Cours et Services</h1>
    <table width="100%" cellpadding="0">
 
      <!-- Static information -->
      <tr>
        <td width="100%" colspan="2"  valign="top" border="1"  style="background-color: #dcdcee; padding: 10px" >
          <img alt="Frog" height="50px" src="../images/frog.png" width="50px" align="baseline" /><tm:dynamicheading id="Dynamicheading1" text="Cours de français" headingstyle="Cursif" runat="server" />
          <p>La Marelle propose des cours de français et un cours de préparation au GCSE pour les non-francophones.</p>
          <ul>
            <li>Cours pour tous les âges à partir de 3 ans</li>
            <li>Cours de conversation pour adultss</li>
            <li>Cours privés sur demande.</li>
          </ul>
          <p align="center">
            <a href="FrenchClasses.aspx">Plus d'informations</a> ||
            <a href="Registration.aspx">Contactez-nous</a> ||
            <a href="Dates.aspx">Dates des cours</a>
          </p>     
        </td>
        </tr>
        <tr>
          <td width="100%" colspan="2"  valign="top" border="1" style="background-color: #eedcdc;  padding: 10px">
            <img alt="Ladybird" height="50px" src="../images/Ladybird.png" width="50px" align="baseline" /><tm:dynamicheading id="Dynamicheading2" text="Ecole française" headingstyle="Cursif" runat="server" />
            <p>Depuis sa création en 2009, La Marelle propose des cours pour les enfants issus d'un milieu francophone.<br />
            Cette initiative est soutenue par le "Plan Ecoles" de l'Ambassade de France, qui vise à encourager les cours de français pour les enfants francophones résidant au Royaume-Uni.<br />
            <p align="center">
              <a href="Classes.aspx">Plus d'informations</a> ||
              <a href="Registration.aspx">Contactez-nous</a> ||
              <a href="Dates.aspx">Dates des cours</a>
            </p>
          </td>
        </tr>
        <tr>
        <td width="100%" colspan="2" valign="top" border="1" style="background-color: #dceedc;  padding: 10px">
          <img alt="Book" height="50px" src="../images/large_open_book.png" width="50px" align="baseline" /><tm:dynamicheading id="Dynamicheading3" text="Autres activitiés" headingstyle="Cursif" runat="server" />
          <p>Nous proposons également les activités suivantes pendant les cours le samedi matin:</p>
          <ul>
          <li>Groupe parents-bébés: prenez un café et discutez avec nos parents francophones pendant que vos enfants de 0 à 2 ans jouent avec leurs petits camarades. (contribution: £1/famille)</li>
          <li>Café pour les adultes avec accès Internet</li>
          <li>Médiathèque</li>
          </ul>
          <p align="center">
            <a href="FrenchClasses.aspx#location">Passez nous voir un samedi matin!</a>
          </p>
        </td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" align="center">
          <a href="http://francoforum.xooit.co.uk"><img src="../images/francoforum.jpg" width="200px" height="60px"/></a><br />Rencontrez d'autres francophones dans le Kent grâce au <a href="http://francoforum.xooit.co.uk">Francoforum</a>.
        </td>
      </tr>
</table>

<br />

</asp:Content>