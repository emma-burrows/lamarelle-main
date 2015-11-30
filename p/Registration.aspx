<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/p/Registration.aspx.cs" Inherits="en_Registration" MasterPageFile="~/masterpage.master" Title="La Marelle - Enrollment form" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server" CombineScripts="True"></asp:ToolkitScriptManager>
 
  <h1><asp:Literal ID="litTitle" runat="server" Text="Enrolment form" meta:resourcekey="litTitleResource1" /></h1>
  <asp:Label ID="labResult" runat="server" meta:resourcekey="labResultResource1" />
    <asp:Literal ID="extraMessage" runat="server" meta:resourcekey="extraMessage" Visible="false"/>
<asp:Panel width="100%" ID="MainText" runat="server" meta:resourcekey="MainTextResource1" Visible="true">
  <asp:ValidationSummary CssClass="bg-danger" runat="server" meta:resourcekey="ValidationSummaryResource1"></asp:ValidationSummary>
  <a name="form"></a>
  
  <asp:Literal ID="intro" runat="server" meta:resourcekey="introResource1" Text="
  &lt;p&gt;To enrol your children or get more details, please fill in the following form 
    and we will be in touch by email as soon as possible. Note: fields starred with * are required.&lt;/p&gt;"></asp:Literal>
  
  <h2><asp:Literal ID="contactTitle" runat="server" Text="Your details" meta:resourcekey="contactTitleResource1" /></h2>

  <div class="form-group">
    <asp:Label ID="nomLbl" AssociatedControlID="txtNom" runat="server" Text="Your family name:" meta:resourcekey="nomLbl"/>*
    <asp:TextBox id="txtNom" CssClass="form-control" runat="server" AutoCompleteType="LastName" meta:resourcekey="txtNomResource1" />
    <asp:RequiredFieldValidator ID="nomRequired" runat="server" ControlToValidate="txtNom" CssClass="text-danger" Display="Dynamic" ErrorMessage="Please enter your family name" meta:resourcekey="nomRequired"/>
  </div>
  <div class="form-group">
    <asp:Label ID="prenomLbl" AssociatedControlID="txtPrenom" runat="server" Text="Your given or first name: *" meta:resourcekey="prenomLbl"/>*
    <asp:TextBox id="txtPrenom" CssClass="form-control" runat="server" AutoCompleteType="FirstName" meta:resourcekey="txtPrenomResource1" />
    <asp:RequiredFieldValidator ID="prenomRequired" runat="server" ControlToValidate="txtPrenom" CssClass="text-danger" Display="Dynamic" ErrorMessage="Please enter your given name" meta:resourcekey="prenomRequired"/>
  </div>
  <div class="form-group">
    <asp:Label ID="emailLbl" AssociatedControlID="txtEmail" runat="server" Text="Your Email:" meta:resourcekey="emailLbl" />*
    <asp:TextBox id="txtEmail" CssClass="form-control" AutoCompleteType="Email" runat="server" meta:resourcekey="txtEmailResource1" />
    <asp:RequiredFieldValidator ID="emailRequired" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" Display="Dynamic" ErrorMessage="Please enter an email address" meta:resourcekey="emailRequired"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="emailValid"  runat="server" ControlToValidate="txtEmail" CssClass="text-danger" Display="Dynamic"  ErrorMessage="Please enter a valid email address so we can contact you" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" meta:resourcekey="emailValid"/>
  </div>
  <div class="form-group">
    <asp:Label ID="adresseLbl" AssociatedControlID="txtAdresse" runat="server" Text="The full address where the children live:" meta:resourcekey="adresseLbl"/>*
    <asp:TextBox id="txtAdresse" rows="3" CssClass="form-control" runat="server" AutoCompleteType="HomeStreetAddress" TextMode="MultiLine" meta:resourcekey="txtAdresseResource1"/>
    <asp:RequiredFieldValidator ID="adresseRequired" runat="server" ControlToValidate="txtAdresse" CssClass="text-danger" Display="Dynamic" ErrorMessage="Please enter a postal address including town and postcode" meta:resourcekey="adresseRequired"/>
  </div>
  <div class="form-group">
    <asp:Label ID="tel1Lbl" AssociatedControlID="txtTel1" runat="server" Text="Your mobile number:" meta:resourcekey="tel1Lbl"/>
    <asp:TextBox id="txtTel1" CssClass="form-control" runat="server" AutoCompleteType="Cellular" />
    <asp:RequiredFieldValidator ID="tel1Required" runat="server" ControlToValidate="txtTel1" CssClass="text-danger" Display="Dynamic" ErrorMessage="Please enter your mobile number so we can contact you" meta:resourcekey="tel1Required"/>
  </div>
  <div class="form-group">
    <asp:Label ID="tel2Lbl" AssociatedControlID="txtTel2" runat="server" Text="Your landline or work number:" meta:resourcekey="tel2Lbl"/>
    <asp:TextBox id="txtTel2" CssClass="form-control" runat="server" AutoCompleteType="HomePhone" />
  </div>
  <div class="form-group">
    <asp:Label ID="lblNationalite" AssociatedControlID="txtTel1" runat="server" Text="Your nationality(ies):" meta:resourcekey="lblNationalite"/>
    <asp:TextBox id="txtNationalite" CssClass="form-control" runat="server" meta:resourcekey="txtNationaliteResource1" />
  </div>

  <h2><asp:Literal ID="childrenTitle" runat="server" Text="Your Children" meta:resourcekey="childrenTitleResource1" /></h2>
  <h3><asp:Label ID="enfant1Lbl" Text="Child 1." runat="server" meta:resourcekey="enfant1Lbl" /></h3>
  <div class="form-inline">
    <div class="form-group">
      <asp:Label ID="enfant1NomLbl" AssociatedControlID="txtNomEnfant1" runat="server" meta:resourcekey="nomLbl" Text="Family name:" />
      <asp:TextBox id="txtNomEnfant1" CssClass="form-control" runat="server" meta:resourcekey="txtNomEnfant1Resource1" /> 
    </div>
    <div class="form-group">
      <asp:Label ID="enfant1PrenomLbl" AssociatedControlID="txtPrenomEnfant1" runat="server" meta:resourcekey="prenomLbl" Text="First name:" />
      <asp:TextBox id="txtPrenomEnfant1" CssClass="form-control" runat="server" meta:resourcekey="txtPrenomEnfant1Resource1" />
    </div>
    <div class="form-group">
      <asp:Label ID="sexeEnfant1Lbl" AssociatedControlID="dlSexeEnfant1" runat="server" meta:resourcekey="sexeEnfantLbl" Text="Gender:" />
      <asp:DropDownList ID="dlSexeEnfant1" CssClass="form-control" runat="server" meta:resourcekey="dlSexeEnfant1Resource1">
        <asp:ListItem meta:resourcekey="ListItemResource1">M</asp:ListItem>
        <asp:ListItem meta:resourcekey="ListItemResource2">F</asp:ListItem>
      </asp:DropDownList>
    </div>
  </div>
  <div class="form-inline">
    <div class="form-group">
      <asp:Label ID="dateEnfantLbl" AssociatedControlID="txtDateEnfant1" runat="server" meta:resourcekey="dateLbl" Text="Date of birth:&nbsp;" />
      <asp:TextBox ID="txtDateEnfant1" CssClass="form-control" runat="server" meta:resourcekey="txtDateEnfant1Resource1" />
      <asp:CalendarExtender ID="DateNaissanceCalendarExtender" runat="server" TargetControlID="txtDateEnfant1" Format="dd/MM/yyyy" Enabled="True" />
    </div>
    <div class="form-group">
      <asp:Label ID="enfant1NatLbl" AssociatedControlID="txtNatEnfant1" runat="server" meta:resourcekey="lblNationalite" Text="Nationality:" />
      <asp:TextBox id="txtNatEnfant1" CssClass="form-control" runat="server" meta:resourcekey="txtNatEnfant1Resource1" />
    </div>
  </div>

  <h3><asp:Label ID="enfant2Lbl" Text="Child 2." runat="server" meta:resourcekey="enfant2Lbl" /></h3>
  <div class="form-inline">
    <div class="form-group">
      <asp:Label ID="enfant2NomLbl" AssociatedControlID="txtNomEnfant2" runat="server" meta:resourcekey="nomLbl" Text="Family name:" />
      <asp:TextBox id="txtNomEnfant2" CssClass="form-control" runat="server" placeholder="Nom" meta:resourcekey="txtNomEnfant2Resource1" /> 
    </div>
    <div class="form-group">
      <asp:Label ID="enfant2PrenomLbl" AssociatedControlID="txtPrenomEnfant2" runat="server" meta:resourcekey="prenomLbl" Text="First name:" />
      <asp:TextBox id="txtPrenomEnfant2" CssClass="form-control" runat="server" meta:resourcekey="txtPrenomEnfant2Resource1" />
    </div>
    <div class="form-group">
      <asp:Label ID="sexeEnfant2Lbl" AssociatedControlID="dlSexeEnfant2" runat="server" meta:resourcekey="sexeEnfantLbl" Text="Gender:" />
      <asp:DropDownList ID="dlSexeEnfant2" CssClass="form-control" runat="server" meta:resourcekey="dlSexeEnfant2Resource1">
        <asp:ListItem meta:resourcekey="ListItemResource3">M</asp:ListItem>
        <asp:ListItem meta:resourcekey="ListItemResource4">F</asp:ListItem>
      </asp:DropDownList>
    </div>
  </div>
  <div class="form-inline">
    <div class="form-group">
      <asp:Label ID="Label1" AssociatedControlID="txtDateEnfant2" runat="server" meta:resourcekey="dateLbl" Text="Birthdate:" />
      <asp:TextBox ID="txtDateEnfant2" CssClass="form-control" runat="server" meta:resourcekey="txtDateEnfant2Resource1" />
      <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtDateEnfant2" Format="dd/MM/yyyy" Enabled="True" />
    </div>
    <div class="form-group">
      <asp:Label ID="enfant2NatLbl" AssociatedControlID="txtNatEnfant2" runat="server" meta:resourcekey="lblNationalite" Text="Nationality:" />
      <asp:TextBox id="txtNatEnfant2" CssClass="form-control" runat="server" meta:resourcekey="txtNatEnfant2Resource1" />
    </div>
  </div>

  <h3><asp:Label ID="enfant3Lbl" Text="Child 3." runat="server" meta:resourcekey="enfant3Lbl" /></h3>
  <div class="form-inline">
    <div class="form-group">
      <asp:Label ID="enfant3NomLbl" AssociatedControlID="txtNomEnfant3" runat="server" meta:resourcekey="nomLbl" Text="Family name:" />
      <asp:TextBox id="txtNomEnfant3" CssClass="form-control" runat="server" placeholder="Nom" meta:resourcekey="txtNomEnfant3Resource1" /> 
    </div>
    <div class="form-group">
      <asp:Label ID="enfant3PrenomLbl" AssociatedControlID="txtPrenomEnfant3" runat="server" meta:resourcekey="prenomLbl" Text="First name:" />
      <asp:TextBox id="txtPrenomEnfant3" CssClass="form-control" runat="server" meta:resourcekey="txtPrenomEnfant3Resource1" />
    </div>
    <div class="form-group">
      <asp:Label ID="sexeEnfant3Lbl" AssociatedControlID="dlSexeEnfant3" runat="server" meta:resourcekey="sexeEnfantLbl" Text="Gender:" />
      <asp:DropDownList ID="dlSexeEnfant3" CssClass="form-control" runat="server" meta:resourcekey="dlSexeEnfant3Resource1">
        <asp:ListItem meta:resourcekey="ListItemResource5">M</asp:ListItem>
        <asp:ListItem meta:resourcekey="ListItemResource6">F</asp:ListItem>
      </asp:DropDownList>
    </div>
  </div>
  <div class="form-inline">
    <div class="form-group">
      <asp:Label ID="Label2" AssociatedControlID="txtDateEnfant3" runat="server" meta:resourcekey="dateLbl" Text="Birthdate:" />
      <asp:TextBox ID="txtDateEnfant3" CssClass="form-control" runat="server" meta:resourcekey="txtDateEnfant3Resource1" />
      <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtDateEnfant3" Format="dd/MM/yyyy" Enabled="True" />
    </div>
    <div class="form-group">
      <asp:Label ID="enfant3NatLbl" AssociatedControlID="txtNatEnfant3" runat="server" meta:resourcekey="lblNationalite" Text="Nationality:" />
      <asp:TextBox id="txtNatEnfant3" CssClass="form-control" runat="server" meta:resourcekey="txtNatEnfant3Resource1" />
    </div>
  </div>

  <h2><asp:Literal ID="furtherInfo" Text="Further information about your family" runat="server" meta:resourcekey="furtherInfoResource1" /></h2>

  <strong><asp:Literal ID="bilinguismeLbl" Text="Connection to French language:" runat="server" meta:resourcekey="bilinguismeLblResource1" /></strong>
  <div class="form-group">
    <asp:CheckBoxList ID="cbBilinguisme" CssClass="checkbox" runat="server" RepeatColumns="1" meta:resourcekey="cbBilinguismeResource1">
      <asp:ListItem Value="Parent(s) francophone(s)" Text="French-speaking parent(s)" meta:resourcekey="bilinguismeFrancophone" />
      <asp:ListItem Value="Sejour prolonge dans pays francophone" Text="Prolonged stay in French-speaking country"  meta:resourcekey="bilinguismeSejour" />
      <asp:ListItem Value="Cherche cours FLE" Text="Not native speakers (Seeking French lessons)"  meta:resourcekey="bilinguismeFLE" />
    </asp:CheckBoxList>
  </div>

  <strong><asp:Literal ID="abilityLbl" Text="Children's French ability:" runat="server" meta:resourcekey="abilityLblResource1" /></strong>
  <asp:CheckBoxList ID="cbNiveau" CssClass="checkbox"  runat="server" RepeatColumns="1" meta:resourcekey="cbNiveauResource1">
    <asp:ListItem Text="Understanding" meta:resourcekey="understanding" />
    <asp:ListItem Text="Speaking" meta:resourcekey="speaking" />
    <asp:ListItem Text="Reading" meta:resourcekey="reading" />
    <asp:ListItem Text="Writing" meta:resourcekey="writing" />
  </asp:CheckBoxList>

  <div class="form-group">
    <asp:Label ID="languagesLbl" AssociatedControlID="txtLangues" runat="server" meta:resourcekey="languagesLbl" Text="Languages spoken at home:" />
    <asp:TextBox id="txtLangues" CssClass="form-control" runat="server" meta:resourcekey="txtLanguesResource1" />
  </div>
   
  <asp:Label ID="sourceLbl" AssociatedControlID="ddlSource" runat="server" meta:resourcekey="sourceLbl" Text="How did you hear about La Marelle?" />
  <div class="form-inline">
    <div class="form-group">
      <asp:DropDownList ID="ddlSource" CssClass="form-control" runat="server" style="min-width: 200px" meta:resourcekey="ddlSourceResource1">
        <asp:ListItem Text="friends/colleagues"  meta:resourcekey="sourceAmi" />
        <asp:ListItem Text="email (pls specify sender)"  meta:resourcekey="sourceEmail" />
        <asp:ListItem Text="web (pls specify site)"  meta:resourcekey="sourceWeb" />
        <asp:ListItem Text="poster (pls specify location)" meta:resourcekey="sourcePoster" /> 
        <asp:ListItem Text="business card" meta:resourcekey="sourceBusinessCard" />
        <asp:ListItem Text="press article" meta:resourcekey="sourcePress" />
        <asp:ListItem Text="other (please specify)" meta:resourcekey="sourceOther" />
      </asp:DropDownList>
      <asp:TextBox id="Precisions" CssClass="form-control" runat="server" Text="(specify here)" meta:resourcekey="precisions"/>
    </div>
  </div>

  <div class="form-group">
    <asp:Label ID="lblComment" AssociatedControlID="txtComment" runat="server" Text="Comments:" meta:resourcekey="lblComment" />
    <asp:TextBox id="txtComment" CssClass="form-control" rows="6" runat="server" TextMode="MultiLine" meta:resourcekey="txtComment"/>
  </div>
  <div class="form-group">
    <asp:Button ID="btnEnvoyer" CssClass="btn btn-primary" runat="server" OnClick="btnEnvoyer_Click" Text="Send" meta:resourcekey="btnEnvoyer" />
  </div>
  </asp:Panel>
</asp:Content>

