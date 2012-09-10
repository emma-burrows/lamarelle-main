<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="en_Default2"  MasterPageFile="~/masterpage.master" Title="La Marelle - French school for bilingual children Dartford"%>


<asp:Content ID="Content1" ContentPlaceHolderID="MenuPlaceHolder" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<b><asp:Label ID="labResult" runat="server" />
  <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    DataObjectTypeName="News" DeleteMethod="DeleteMessage" 
    InsertMethod="InsertContact" OldValuesParameterFormatString="original_{0}" 
    SelectMethod="GetTop5News" TypeName="NewsDataObject" 
    UpdateMethod="UpdateContact"></asp:ObjectDataSource>
  </b>

<asp:Panel width="100%" ID="MainText" runat="server">

    <table width="100%">
    <tr>
    <td colspan="2" >

      <p align="center"><tm:dynamicheading id="Dynamicheading5" text="Apprendre ²est ²un ²jeu ²d'enfant. " headingstyle="Cursif" runat="server" /></p>
      <p>La Marelle is a French school and community centre based in Dartford in North-West Kent. We offer French-language lessons and activities on Saturday mornings:</p></td>
    </tr>
    </table>
    
   <table width="100%" cellpadding="0">
    <tr>
    <td>
    <asp:Repeater ID="FormView1" runat="server" DataSourceID="ObjectDataSource1">
      <ItemTemplate>
        <table  style="background-color: #eedcdc; padding: 10px">
          <tr>
            <td>
              <h3><asp:Label ID="EnglishTitleLabel" runat="server" Text='<%# Bind("EnglishTitle") %>' /></h3>
              <asp:Label ID="EnglishLabel" runat="server" Text='<%# Bind("English") %>' />
            </td>
          </tr>
        </table>
      </ItemTemplate>
      <AlternatingItemTemplate>
        <table  style="background-color: #dcdcee; padding: 10px">
          <tr>
            <td>
              <h3><asp:Label ID="EnglishTitleLabel" runat="server" Text='<%# Bind("EnglishTitle") %>' /></h3>
              <asp:Label ID="EnglishLabel" runat="server" Text='<%# Bind("English") %>' />
            </td>
          </tr>
        </table>
      </AlternatingItemTemplate>
    </asp:Repeater>
    </td>
    </tr>
    <tr>
      <td border="1" colspan="2" style="background-color: #dcdcee; padding: 10px" 
        valign="top">
        <img align="baseline" alt="Frog" height="50px" src="../images/frog.png" 
          width="50px" /><tm:dynamicheading ID="Dynamicheading1" runat="server" 
          headingstyle="Cursif" text="French Lessons" />
        <p>
          French classes and a GCSE preparation course for non-native speakers. All 
          classes are taught by teachers whose mother tongue is French.</p>
        <ul>
          <li>Classes for all ages starting from 3 years old</li>
          <li>Conversation classes for adults</li>
          <li>Private tuition is also available.</li>
        </ul>
        <p align="center">
          <a href="FrenchClasses.aspx">More information</a> || <a href="Registration.aspx">
          Contact us</a> || <a href="Dates.aspx">See our lesson dates</a></p>
      </td>
     <tr>
       <td border="1" colspan="2" style="background-color: #eedcdc;  padding: 10px" 
         valign="top" width="100%">
         <img align="baseline" alt="Ladybird" height="50px" src="../images/Ladybird.png" 
           width="50px" /><tm:dynamicheading ID="Dynamicheading2" runat="server" 
           headingstyle="Cursif" text="School for French Children" />
         <p>
           Since its creation in 2009, La Marelle has provided classes tailored to the 
           needs of children from a French-speaking background.<br />
           This endeavour is supported by the French Embassy&#39;s &quot;Plan Ecoles&quot; which aims to 
           increase the provision of French-language education to French-speaking children 
           living in the UK.<br />
         </p>
         <p align="center">
           <a href="Classes.aspx">More information</a> || <a href="Registration.aspx">
           Contact us</a> || <a href="Dates.aspx">See our lesson dates</a></p>
       </td>
     </tr>
     <tr>
       <td border="1" colspan="2" style="background-color: #dceedc;  padding: 10px" 
         valign="top" width="100%">
         <img align="baseline" alt="Livre" height="50px" 
           src="../images/large_open_book.png" width="50px" /><tm:dynamicheading 
           ID="Dynamicheading3" runat="server" headingstyle="Cursif" 
           text="Other Activities" />
         <p>
           We also organise the following activities on Saturday mornings during term time:</p>
         <ul>
           <li>Parent and baby group: come and have a coffee and conversation with our 
             French-speaking parents while your children aged 0 to 2 play with new friends. 
             (Contribution: £1/family)</li>
           <li>Café for grown-ups with Internet access</li>
         </ul>
         <p align="center">
           <a href="FrenchClasses.aspx#location">Come and see us one Saturday morning!</a>.</p>
       </td>
     </tr>
     <tr>
       <td>
         &nbsp;</td>
       <td>
         &nbsp;</td>
     </tr>
     <tr>
       <td align="center" colspan="2">
         <a href="http://francoforum.xooit.co.uk">
         <img height="60px" src="../images/francoforum.jpg" width="200px" /></a><br />
         Meet other French-speakers in Kent thanks to the
         <a href="http://francoforum.xooit.co.uk">Francoforum</a>.</td>
     </tr>
</table>

<br />
</asp:Panel>

</asp:Content>