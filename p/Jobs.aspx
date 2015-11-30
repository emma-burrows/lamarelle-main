<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Jobs.aspx.cs" Inherits="en_Jobs" MasterPageFile="~/masterpage.master" Title="La Marelle - Jobs" culture="auto" meta:resourcekey="Page" uiculture="auto" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


  <h1><asp:Literal ID="litTitle" runat="server" Text="La Marelle Jobs" meta:resourcekey="litTitle" /></h1>
  <asp:Label ID="labResult" runat="server" meta:resourcekey="labResult" />
 
<asp:Panel ID="MainText" runat="server" meta:resourcekey="MainText">

   <asp:Literal ID="intro" runat="server" meta:resourcekey="intro" Text="
&lt;p&gt;La Marelle is a busy, thriving charity and we are always looking for new people to help us
achieve our aims. In particular, we welcome applications from:&lt;/p&gt;

&lt;ul&gt;
  &lt;li&gt;Teachers and assistants whose mother tongue is French&lt;/li&gt;
  &lt;li&gt;Volunteers to help with administrative work like advertising and fundraising&lt;/li&gt;
&lt;/ul&gt;

&lt;p&gt;All positions are based at &lt;a href=&quot;https://maps.google.co.uk/?q=La+Marelle+DA2+6JX&quot; target=&quot;_blank&quot;
            title=&quot;View our exact location on Google Maps&quot;&gt;Fleetdown Primary School&lt;/a&gt; in Datford, North-West Kent (40 minutes from central London). We give lessons on 30 Saturday mornings a year.&lt;/p&gt;
 &lt;p&gt;
  For further information, please send us your CV (Word or PDF only) and cover letter in French using the following form:&lt;/p&gt;
"></asp:Literal>

  <div class="form-group">
    <asp:Label ID="lblNom" AssociatedControlID="txtNom" runat="server" meta:resourcekey="lblNom">Your name:</asp:Label> *
    <asp:TextBox id="txtNom" CssClass="form-control" runat="server" AutoCompleteType="DisplayName" meta:resourcekey="txtNom"/>
    <asp:RequiredFieldValidator ID="nomRequired" runat="server" Display="Dynamic" ControlToValidate="txtNom" CssClass="text-danger" ErrorMessage="Please enter your name" meta:resourcekey="nomRequired"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <asp:Label ID="lblEmail" AssociatedControlID="txtEmail" runat="server" meta:resourcekey="lblEmail">Your email:</asp:Label> *
    <asp:TextBox id="txtEmail" CssClass="form-control" runat="server" AutoCompleteType="Email" meta:resourcekey="txtEmail"/>
    <asp:RequiredFieldValidator ID="emailRequired" runat="server" Display="Dynamic" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="Please enter an email address" meta:resourcekey="emailRequired"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <asp:Label ID="lblComment" AssociatedControlID="txtComment" runat="server" meta:resourcekey="lblComment">Why do you want to work for La Marelle?</asp:Label> *
    <asp:TextBox id="txtComment" CssClass="form-control" rows="10" runat="server" TextMode="MultiLine" meta:resourcekey="txtComment"/>
    <asp:RequiredFieldValidator ID="commentRequired" runat="server" Display="Dynamic" ControlToValidate="txtComment" CssClass="text-danger" ErrorMessage="Please enter a cover letter" meta:resourcekey="commentRequired"></asp:RequiredFieldValidator>
  </div>
  <div class="form-group">
    <asp:Label AssociatedControlID="txtComment" runat="server" meta:resourcekey="Label">Your CV (Word or PDF format only, please):</asp:Label>
    <asp:FileUpload ID="CVUpload" CssClass="btn btn-default" runat="server" meta:resourcekey="CVUpload" />
  </div>
  <div class="form-group">
    <asp:Button ID="btnEnvoyer" CssClass="btn btn-primary" runat="server" OnClick="btnEnvoyer_Click" Text="Send" meta:resourcekey="btnEnvoyer" />
  </div>
</asp:Panel>

</asp:Content>

