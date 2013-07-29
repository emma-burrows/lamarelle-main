using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Send an email
/// </summary>
public static class  SendEmail
{
  /// <summary>
  /// Sends emails using ScriptMail or returns a formatted message (assumes the presence of Bootstrap CSS classes). 
  /// Throws an exception if the email is invalid or any other error has occurred.
  /// </summary>
  /// <param name="email">The email of the person who filled in the form (used as the reply-to address so the head teacher or secretary can just reply to the email).</param>
  /// <param name="name">The name of the person who filled in the form.</param>
  /// <param name="sbBody">The body of the email, usually compiled from a form.</param>
  /// <returns>A success message in the correct language.</returns>
  public static String send(String email, String name, StringBuilder sbBody, Attachment att)
  {
    String message;
    String servername = HttpContext.Current.Request.Url.Host;
    String lang = HttpContext.Current.Request.Path.Substring(1, 2);

    try
    {

      ContentType mimeType = new System.Net.Mime.ContentType("text/html");

      MailMessage msg = new MailMessage();
      msg.IsBodyHtml = true;
      msg.From = new System.Net.Mail.MailAddress(email);

      // Change mail recipients depending on whether this the test server or the live one
      if (servername == "lamarelle.org.uk")
      {
        msg.To.Add(WebConfigurationManager.AppSettings["DefaultMailRecipient"]);
        msg.CC.Add(WebConfigurationManager.AppSettings["OtherMailRecipients"]);
      }
      else
      {
        msg.To.Add(WebConfigurationManager.AppSettings["AdminMail"]);
      }

      // Add an attachment if supplied
      if (att != null)
      {
        msg.Attachments.Add(att);
      }

      // Pack it all up and send it off
      msg.Subject = "Site La Marelle - " + name;
      msg.Body = sbBody.ToString();

      // Set the host, username and password
      System.Net.Mail.SmtpClient smtp = new SmtpClient("scriptmail.ourwindowsnetwork.com");
      smtp.Credentials = getLogin();

      //Send message
      smtp.Send(msg);

      if (lang == "fr")
      {
        message = "Nous vous remercions de votre message et vous répondrons au plus vite !";
      }
      else
      {
        message = "Thank you for your email. We will be in touch soon!";
      }
    }
    catch (FormatException fe)
    {
      if (lang == "fr")
      {
        message = "Veuiller entrer une adresse email valide pour que nous puissions vous contacter.";
      }
      else
      {
        message = "Please enter a valid email address so we can get in touch with you.";
      }
      throw new Exception(message, fe);
    }
    catch (Exception ex)
    {
      if (lang == "fr")
      {
        message = "Une erreur est survenue; veuillez vérifier vos données ci-dessous et essayer de nouveau, ou contactez-nous au 07954 585 601.";
      }
      else
      {
        message = "An error has occurred, please check your submission and try again, or contact us on 07954 585 601.";
      }
      throw new Exception(message, ex);
    }
    return message;
  }

  /// <summary>
  /// Overload for send() to allow sending a message without an attachment.
  /// </summary>
  /// <param name="email">The email of the person who filled in the form (used as the reply-to address so the head teacher or secretary can just reply to the email).</param>
  /// <param name="name">The name of the person who filled in the form.</param>
  /// <param name="sbBody">The body of the email, usually compiled from a form.</param>
  /// <returns>A success message in the correct language.</returns>
  public static String send(String email, String name, StringBuilder sbBody)
  {
    return send(email, name, sbBody, null);
  }

  /// <summary>
  /// 
  /// </summary>
  /// <returns></returns>
  private static NetworkCredential getLogin()
  {
    NetworkCredential nc = new NetworkCredential();

    string user = WebConfigurationManager.AppSettings["MailUsername"];
    string pwd = WebConfigurationManager.AppSettings["MailPassword"];

    if (!string.IsNullOrEmpty(user) && !string.IsNullOrEmpty(pwd))
    {
      nc.UserName = user;
      nc.Password = pwd;
      return nc;
    }
    else
    {
      return null;
    }
  }
}