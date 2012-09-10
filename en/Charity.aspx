<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Charity" %>

<script runat="server">

  protected void btnEnvoyer_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
      //Make body text
      StringBuilder sbBody = new StringBuilder();
      //Contact details
      sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>");

      sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br />");
      sbBody.Append(txtComment.Text);

      //Make message
      System.Web.Mail.SmtpMail.SmtpServer = "localhost";
      System.Web.Mail.MailMessage msg = new System.Web.Mail.MailMessage();
      msg.From = "emma@eburrows.co.uk";
      msg.To = "emma@eburrows.co.uk";
      msg.Subject = "Contact La Marelle - " + txtNom.Text;
      msg.BodyFormat = System.Web.Mail.MailFormat.Html;
      msg.Body = sbBody.ToString();

      //Send message
      System.Web.Mail.SmtpMail.Send(msg);
      labResult.Text = "Thank you for your email. We will be in touch soon!";
      MainText.Visible = false;
    }
  }
 

</script>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<b><asp:Label ID="labResult" runat="server" /></b>
 
<asp:Panel ID="MainText" runat="server">
   <tm:dynamicheading id="Dynamicheading01" text="The Charity" headingstyle="Cursif" runat="server" />

<p>Founded in 2009, La Marelle (&quot;hopscotch&quot; in French) is a charity registered with 
    the Charity Commission for England and Wales as number 1135186. <a  href="http://www.charitycommission.gov.uk/Showcharity/RegisterOfCharities/CharityWithoutPartB.aspx?RegisteredCharityNumber=1135186&SubsidiaryNumber=0">View La Marelle's entry on the Charity Commission's website</a>.</p>

<p>Its main purpose is to help French-speaking families to pass on their language 
    and culture to their children thanks to a Saturday morning school, similar to
    <a href="http://www.petites-ecoles.co.uk">the ones which exist</a> in other 
    parts of the United Kingdom. The school is supported by the French Embassy&#39;s 
    &quot;Plan Ecoles&quot;, whose purpose is to encourage French lessons aimed at children 
    from a French-speaking background.</p>

<p>La Marelle also has classes for French as a foreign language, as well as an 
    informal café on Saturday mornings. Many parents of children enroled in the 
    school also participate in the <a href="http://francoforum.xooit.com">
    FrancoForum</a> group which encourages contacts between French-speakers outside 
    the school.</p>

<h2>The Trustees</h2>

<p>The charity's trustees currently include:</p>

<ul>
  <li>Emma Burrows - Chair</li>
  <li>Sharon Mensah - Secretary</li>
  <li>Antturya Greenleaf - Treasurer</li>  
  <li>Magda Karafotias - Trustee</li>
  </ul>

    <p>
        In accordance with the rules of the Charity Commission, an annual general 
        meeting is held to present the charity&#39;s achievements to its members, the 
        pupils&#39; parents.</p>
        
        <p><a href="../images/Constitution-Nov09.pdf">View La Marelle's governing document</a></p>

<h2>Contact</h2>

<p>For any questions, please call us on <b>07954 585 601</b>, or fill in the following form :</p>

    <table>
      <tr>
        <td style="width: 110px" valign="top">
          Your name :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNom" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">Email :</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtEmail" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px; height: 60px" valign="top">
          Comments :</td>
        <td style="width: 301px; height: 60px" valign="top">
          <asp:TextBox id="txtComment" rows="6" width="303px" runat="server" TextMode="MultiLine"/></td>
        <td style="width: 87px; height: 60px" valign="top">
        </td>
      </tr>
    </table>
  <br />
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Send" />
  <br />
  <br />
</asp:Panel>

</asp:Content>

