<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="About La Marelle" %>

<script runat="server">

  protected void btnEnvoyer_Click(object sender, EventArgs e)
  {
    string eventName = "Mardi Gras";
    
    if (Page.IsValid)
    {
      //get checkboxlist contents
      string children = "";
      foreach (ListItem child in cbAges.Items)
      {
        if (child.Selected == true)
          children = children + child.Value + ", ";
      }

      
      //Make body text
      StringBuilder sbBody = new StringBuilder();
      //Contact details
      sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>");

      sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br />");

      sbBody.Append("<b>Adultes:</b> " + Adultes.Text + "<br />");
      sbBody.Append("<b>Enfants:</b> " + Enfants.Text + "<br />");

      
      sbBody.Append("<b>Can come:</b> " + rbAttendance.SelectedValue + "<br />");
      sbBody.Append("<b>Children ages:</b> " + children + "<br />");
      
      sbBody.Append("<b>Comment:</b> " + txtComment.Text);

      //Make message
      System.Web.Mail.SmtpMail.SmtpServer = "localhost";
      System.Web.Mail.MailMessage msg = new System.Web.Mail.MailMessage();
      msg.From = "emma@eburrows.co.uk";
      msg.To = "emma@eburrows.co.uk";
      msg.Subject = eventName + " - " + txtNom.Text;
      msg.BodyFormat = System.Web.Mail.MailFormat.Html;
      msg.Body = sbBody.ToString();

      //Send message
      System.Web.Mail.SmtpMail.Send(msg);
      labResult.Text = "Thank you very much for your reply!";
      if (rbAttendance.SelectedValue == "yes")
      {
        labResult.Text += " We look forward to seeing you on the day - in costume, of course.";
      }
      else
      {
        labResult.Text = " We're sorry to hear you can't make it and hope you will come to our next event.";
      }
      MainText.Visible = false;
    }
  }


  protected void rbAttendance_SelectedIndexChanged(object sender, EventArgs e)
  {

  }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<b><asp:Label ID="labResult" runat="server" /></b>
 
<asp:Panel ID="MainText" runat="server" Width="551px">
   <tm:dynamicheading id="Dynamicheading01" text="RSVP for Mardi-Gras 2009" headingstyle="Cursif" runat="server" />

<p>
  <a href="mardi-gras.htm">Click here for more information about the event...</a></p>
  <p>
    Please fill in the following form to let us know if you're coming to our Mardi-Gras fundraising event on Saturday 28th February 2009:</p>

    <table>
      <tr>
        <td style="width: 279px" valign="top">
          Your name:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtNom" width="302px" runat="server" /></td>
      </tr>
      <tr>
        <td style="width: 279px" valign="top">
          Email:</td>
        <td style="width: 301px" valign="top">
          <asp:TextBox id="txtEmail" width="302px" runat="server" /></td>
      </tr>
      <tr>
        <td style="width: 279px" valign="top"></td>
        <td style="width: 301px" valign="top">
        <asp:RadioButtonList ID="rbAttendance" runat="server" OnSelectedIndexChanged="rbAttendance_SelectedIndexChanged">
          <asp:ListItem Value="yes">Yes, we will attend</asp:ListItem>
          <asp:ListItem Value="no">No, we can't come</asp:ListItem>
        </asp:RadioButtonList></td>
      </tr>
      <tr>
        <td style="width: 279px" valign="top">Num. Adults: <asp:TextBox ID="Adultes" width="50px" runat="server" /></td>
        <td style="width: 301px" valign="top">Num. Children: <asp:TextBox ID="Enfants" width="50px" runat="server" /></td>

      </tr>
      <tr>
        <td style="width: 279px" valign="top">To help us provide the best entertainment, please specify the age ranges of your children:</td>
        <td style="width: 301px" valign="top">
          <asp:CheckBoxList ID="cbAges" runat="server">
            <asp:ListItem Value="0-3">0-3 years</asp:ListItem>
            <asp:ListItem Value="4-6">4-6 years</asp:ListItem>
            <asp:ListItem Value="7-10">7-10 years</asp:ListItem>
            <asp:ListItem Value="over10">over 10 years</asp:ListItem>
          </asp:CheckBoxList></td>
     
      </tr>
      <tr>
        <td style="width: 279px; height: 60px" valign="top">
          Comments:</td>
        <td style="width: 301px; height: 60px" valign="top">
          <asp:TextBox id="txtComment" rows="6" width="303px" runat="server" TextMode="MultiLine"/></td>
      </tr>
    </table>
  <br />
  <asp:Button ID="btnEnvoyer" runat="server" OnClick="btnEnvoyer_Click" Text="Send" />
  <br />
  <br />
</asp:Panel>

</asp:Content>

