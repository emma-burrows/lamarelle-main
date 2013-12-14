using System;
using System.Text;
using System.Net.Mime;
using System.Net.Mail;

public partial class en_Registration : System.Web.UI.Page
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
    sbBody.Append("<b>Nom:</b> " + txtNom.Text + "<br/>" +
          "<b>Prénom:</b> " + txtPrenom.Text + "<br/>" +
          "<b>Adresse:</b> " + txtAdresse.Text + "<br/>");
    if (!string.IsNullOrEmpty(txtTel1.Text))
    {
      sbBody.Append("<b>Téléphone:</b> " + txtTel1.Text + " (" + selTel1.SelectedValue + ")" + "<br/>");
    };
    if (!string.IsNullOrEmpty(txtTel2.Text))
    {
      sbBody.Append("<b>Téléphone:</b> " + txtTel2.Text + " (" + selTel2.SelectedValue + ")" + "<br/>");
    };

    sbBody.Append("<b>Email:</b> " + txtEmail.Text + "<br />");
    sbBody.Append("<b>Nationalité:</b> " + txtNationalite.Text + "<br />");

    //Children details
    sbBody.Append("<br/><u><b>Enfants</b></u><br/>");

    sbBody.Append(txtPrenomEnfant1.Text + " " + txtNomEnfant1.Text.ToUpper() + " (" + txtDateEnfant1.Text + " - " + txtNatEnfant1.Text + " - " + dlSexeEnfant1.Text + ")<br/>");
    if (!string.IsNullOrEmpty(txtPrenomEnfant2.Text))
    {
        sbBody.Append(txtPrenomEnfant2.Text + " " + txtNomEnfant2.Text.ToUpper() + " (" + txtDateEnfant2.Text + " - " + txtNatEnfant2.Text + " - " + dlSexeEnfant2.Text + ")<br/>");
    };
    if (!string.IsNullOrEmpty(txtPrenomEnfant3.Text))
    {
        sbBody.Append(txtPrenomEnfant3.Text + " " + txtNomEnfant3.Text.ToUpper() + " (" + txtDateEnfant3.Text + " - " + txtNatEnfant3.Text + " - " + dlSexeEnfant3.Text + ")<br/>");
    };


    //Knowledge
    sbBody.Append("<br/>");
    if (cbBilinguisme.SelectedIndex > -1)
    {
      sbBody.Append("<br/><b>Raison du bilinguisme:</b> ");
      for (int i = 0; i < cbBilinguisme.Items.Count; i++)
      {
        if (cbBilinguisme.Items[i].Selected == true)
          sbBody.Append(cbBilinguisme.Items[i].Text + " ");
      };
    };

    if (cbNiveau.SelectedIndex > -1)
    {
      sbBody.Append("<br/><b>Niveau des enfants:</b> ");
      for (int i = 0; i < cbNiveau.Items.Count; i++)
      {
        if (cbNiveau.Items[i].Selected == true)
          sbBody.Append(cbNiveau.Items[i].Text + " ");
      };
    };
    sbBody.Append("<br/><b>Langues:</b> " + txtLangues.Text);

    sbBody.Append("<br/><br/><b>Source:</b> " + ddlSource.SelectedValue + " (" + Precisions.Text + ")");

    sbBody.Append("<br/><br/><b>Commentaires:</b> " + txtCommentaires.Text.Replace("\n", "<br/>"));

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
        labResult.Text = "<div class='alert alert-success'>" + message + "</div>";
        MainText.Visible = false;
      }
      catch (Exception ex)
      {
        labResult.Text = "<div class='alert alert-danger'>" + ex.Message + "</div>";
      }

    }

  }

}
