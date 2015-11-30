using System;
using System.Text;
using System.Net.Mime;
using System.Net.Mail;

public partial class en_Contact : LocalizedPage
{

  private StringBuilder getBody()
  {
    //Make body text
    StringBuilder sbBody = new StringBuilder();
    //Contact details
    sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>");

    sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br />");
    sbBody.Append(txtComment.Text);

    return sbBody;
  }

  /// <summary>
  /// Send the email. Assumes the presence of a txtEmail and txtNom field.
  /// </summary>
  /// <param name="sender"></param>
  /// <param name="e"></param>
  protected void btnEnvoyer_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
      try
      {
        String message = SendEmail.send(txtEmail.Text, txtNom.Text, getBody());
        labResult.CssClass = "alert alert-success";
        labResult.Text = message;
        MainText.Visible = false;
      }
      catch (Exception ex)
      {
        labResult.CssClass = "alert alert-danger";
        labResult.Text = ex.Message;
      }
    }
  }

}
