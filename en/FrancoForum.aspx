<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="FrancoForum - French-speaking network in Kent" %>

<script runat="server">

  protected void btnEnvoyer_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
      //Make body text
      StringBuilder sbBody = new StringBuilder();
      //Contact details
      sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>" +
            "<b>Prénom:</b> " + txtPrenom.Text + "<br/>");

      sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br />");
      sbBody.Append(txtComment.Text);

      //Make message
      System.Web.Mail.SmtpMail.SmtpServer = "localhost";
      System.Web.Mail.MailMessage msg = new System.Web.Mail.MailMessage();
      msg.From = "emma@eburrows.co.uk";
      msg.To = "emma@eburrows.co.uk";
      msg.Subject = "FrancoForum - " + txtPrenom.Text + " " + txtNom.Text.ToUpper();
      msg.BodyFormat = System.Web.Mail.MailFormat.Html;
      msg.Body = sbBody.ToString();

      //Send message
      System.Web.Mail.SmtpMail.Send(msg);
      labResult.Text = "Thank you for your email. Emma will contact you shortly!";
      MainText.Visible = false;
    }
  }
  
  protected void Page_Load(object sender, EventArgs e)
  {

    if (Request.Cookies["LaMarelleLang"] == null)
    {
      HttpCookie objCookie = new HttpCookie("LaMarelleLang");
      Response.Cookies.Clear();
      Response.Cookies.Add(objCookie);
      objCookie.Values.Add("LaMarelleLang", "en");
      DateTime dtExpiry = DateTime.Now.AddDays(15);
      Response.Cookies["LaMarelleLang"].Expires = dtExpiry;

    }
  }

  protected void lkFrench_Click(object sender, EventArgs e)
  {
    Response.Cookies["LaMarelleLang"].Value = "fr";
    Response.Redirect("~/fr" + Request.FilePath.Substring(Request.FilePath.LastIndexOf("/")));
  }

  protected void lkEnglish_Click(object sender, EventArgs e)
  {
    Response.Cookies["LaMarelleLang"].Value = "en";
    Response.Redirect("~/en" + Request.FilePath.Substring(Request.FilePath.LastIndexOf("/")));
  }
</script>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<b><asp:Label ID="labResult" runat="server" /></b>

<asp:Panel ID="MainText" runat="server">

   <tm:dynamicheading id="Dynamicheading01" text="Meet French-speaking people" headingstyle="Cursif" runat="server" />
  <p>
    If you are a native French speaker and would like to meet other French speakers in North-West Kent, why not join us in the "FrancoForum"? (We welcome FrancoMamans, FrancoPapas, or FrancoAnybodies, in fact!)</p>
  <p>
  Join our free mailing-list to talk to other people in your area, find out about events organised by the French-speaking community, and participate in the group's events if they interest you (dinners, picnics, touristic visits...).
  </p>
  <p>
    Joining up is easy. Fill in the form below and Emma will add you to the YahooGroups list. (You can unsubscribe at any time.)</p>

         <br />

      <strong>Your details:</strong>
      <br />

    <table>
      <tr>
        <td style="width: 110px" valign="top">
          Surname:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNom" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">
          First name:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtPrenom" style="width: 302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px" valign="top">Email:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtEmail" width="302px" runat="server" /></td>
        <td style="width: 87px" valign="top">
        </td>
      </tr>
      <tr>
        <td style="width: 110px; height: 60px" valign="top">
          Comments:</td>
        <td style="width: 301px; height: 60px" valign="top">
          <asp:TextBox id="txtComment" rows="3" width="303px" runat="server" TextMode="MultiLine"/></td>
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
 
