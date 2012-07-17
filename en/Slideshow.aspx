<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Slideshow.aspx.cs" MasterPageFile="~/masterpage.master" Inherits="baby_year3_4_Default"%>

<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">

   <table width="100%">
  <tr>
    <td align="left" width="50%">
    <asp:linkbutton id="cmdPrev" runat="server" text=" << Previous " />
    </TD>
    <td align="right" width="50%">
      <asp:linkbutton id="cmdNext" runat="server" text=" Next >> "/>
    </TD>
  </tr>
  <tr>
  <td align="center" colspan="2">
      <asp:image id="imgLarge" name="imgLarge" runat="server" 
	      CssClass="imgL"  EnableViewState="False" />  
	      </td></tr> 
	      <tr>
	      <td align="center" colspan="2">
<asp:Label id="imgDesc" runat="server"/>
<div id="firstDiv" name="firstDiv"><asp:Label id="firstDesc" runat="server" /></div>
    </td>
  </tr>
  </table>

</asp:Content>
