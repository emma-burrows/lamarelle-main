<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/en/Registration.aspx.cs" Inherits="en_Registration" MasterPageFile="~/masterpage.master" Title="La Marelle - Enrollment form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:Label ID="labResult" runat="server" />
 
<asp:Panel width="100%" ID="MainText" runat="server">
   
   <h1>Enrolment form</h1>
  
<a name="form"></a>
  
  <p>To enrol your children or get more details, please fill in the following form 
    and we will be in touch by email as soon as possible:</p>
        <br />

      <strong>Your Details:</strong>
      <br />

    <table>
      <tr>
        <td style="width: 110px" valign="top">
          Family name:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNom" width="302px" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtNom" runat="server" ErrorMessage="Please enter your family name"></asp:RequiredFieldValidator>
        </td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">
          First Name:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtPrenom" style="width: 302px" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txtPrenom" runat="server" ErrorMessage="Please enter your first name"></asp:RequiredFieldValidator>
        </td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px; height: 60px" valign="top">
          Address:</td>
        <td style="width: 301px; height: 60px" valign="top">
          <asp:TextBox id="txtAdresse" rows="3" width="303px" runat="server"/></td>
        <td style="width: 87px; height: 60px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">
          Phone 1:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtTel1" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        <asp:DropDownList ID="selTel1" runat="server" width="103px">
          <asp:ListItem>daytime</asp:ListItem>
          <asp:ListItem>evenings</asp:ListItem>
        </asp:DropDownList>
   
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">
          Phone 2:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtTel2" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        <asp:DropDownList ID="selTel2" runat="server" width="103px">
          <asp:ListItem>daytime</asp:ListItem>
          <asp:ListItem>evenings</asp:ListItem>
        </asp:DropDownList>
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">Email:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtEmail" width="302px" runat="server" />
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtEmail"
            ErrorMessage="Please enter an email address so we can contact you."></asp:RequiredFieldValidator>
        </td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">Nationalities:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNationalite" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
    </table>
  <strong>
    <br />
    Your Children:</strong><br />
  <table width="600">
    <tr>
      <td style="width: 11px">
      </td>
      <td style="width: 145px">
        <strong>Surname</strong></td>
      <td style="width: 145px">
        <strong>First name</strong></td>
      <td style="width: 118px">
        <strong>Date of birth (dd/mm/yyyy)</strong></td>
      <td style="width: 120px">
          <b>Sexe</b></td>
      <td style="width: 120px">
        <strong>Nationality</strong></td>
    </tr>
    <tr>
      <td style="width: 11px">
1.</td>
      <td style="width: 150px">
        <asp:TextBox id="txtNomEnfant1" width="143px" runat="server" /></td>
      <td style="width: 150px">
        <asp:TextBox id="txtPrenomEnfant1" width="145px" runat="server" /></td>
      <td style="width: 118px">
        <asp:TextBox id="txtDateEnfant1" width="118px" runat="server" /></td>
      <td style="width: 40px">
          <asp:DropDownList ID="dlSexeEnfant1" runat="server">
              <asp:ListItem>M</asp:ListItem>
              <asp:ListItem>F</asp:ListItem>
          </asp:DropDownList>
        </td>
       <td style="width: 120px">
        <asp:TextBox id="txtNatEnfant1" width="120px" runat="server" /></td>
    </tr>
    <tr>
      <td style="width: 11px">
2.</td>
      <td style="width: 143px">
        <asp:TextBox id="txtNomEnfant2" width="143px" runat="server" /></td>
      <td style="width: 150px">
        <asp:TextBox id="txtPrenomEnfant2" width="145px" runat="server" /></td>
      <td style="width: 118px">
        <asp:TextBox id="txtDateEnfant2" width="118px" runat="server" /></td>
       <td style="width: 40px">
           <asp:DropDownList ID="dlSexeEnfant2" runat="server">
               <asp:ListItem>M</asp:ListItem>
               <asp:ListItem>F</asp:ListItem>
           </asp:DropDownList>
        </td>
        <td style="width: 120px">
        <asp:TextBox id="txtNatEnfant2" width="120px" runat="server" /></td>
   </tr>
    <tr>
      <td style="width: 11px">
3.</td>
      <td style="width: 143px">
        <asp:TextBox id="txtNomEnfant3" width="143px" runat="server" /></td>
      <td style="width: 150px">
        <asp:TextBox id="txtPrenomEnfant3" width="145px" runat="server" /></td>
      <td style="width: 118px">
        <asp:TextBox id="txtDateEnfant3" width="118px" runat="server" /></td>
       <td style="width: 40px">
           <asp:DropDownList ID="dlSexeEnfant3" runat="server">
               <asp:ListItem>M</asp:ListItem>
               <asp:ListItem>F</asp:ListItem>
           </asp:DropDownList>
        </td>
       <td style="width: 120px">
        <asp:TextBox id="txtNatEnfant3" width="120px" runat="server" /></td>
    </tr>
  </table>
  <br />
  <strong>Reason for bilingualism:<br /></strong>
    <asp:CheckBoxList ID="cbBilinguisme" runat="server" RepeatColumns="2" Width="621px">
      <asp:ListItem Value="Parent(s) francophone(s)">French-speaking parent(s)</asp:ListItem>
      <asp:ListItem Value="Sejour prolonge dans pays francophone">Prolonged stay in French-speaking country</asp:ListItem>
      <asp:ListItem Value="Cherche cours FLE">Not native speakers (Seeking French lessons)</asp:ListItem>
    </asp:CheckBoxList><br />

  <table>
    <tr>
      <td style="width: 217px">
      </td>
      <td style="width: 371px">
      </td>
    </tr>
    <tr>
      <td style="width: 217px">
        <strong>Languages spoken at home:</strong></td>
      <td style="width: 371px">
        <asp:TextBox id="txtLangues" style="width: 370px" runat="server" /></td>
    </tr>
  </table>
  <br />
  <strong>
Children's French ability:<br />
  </strong>
  <asp:CheckBoxList ID="cbNiveau" runat="server" RepeatColumns="4" Width="370px">
    <asp:ListItem>Understanding</asp:ListItem>
    <asp:ListItem>Speaking</asp:ListItem>
    <asp:ListItem>Reading</asp:ListItem>
    <asp:ListItem>Writing</asp:ListItem>
  </asp:CheckBoxList><br />
  
    <strong>
How did you hear about La Marelle ?<br />
  </strong>

<table>
    <tr>
      <td style="width: 217px">
    <asp:DropDownList ID="ddlSource" runat="server" width="203px">
          <asp:ListItem>friends/colleagues</asp:ListItem>
<asp:ListItem>email (pls specify sender)</asp:ListItem>
<asp:ListItem>web (pls specify site)</asp:ListItem>
<asp:ListItem>poster (pls specify location)</asp:ListItem> 
<asp:ListItem>business card</asp:ListItem>
<asp:ListItem>press article</asp:ListItem>
<asp:ListItem>other (pls specify)</asp:ListItem>
        </asp:DropDownList>
       </td>
      <td style="width: 371px">
        <asp:TextBox id="Precisions" style="width: 370px" runat="server" Text="(specify here)"/></td>
    </tr>
</table>
<br />
  <strong>Comments:</strong><br />
  <asp:TextBox id="txtCommentaires" rows="6" width="100%" runat="server" TextMode="MultiLine"/>
  
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Send" /><br />
  <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

  <br /></asp:Panel>

  
</asp:Content>

