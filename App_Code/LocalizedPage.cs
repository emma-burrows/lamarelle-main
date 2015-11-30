using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;

/// <summary>
/// Summary description for LocalizedPage
/// </summary>
public class LocalizedPage : Page
{
	public LocalizedPage()
	{
	}

  protected override void InitializeCulture()
  {
    string culture = "en-GB";

    if (!String.IsNullOrEmpty(Request.QueryString.Get("lang")))
    {
      culture = Request.QueryString.Get("lang");
    }
    else if (Session["LaMarelleLang"] == null
        && Request.Cookies["LaMarelleLang"] != null
        && !String.IsNullOrEmpty(Request.Cookies["LaMarelleLang"].Value))
    {
      culture = Request.Cookies["LaMarelleLang"].Value;
      Session["LaMarelleLang"] = culture;
    }
    else if (Session["LaMarelleLang"] != null
        && !String.IsNullOrEmpty(Session["LaMarelleLang"].ToString()))
    {
      culture = Session["LaMarelleLang"].ToString();
      Response.Cookies["LaMarelleLang"].Value = culture;
    }

    Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(culture);
    Thread.CurrentThread.CurrentUICulture = new CultureInfo(culture);
    Session["LaMarelleLang"] = culture;
    Response.Cookies["LaMarelleLang"].Value = culture;
    Response.Cookies["LaMarelleLang"].Expires = DateTime.Now.AddYears(1);

    base.InitializeCulture();
  }
}