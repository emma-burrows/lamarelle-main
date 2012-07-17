<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Contact Us" %>

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
      msg.From = txtEmail.Text;
      msg.To = "hasinaharris1@hotmail.com";
      msg.Cc = "emma@eburrows.co.uk";
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
   <tm:dynamicheading id="Dynamicheading01" text="Contact Us" headingstyle="Cursif" runat="server" />

<p>For any questions, please call us on <strong>07954 585 601</strong>, or fill in the following form :</p>

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

<p>You can also send any correspondance to 5 Eynsford Road, Greenhithe DA9 9HB.</p>
<p>The above address is for post only - lessons and registration days take place at 
Fleetdown Primary School in Dartford (<a href="Classes.aspx"> see Classes</a>) and other activities take place where stated on their web page.</p>

</asp:Content>

