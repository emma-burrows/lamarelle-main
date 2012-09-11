<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/masterpage.master" Title="La Marelle - école pour enfants bilingues à Dartford" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuPlaceHolder" runat="server">


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<b><asp:Label ID="labResult" runat="server" />
  <asp:ObjectDataSource ID="odsNews" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetTop5News" 
    TypeName="NewsDataObject"></asp:ObjectDataSource>
  </b>

  <asp:Panel width="100%" ID="MainText" runat="server">
    <table width="100%">
      <tr>
        <td colspan="2">
          <p align="center"><tm:dynamicheading id="Dynamicheading5" text="Apprendre ²est ²un ²jeu ²d'enfant. " headingstyle="Cursif" runat="server" /></p>
          <p>La Marelle est une école et un centre communautaire français située à Dartford dans le nord-ouest du Kent. Nous proposons des activités et cours en français le samedi matin.</p>
        </td>
      </tr>
    </table>

    <table width="100%" cellpadding="0">
      <tr>
        <td>
          <asp:Repeater ID="FormView1" runat="server" DataSourceID="odsNews">
            <ItemTemplate>
              <table  style="background-color: #eedcdc; padding: 10px">
                <tr>
                  <td>
                    <h3><asp:Label ID="FrenchTitleLabel" runat="server" Text='<%# Bind("FrenchTitle") %>' /></h3>
                    <asp:Label ID="FrenchLabel" runat="server" Text='<%# Bind("French") %>' />
                  </td>
                </tr>
              </table>
            </ItemTemplate>
            <AlternatingItemTemplate>
              <table  style="background-color: #dcdcee; padding: 10px">
                <tr>
                  <td>
                    <h3><asp:Label ID="FrenchTitleLabel" runat="server" Text='<%# Bind("FrenchTitle") %>' /></h3>
                    <asp:Label ID="FrenchLabel" runat="server" Text='<%# Bind("French") %>' />
                  </td>
                </tr>
              </table>
            </AlternatingItemTemplate>
          </asp:Repeater>
        </td>
      </tr>
      
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
          <li>Médiathèque (deuxième trimestre 2011)</li>
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
  </asp:Panel>
</asp:Content>