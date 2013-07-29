using System;
using System.Text;
using System.Net.Mime;
using System.Net.Mail;

public partial class en_Contact : System.Web.UI.Page
{

  private StringBuilder getBody()
  {
    //Make body text
    StringBuilder sbBody = new StringBuilder();
    //Contact details
    sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>");

    sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br />");
    sbBody.Append(txtCommentaires.Text);

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
      labResult.Text = "<p class='text-success'>" + message + "</p>";
      MainText.Visible = false;
    }
    catch (Exception ex)
    {
        labResult.Text = "<p class='text-error'>" + ex.Message + "</p>";
    }

      
    }
  }

}
