<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/en/Jobs.aspx.cs" Inherits="en_Jobs" MasterPageFile="~/masterpage.master" Title="La Marelle - Jobs" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<asp:Label ID="labResult" runat="server" />
 
<asp:Panel ID="MainText" runat="server">
   <h1>La Marelle Jobs</h1>

<h2>French-speaking teachers, assistants and volunteers</h2>
<p>La Marelle is a busy, thriving charity and we are always looking for new people to help us
achieve our aims. In particular, we welcome applications from:</p>

<ul>
  <li>Teachers and assistants whose mother tongue is French</li>
  <li>Volunteers to help with administrative work like advertising and fundraising</li>
</ul>

<p>All positions are based at <a href="https://maps.google.co.uk/?q=La+Marelle+DA2+6JX" target="_blank"
            title="View our exact location on Google Maps">Fleetdown Primary School</a> in Datford, North-West Kent (40 minutes from central London). We give lessons on 30 Saturday mornings a year.</p>
 <p>
For further information, please send us your CV (Word or PDF only) and cover letter in French using the following form:</p>

  <div class="form-group">
    <asp:Label ID="Label1" AssociatedControlID="txtNom" runat="server">Your name:</asp:Label>
    <asp:TextBox id="txtNom" CssClass="form-control" runat="server" AutoCompleteType="DisplayName" placeholder="Enter your name"/>
  </div>
  <div class="form-group">
    <asp:Label AssociatedControlID="txtEmail" runat="server">Your email:</asp:Label>
    <asp:TextBox id="txtEmail" CssClass="form-control" runat="server" AutoCompleteType="Email" placeholder="Enter email"/>
  </div>
  <div class="form-group">
    <asp:Label AssociatedControlID="txtComment" runat="server">Why do you want to work for La Marelle?</asp:Label>
    <asp:TextBox id="txtComment" CssClass="form-control" rows="10" runat="server" TextMode="MultiLine"/>
  </div>
  <div class="form-group">
    <asp:Label AssociatedControlID="txtComment" runat="server">Your CV (Word or PDF format only, please):</asp:Label>
    <asp:FileUpload ID="CVUpload" CssClass="btn btn-default" runat="server" />
  </div>

  <br />
  <asp:Button ID="btnEnvoyer" CssClass="btn btn-primary" runat="server" OnClick="btnEnvoyer_Click" Text="Send" />
  <br />
  <br />
</asp:Panel>

</asp:Content>

