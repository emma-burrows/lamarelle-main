<%@ Page Language="C#" MasterPageFile="~/masterpage.master" 
Title="La Marelle - Articles" UICulture="auto" Culture="auto" Inherits="LocalizedPage" %>
<%@ Import Namespace="System.Globalization" %>
<%@ Import Namespace="System.Threading" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <script runat="server">
    CultureInfo uic = Thread.CurrentThread.CurrentUICulture;

    String longDate(string date)
    {
      DateTimeFormatInfo fmt = Thread.CurrentThread.CurrentCulture.DateTimeFormat;
      fmt.LongDatePattern = @"d MMMM yyyy"; 
      return DateTime.Parse(date, uic).ToLongDateString();
    }
  </script>

  <asp:Panel ID="MainText" runat="server">

    <h1><asp:Literal ID="litTitle" runat="server" Text="Articles about La Marelle" meta:resourcekey="litTitle" /></h1>

    <p>
      <a href="http://www.gravesendreporter.co.uk/news/making_sure_les_enfants_are_fluent_in_french_1_1714280">Making sure les enfants are fluent in French</a>, 
      Gravesend and Dartford Reporter, <%= longDate("29/11/2012") %></p>

    <p><a href="http://www.lepetitjournal.com/societe-londres/59625-education-lessor-des-petites-ecoles-francais-langue-maternelle-du-samedi-matin.html">EDUCATION – L’essor des petites écoles Français Langue Maternelle du samedi matin</a>, 
    Le Petit Journal, <%= longDate("10/04/2009") %></p>

    <p><a href="http://www.lepetitjournal.com/content/view/42190/2363/">EDUCATION – Le samedi, à la Marelle, c’est l’école en français </a>, 
    Le Petit Journal, <%= longDate("10/06/2009") %></p>

    <p><a href="../articles/DartfordTimes-090521.jpg">A taste of France in new school</a>, 
    Dartford Times, <%= longDate("21/05/2009") %></p>

    <p><a href="http://www.howardstoate.com/constituency-news/mp-visits-la-marelle.html">MP visits La Marelle</a>, 
    official site for Dr Howard Stoate MP, <%= longDate("18/05/2009") %></p>

    <p><a href="../articles/radiokent.mp3">Hasina Harris interviewed by Matt Davison</a>, 
    BBC Radio Kent, <%= longDate("15/05/2009") %> (6&nbsp;<asp:Literal ID="Megabytes" Text="MB" runat="server" meta:resourcekey="Megabytes" />)</p>

    <p><a href="../articles/KentMessenger-090514.jpg">Promoting Bilingualism</a>, 
    Dartford & Gravesend Kent Messenger, <%= longDate("14/05/2009") %></p>

    <p><a href="../articles/MardiGras-Newsshopper-090304.jpg">Carnival Offers A Oui Bit Of Fun</a>, 
    Bexley News Shopper, <%= longDate("04/03/2009") %></p>

    <p><a href="http://www.institut-francais.org.uk/education/francais/francais-langue-maternelle.html#temoignage">Témoignages : l’ouverture de La Marelle</a>, 
    French Institute, <%= longDate("14/02/2009") %></p>


    <p><a href="../articles/KentMessenger-090130.jpg">Maman's the Word</a>, 
    Kent Messenger, <%= longDate("30/01/2009") %>
    (<a href="http://www.dartfordmessenger.co.uk/paper/default.asp?article_id=41674&slide_id=1&newspage=5&searchkeyword=&searchpage=1"><asp:Literal ID="OnlineVersion" runat="server" Text="Online version here" meta:resourcekey="OnlineVersion" /></a>)</p>

  </asp:Panel>

</asp:Content>

                                                      