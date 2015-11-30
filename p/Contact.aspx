<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="en_Contact" MasterPageFile="~/masterpage.master" Title="La Marelle - Contact Us" culture="auto" meta:resourcekey="Page" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <h1><asp:Literal ID="litTitle" runat="server" Text="Contact Us" meta:resourcekey="litTitle"/></h1>
  <asp:Label ID="labResult" runat="server" meta:resourcekey="labResult" />

  <asp:Panel ID="MainText" runat="server" meta:resourcekey="MainTextResource1">

    <asp:Literal ID="intro" runat="server" meta:resourcekey="intro" />

    <div class="form-group">
      <asp:Label ID="lblNom" AssociatedControlID="txtNom" runat="server" Text="Your name:" meta:resourcekey="lblNom"/> *
      <asp:TextBox id="txtNom" CssClass="form-control" runat="server" AutoCompleteType="DisplayName" meta:resourcekey="txtNom" />
      <asp:RequiredFieldValidator ID="nomRequired" runat="server" Display="Dynamic" ControlToValidate="txtNom" CssClass="text-danger" ErrorMessage="Please enter your name" meta:resourcekey="nomRequired"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
      <asp:Label ID="lblEmail" AssociatedControlID="txtEmail" runat="server" Text="Your Email:" meta:resourcekey="lblEmail" /> *
      <asp:TextBox id="txtEmail" CssClass="form-control" runat="server" meta:resourcekey="txtEmail" />
      <asp:RequiredFieldValidator ID="emailRequired" runat="server" Display="Dynamic" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="Please enter an email address" meta:resourcekey="emailRequired"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
      <asp:Label ID="lblComment" AssociatedControlID="txtComment" runat="server" Text="Comments:" meta:resourcekey="lblComment" /> *
      <asp:TextBox id="txtComment" CssClass="form-control" rows="6" runat="server" TextMode="MultiLine" meta:resourcekey="txtComment"/>
      <asp:RequiredFieldValidator ID="commentRequired" runat="server" Display="Dynamic" ControlToValidate="txtComment" CssClass="text-danger" ErrorMessage="Please enter a cover letter" meta:resourcekey="commentRequired"></asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
      <asp:Button ID="btnEnvoyer" CssClass="btn btn-default" runat="server" OnClick="btnEnvoyer_Click" Text="Send" meta:resourcekey="btnEnvoyer" />
    </div>
  </asp:Panel>

</asp:Content>

