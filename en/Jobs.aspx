<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Jobs" %>


<script runat="server">

  protected void btnEnvoyer_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {

      
      //Make body text
      StringBuilder sbBody = new StringBuilder();
      //Contact details
      sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>");

      sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br /><br/>");
      sbBody.Append(txtComment.Text);

      //Make message
      System.Web.Mail.SmtpMail.SmtpServer = "localhost";
      System.Web.Mail.MailMessage msg = new System.Web.Mail.MailMessage();
      msg.From = txtEmail.Text;
      msg.To = "hasinaharris1@hotmail.com";
      msg.Cc = "site@lamarelle.org.uk";
      msg.Subject = "Emploi La Marelle - " + txtNom.Text;
      msg.BodyFormat = System.Web.Mail.MailFormat.Html;
      msg.Body = sbBody.ToString();

      if (CVUpload.HasFile)
        try
        {
            CVUpload.SaveAs(Server.MapPath("../_files") + "\\" + CVUpload.FileName);
            System.Web.Mail.MailAttachment ma = new System.Web.Mail.MailAttachment(Server.MapPath("../_files") + "\\" + CVUpload.FileName);
            msg.Attachments.Add(ma);
            labResult.Text = "Thank you for your message and the CV. We will be in touch soon.";
        }
        catch (Exception ex)
        {
          labResult.Text = "ERROR: " + ex.Message.ToString();
        }
      else
        labResult.Text = "Thank you for your message. We will be in touch soon.";
        
        
      //Send message
      System.Web.Mail.SmtpMail.Send(msg);
      MainText.Visible = false;
    }
  }
 

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<b><asp:Label ID="labResult" runat="server" /></b>
 
<asp:Panel ID="MainText" runat="server">
   <h1>La Marelle Jobs</h1>

<h2>French-speaking teachers, assistants and volunteers</h2>
<p>La Marelle is a busy, thriving charity and we are always looking for new people to help us
achieve our aims. In particular, we welcome applications from:</p>

<ul>
  <li>Teachers and assistants whose mother tongue is French</li>
  <li>Volunteers to help with administrative work like advertising and fundraising</li>
</ul>

<p>All positions are based at <a href="https://maps.google.co.uk/?q=La+Marelle+DA2+6JX" target="_blank"
            title="View our exact location on Google Maps">Fleetdown Primary School</a> in Datford, North-West Kent (40 minutes from central London). We give lessons on 30 Saturday mornings a year.</p>
 <p>
For further information, please send us your CV (Word or PDF only) and cover letter in French using the following form:</p>

    <table>
      <tr>
        <td style="width: 110px" valign="top">
          Your name:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNom" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">Your email:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtEmail" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px; height: 60px" valign="top">
          Your letter:</td>
        <td style="width: 301px; height: 60px" valign="top">
          <asp:TextBox id="txtComment" rows="10" width="303px" runat="server" TextMode="MultiLine"/></td>
        <td style="width: 87px; height: 60px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px; height: 60px" valign="top">
          Your CV (Word or PDF) :</td>
        <td style="width: 301px; height: 60px" valign="top">
          <asp:FileUpload ID="CVUpload" runat="server" />
        <td style="width: 87px; height: 60px" valign="top">
        </td>
      
      </tr>
    </table>
  <br />
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Envoyer" />
  <br />
  <br />
</asp:Panel>

</asp:Content>

