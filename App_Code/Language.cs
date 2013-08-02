using System;
using System.Web;

/// <summary>
/// Send an email
/// </summary>
public static class Utils
{
  public static string getLanguage()
  {
    string Lang = "en";
    HttpRequest Request = HttpContext.Current.Request;
    HttpResponse Response = HttpContext.Current.Response;

    //Check for the LaMarelleLang cookie which can override this default
    if (Request.Cookies["LaMarelleLang"] == null)
    {

      //Check default language set in the browser
      if (Request.UserLanguages != null)
      {
        Lang = Request.UserLanguages[0].Substring(0, 2);
      }

      if (Lang == "fr")
        Response.Cookies["LaMarelleLang"].Value = "fr";
      else
        Response.Cookies["LaMarelleLang"].Value = "en";

      Response.Cookies["LaMarelleLang"].Expires = DateTime.Now.AddDays(45);

    }
    else
    {
      if (Request.Cookies["LaMarelleLang"].Value == "fr" || Request.Cookies["LaMarelleLang"].Value == "en")
        Lang = Request.Cookies["LaMarelleLang"].Value;

      //check for language cookie and set the menu
      if (Request.Url.AbsolutePath.StartsWith("/fr/") || Request.Url.AbsolutePath.StartsWith("/lamarelle/fr/"))
      {
        Lang = "fr";
      }
      else
      {
        Lang = "en";
      }
    }

    // Set culture info for dates and automatic text
    string cultureLang = "en-GB";
    if (Lang == "fr")
      cultureLang = "fr-FR";

    System.Threading.Thread.CurrentThread.CurrentCulture =
                       new System.Globalization.CultureInfo(cultureLang);

    return Lang;
  }
}