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

    if (Session["LaMarelleLang"] == null 
        && Request.Cookies["LaMarelleLang"] != null 
        && !String.IsNullOrEmpty(Request.Cookies["LaMarelleLang"].Value))
    {
      Session["LaMarelleLang"] = Request.Cookies["LaMarelleLang"].Value;
    }

    if (Session["LaMarelleLang"] != null 
        && !String.IsNullOrEmpty(Session["LaMarelleLang"].ToString()))
    {
      culture = Session["LaMarelleLang"].ToString();
      Response.Cookies["LaMarelleLang"].Value = Session["LaMarelleLang"].ToString();
    }

    Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(culture);
    Thread.CurrentThread.CurrentUICulture = new CultureInfo(culture);
    Session["LaMarelleLang"] = culture;
    Response.Cookies["LaMarelleLang"].Value = culture;

    base.InitializeCulture();
  }
}