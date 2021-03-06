<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Inherits="LocalizedPage" Title="La Marelle - Lesson dates" culture="auto" meta:resourcekey="PageRes" uiculture="auto" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1><asp:Literal ID="litTitle" runat="server" Text="Lesson Dates" meta:resourcekey="litTitle" /></h1>

  <asp:Literal ID="intro" runat="server" Text="Here are the dates for the next few months:" meta:resourcekey="intro" />
    
  <p align="center">
    <iframe src="https://www.google.com/calendar/embed?title=La%20Marelle's%20Calendar&amp;showTz=0&amp;height=600&amp;wkst=2&amp;bgcolor=%23FFFFFF&amp;src=orr4mc5s8h0epm1bdilor249us%40group.calendar.google.com&amp;color=%232F6309&amp;src=isj4hvqi36fvnm70tcdf5pn4ak%40group.calendar.google.com&amp;color=%23333333&amp;src=lamarelle.dartford%40gmail.com&amp;color=%23A32929&amp;src=en.uk%23holiday%40group.v.calendar.google.com&amp;color=%235A6986&amp;ctz=Europe%2FLondon" style="margin-top:20px; border-width:0 " width="700" height="600" frameborder="0" scrolling="no"></iframe>
  </p>

</asp:Content>

