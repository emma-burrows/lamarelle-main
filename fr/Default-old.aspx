<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - école pour enfants bilingues à Dartford" %>

<script runat="server">

    public System.Data.DataSet dsItems = new System.Data.DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
      System.Data.DataTable table = dsItems.Tables.Add("entries");
      System.Data.DataColumn pkOrderID =
      table.Columns.Add("Title", typeof(string));
      table.Columns.Add("Description", typeof(string));
        
      System.Net.WebRequest request = System.Net.WebRequest.Create("http://blog.lamarelle.org.uk/feeds/posts/default");
      request.Timeout = 500;

      using (System.Net.WebResponse response = request.GetResponse())
      using (System.Xml.XmlReader reader = System.Xml.XmlReader.Create(response.GetResponseStream()))
      {
        System.ServiceModel.Syndication.SyndicationFeed feed = System.ServiceModel.Syndication.SyndicationFeed.Load(reader);

        if (feed != null)
        {
          foreach (var item in feed.Items)
          {
            // Work with the Title and PubDate properties of the FeedItem
            System.Data.DataRow row = table.NewRow();
            row["Title"] = item.Title.Text;
            System.ServiceModel.Syndication.TextSyndicationContent tsc = (System.ServiceModel.Syndication.TextSyndicationContent)item.Content;
            string myContent = HttpUtility.HtmlDecode(tsc.Text);
            row["Description"] = myContent;
            literal.Text = myContent;
            table.Rows.Add(row);
          }
        }
        //dsItems.Tables.Add(table);
        GridView1.DataSource = dsItems;
        GridView1.DataBind();
      }
    }


</script>


<asp:Content ContentPlaceHolderID="MenuPlaceHolder" runat="server">


</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <asp:XmlDataSource ID="XmlDataSource1" runat="server" 
    DataFile="~/rss.xml" XPath="/entries/entry" TransformFile="~/rss.xsl"></asp:XmlDataSource>

<asp:Literal ID="literal" runat="server" />

  <asp:GridView ID="GridView1" runat="server">
  </asp:GridView>
  


</asp:Content>









