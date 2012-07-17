<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - French school for bilingual children Dartford" %>

<script runat="server">
                                
</script>

<asp:Content ContentPlaceHolderID=MenuPlaceHolder runat="server">



</asp:Content>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<b><asp:Label ID="labResult" runat="server" /></b>
 
<asp:Panel width="100%" ID="MainText" runat="server">

      <table>
      <tr>
      <td colspan="2">
        <p align="center"><tm:dynamicheading id="Dynamicheading5" text="Apprendre ²est ²un ²jeu ²d'enfant. " headingstyle="Cursif" runat="server" /></p>
        <p>La Marelle is a French school based in Dartford in North-West Kent. Our staff of native French-speaking teachers offer classes to students of all ages, from tiny tots to adults. Lessons usually take place on Saturday mornings in Dartford. Please click on the links below to find out more on the type of lesson you're looking for.</p></td>
      </tr>


<tr>
    <td width="50%" valign="top" border="1"  style="background-color: #dcdcee; padding: 10px" >
    <tm:dynamicheading id="Dynamicheading1" text="French Lessons" headingstyle="Cursif" runat="server" />
          <p>La Marelle offers French classes and a GCSE preparation course for non-native speakers. All classes are taught by experienced native speakers.<br />
          <ul>
          <li>Classes for all ages starting from 2 years old</li>
          <li>Conversation classes for adults</li>
          <li>Private tuition is also available.</li>
          </ul>
          
          <a href="Contact.aspx">Please contact us</a> if you have any questions or would like to arrange lessons on a different day or time.<br />
                    
          <a href="FrenchClasses.aspx">Click here to see more information on La Marelle's French lessons.</a></p>
    </td>
    <td width="50%" valign="top" border="1" style="background-color: #eedcdc;  padding: 10px"><tm:dynamicheading id="Dynamicheading2" text="School for Bilingual Children" headingstyle="Cursif" runat="server" />
        <p>Since its creation in 2009, La Marelle has provided classes tailored to the needs of children from a French-speaking background.<br />
        This endeavour is supported by the French Embassy's "Plan Ecoles" which aims to increase the provision of French-language education to French-speaking children living in the UK.<br />
        <br />
        <br />
        <a href="Classes.aspx">Read more about La Marelle's classes for French children.</a></p>
    
    </td>
</tr>

<tr>
<td colspan="2" align="center" style="background-color: #dceedc;   padding: 10px"><a href="Dates.aspx">Click here to view term dates for the next few months.</a><br />
Want to join us? <a href="/en/Registration.aspx">Just fill in the enrolment form</a> and we'll be in touch</td>
</tr>
</table>

<br />



</asp:Panel>
  
</asp:Content>

