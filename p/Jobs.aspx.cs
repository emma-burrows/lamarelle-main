using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;

public partial class en_Jobs : LocalizedPage
{
  /// <summary>
  /// Compile the contents of the form into an email body.
  /// </summary>
  /// <returns></returns>
  private StringBuilder getBody()
  {
    //Make body text
    StringBuilder sbBody = new StringBuilder();
    //Contact details
    sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>");

    sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br /><br/>");
    sbBody.Append(txtComment.Text.Replace(Environment.NewLine, "<br/>"));
    return sbBody;
  }

  protected void btnEnvoyer_Click(object sender, EventArgs e)
  {
    if (Page.IsValid)
    {
      try
      { 
        String message = "";
        if (CVUpload.HasFile)
        {
          CVUpload.SaveAs(Server.MapPath("../_files") + "\\" + CVUpload.FileName);
          System.Net.Mail.Attachment ma = new System.Net.Mail.Attachment(Server.MapPath("../_files") + "\\" + CVUpload.FileName);
          message = SendEmail.send(txtEmail.Text, txtNom.Text, getBody(), ma);
        }
        else
        {
          message = SendEmail.send(txtEmail.Text, txtNom.Text, getBody());
        }
        labResult.Text = "<div class='alert alert-success'>" + message + "</div>";
        MainText.Visible = false;
      }
      catch (Exception ex)
      {
        labResult.Text = "<div class='alert alert-danger'>" + ex.Message.ToString() + "</div>";
      }
    }
  }
}