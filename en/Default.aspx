<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="en_Default"
  MasterPageFile="~/masterpage.master" Title="La Marelle - Dartford's French School" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <table width="100%">
    <tr>
      <td colspan="2">
        <div class="cursif" style="text-align: center;">
          Apprendre est un jeu d'enfant</div>
        <p>
          La Marelle is a French school and community centre based in <a href="https://maps.google.co.uk/?q=La+Marelle+DA2+6JX" target="_blank"
            title="View our exact location on Google Maps">Dartford in North-West Kent</a> (registered charity number <a href="http://charitycommission.gov.uk/Showcharity/RegisterOfCharities/CharityWithoutPartB.aspx?RegisteredCharityNumber=1135186&SubsidiaryNumber=0">1135186</a>).
          We offer French-language lessons and activities on Saturday mornings.</p>
        <table align="center" cellpadding="0" cellspacing="10" style="width: 100%">
          <tr>
            <td style="text-align: left" width="50%" class="red box">
              <img align="baseline" alt="Frog" height="50px" src="../images/frog.png" width="50px"
                style="float: left" />
              <div>
                <h1 style="margin-bottom: 3px;">
                  <a href="FrenchClasses.aspx">French as a foreign language</a></h1>
                <p>
                  French classes for non-native speakers from 3 years to GCSE level and beyond.</p>
              </div>
            </td>
            <td style="text-align: left" width="50%" class="green box">
              <img align="baseline" alt="Ladybird" height="50px" src="../images/Ladybird.png" width="50px"
                style="float: left" />
              <div>
                <h1>
                  <a href="Classes.aspx">Petite École Française</a></h1>
                <p>
                  Classes for children from a French-speaking background, with support from the French
                  Embassy&#39;s &quot;Plan Ecoles&quot;.</p>
              </div>
            </td>
          </tr>
        </table>
      </td>
    </tr>
  </table>
  <h1>
    Latest News</h1>
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
  <h1>
    Facebook</h1>
  <table width="100%" cellpadding="10" cellspacing="5">
    <tr>
      <td class="green box">
        <iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fpages%2FLa-Marelle%2F112289512183777&amp;width=650&amp;colorscheme=light&amp;show_faces=false&amp;stream=true&amp;header=false&amp;"
          scrolling="yes" frameborder="0" style="width: 100%; height: 300px;" allowtransparency="true">
        </iframe>
      </td>
    </tr>
  </table>
</asp:Content>
