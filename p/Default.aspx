<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/p/Default.aspx.cs" Inherits="en_Default"
  MasterPageFile="~/masterpage.master" Title="La Marelle - Ecole française de Dartford" UICulture="auto" Culture="auto" meta:resourcekey="PageResource1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  
  <div class="jumbotron">
    <p class="cursif" style="text-align: center;">
       Apprendre est un jeu d'enfant<br />
    </p>

    <p class="lead">
      <asp:Literal ID="lead" runat="server" meta:resourcekey="lead" Text="La Marelle - Dartford"></asp:Literal>
    </p>
  </div>

  <div class="row marketing">
    <div class="col-lg-6">
      <img alt="Frog" src="../images/frog.png" style="vertical-align:top; float: left; width: 70px; height: 70px; margin: 0px; margin-right: 20px;" />
      <h1 style="margin-bottom: 3px;">
        <asp:Literal ID="fleTitle" runat="server" meta:resourcekey="fleTitle" Text="French as a foreign language"/>
      </h1>
      <p>
        <asp:Literal ID="fleDesc" runat="server" meta:resourcekey="fleDesc" Text="French classes for non-native speakers from 3 years to GCSE level and beyond." />
      </p>
      <p>
        <asp:LinkButton ID="fleMore" runat="server" Text="More details »" meta:resourcekey="moreInfo" CssClass="btn btn-default" PostBackUrl="~/en/FrenchClasses.aspx"  />
      </p>
    </div>
    <div class="col-lg-6">
      <img alt="Ladybird" src="../images/Ladybird.png" style="vertical-align:top; float: left; width: 70px; height: 70px; margin: 0px; margin-right: 20px;"/>
      <h1 style="margin-bottom: 3px;">
        <asp:Literal ID="fraTitle" runat="server" meta:resourcekey="fraTitle" Text="Petite École Française"/>
      </h1>
      <p>
        <asp:Literal ID="fraDesc" runat="server" meta:resourcekey="fraDesc" Text="Classes for children from a French-speaking background, with support from the French Embassy&#39;s &quot;Plan Ecoles&quot;."/>
      </p>
      <p>
        <asp:LinkButton ID="fraMore" runat="server" Text="More details »" meta:resourcekey="moreInfo" CssClass="btn btn-default" PostBackUrl="~/en/Classes.aspx"  />
      </p>
    </div>
  </div>

  <br />
  <h1>
    <asp:Literal ID="latestNews" meta:resourcekey="latestNews" runat="server" Text="Latest news" />
  </h1>
  <asp:Repeater ID="FormView1" runat="server">
    <ItemTemplate>
      <div class="yellow box">
        <h2>
          <asp:HyperLink NavigateUrl='<%# Bind("URL") %>' ID="BlogTitleLabel" runat="server"
            Text='<%# Bind("Title") %>' /></h2>
        <asp:Literal ID="FrenchLabel" runat="server" Text='<%# Bind("Description") %>' />
      </div>
    </ItemTemplate>
    <AlternatingItemTemplate>
      <div class="purple box">
        <h2>
          <asp:HyperLink NavigateUrl='<%# Bind("URL") %>' ID="BlogTitleLabel" runat="server"
            Text='<%# Bind("Title") %>' /></h2>
        <asp:Label ID="FrenchLabel" runat="server" Text='<%# Bind("Description") %>' />
      </div>
    </AlternatingItemTemplate>
  </asp:Repeater>
</asp:Content>
