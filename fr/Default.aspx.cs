using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Xml;
using System.Net;
using System.ServiceModel.Syndication;

public partial class fr_Default2 : System.Web.UI.Page
{
  public DataSet dsItems = new DataSet();

  protected void Page_Load(object sender, EventArgs e)
  {
    // Code from Master
    Control MenuUserControl;
    string Lang = "en";


    //Check for the LaMarelleLang cookie which can override this
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
      if (Request.Url.AbsolutePath.StartsWith("/fr/") || Request.Url.AbsolutePath.StartsWith("/pefd/fr/"))
      {
        Lang = "fr";
      }
      else
      {
        Lang = "en";
      }
    }

    MenuUserControl = LoadControl("~/" + Lang + "/Menu.ascx");

    // Set culture info for dates and automatic text
    string cultureLang = "en-GB";
    if (Lang == "fr")
      cultureLang = "fr-FR";

    System.Threading.Thread.CurrentThread.CurrentCulture =
                       new System.Globalization.CultureInfo(cultureLang);

    //MenuPlaceHolder.Controls.Add(MenuUserControl);


    // Start live code
    WebProxy proxy = (WebProxy)WebProxy.GetDefaultProxy();
    if (proxy.Address != null)
    {
      proxy.Credentials = System.Net.CredentialCache.DefaultNetworkCredentials;
      WebRequest.DefaultWebProxy = new System.Net.WebProxy(proxy.Address, proxy.BypassProxyOnLocal, proxy.BypassList, proxy.Credentials);
    }

    DataTable table = dsItems.Tables.Add("entries");
    DataColumn pkOrderID =
    table.Columns.Add("URL", typeof(string));
    table.Columns.Add("Title", typeof(string));
    table.Columns.Add("Description", typeof(string));

    WebRequest request = WebRequest.Create("http://blog.lamarelle.org.uk/feeds/posts/default");
    request.Timeout = 500;

    using (WebResponse response = request.GetResponse())
    using (XmlReader reader = XmlReader.Create(response.GetResponseStream()))
    {
      List<SyndicationItem> newItems = new List<SyndicationItem>();
      SyndicationFeed feed = SyndicationFeed.Load(reader);
      SyndicationCategory lookingFor = new SyndicationCategory("news");

      if (feed != null)
      {
        foreach (SyndicationItem item in feed.Items)
        {
          foreach (SyndicationCategory sc in item.Categories)
          {
            if (sc.Name == lookingFor.Name)
            {
              newItems.Add(item);
            }
          }
        }
      }

      if (newItems.Count > 0)
      {
        foreach (SyndicationItem item in newItems.Take(5))
        {
          DataRow row = table.NewRow();

          row["URL"] = item.Links.Where(l => l.RelationshipType == "alternate").FirstOrDefault().Uri.ToString();;
          row["Title"] = item.Title.Text;
          TextSyndicationContent tsc = (TextSyndicationContent)item.Content;
          row["Description"] = tsc.Text;
          table.Rows.Add(row);
        }
      }


      FormView1.DataSource = dsItems;
      FormView1.DataBind();

    }
  }
}
