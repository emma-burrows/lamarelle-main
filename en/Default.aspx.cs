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

using System.Resources;
using System.Globalization;

public partial class en_Default : System.Web.UI.Page
{
  public DataSet dsItems = new DataSet();

  protected void Page_Load(object sender, EventArgs e)
  {

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
