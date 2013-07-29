<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/en/Contact.aspx.cs" Inherits="en_Contact" MasterPageFile="~/masterpage.master" Title="La Marelle - Contact Us" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Label ID="labResult" runat="server" />


<asp:Panel ID="MainText" runat="server">
   <h1>Contact Us</h1>

<p>If you're thinking about enrolling your children at La Marelle, please fill in our </p>

<p align="center"><a href="Registration.aspx#form"><strong>Online enrollment form</strong></a></p>

<p>It doesn't commit you to anything but means that we can respond to your queries more easily by telling us how old your children are and where you live.</p>


<p>For any questions, please fill in the following form and we will be in touch as soon as possible:</p>

    <table>
      <tr>
        <td style="width: 110px" valign="top">
          Your name:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNom" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">Email:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtEmail" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px; height: 60px" valign="top">
          Comments:</td>
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


<p>You can also send any correspondance to 5 Eynsford Road, Greenhithe DA9 9HB.</p>
<p>The above address is for post only - lessons and registration days take place at 
<a href="https://maps.google.co.uk/?q=La+Marelle+DA2+6JX" target="_blank"
            title="View our exact location on Google Maps">Fleetdown Primary School</a> in Dartford and other activities take place where stated on this web page.</p>
</asp:Panel>

</asp:Content>

