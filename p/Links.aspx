<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Inherits="LocalizedPage" Title="La Marelle - Links"  culture="auto" meta:resourcekey="PageRes" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 
<asp:Panel ID="MainText" runat="server" meta:resourcekey="MainText">
   <h1><asp:Literal ID="litTitle" runat="server" Text="Friends and partners" meta:resourcekey="litTitle" /></h1>

   <h2><asp:Literal runat="server" meta:resourcekey="Official" Text="Official" /></h2>
<p><asp:LinkButton PostBackUrl="http://www.avenuedesecoles.com/" runat="server" Text="Avenue des Ecoles" meta:resourcekey="avenueTitle"/><br />
<asp:Literal runat="server" Text="Run by the French Embassy, AvenueDesEcoles provides official information on available French-language schools and lessons in London." meta:resourcekey="avenueBlurb" />
</p>

<p><asp:LinkButton PostBackUrl="http://www.parapluieflam.org/" ID="LinkButton2" runat="server" Text="Parapluie FLAM" meta:resourcekey="parapluieTitle"/><br />
<asp:Literal runat="server" Text="Parapluie FLAM is the umbrella organisation for all parent-run French schools in the United Kingdom and provides information and support for new and existing schools." meta:resourcekey="parapluieBlurb" />
</p>

<p><asp:LinkButton PostBackUrl="http://planecoleroyaumeuni.blogspot.com/" ID="LinkButton1" runat="server" Text="Plan Ecole of the French Embassy" meta:resourcekey="planEcoleTitle"/><br />
<asp:Literal runat="server" Text="The French Embassy's &quot;School Plan&quot; aims to develop the teaching of the French language and culture in the United Kingdom. Amongst other things, it plans to aid the creation of bilingual classes in British schools, and to federate complementary schools like La Marelle." meta:resourcekey="planEcoleBlurb" />
</p>

  
   <h2><asp:Literal runat="server" meta:resourcekey="Other" Text="Other French Schools" /></h2>

<p><asp:LinkButton PostBackUrl="http://www.geocities.com/petiteecoleealing/" ID="peeTitle" runat="server" Text="Petite Ecole d'Ealing" meta:resourcekey="peeTitle" /><br />
<asp:Literal ID="peeBlurb" runat="server" Text="Founded in 1986, the Petite Ecole in Ealing is one of the oldest French Saturday morning schools in the United Kingdom." meta:resourcekey="peeBlurb" />
</p>

<p><asp:LinkButton PostBackUrl="http://www.petite-ecole-kentoise.co.uk/" ID="pekTitle" runat="server" Text="Petite Ecole Kentoise" meta:resourcekey="pekTitle" /><br />
<asp:Literal ID="pekBlurb" runat="server" Text="The Petite Ecole Kentoise was created shortly before La Marelle and runs two schools near Maidstone and Tonbridge respectively." meta:resourcekey="pekBlurb" />
</p>

<p><asp:LinkButton PostBackUrl="http://www.ecoletricolore.co.uk/" ID="ecTitle" runat="server" Text="Ecole Tricolore" meta:resourcekey="ecTitle" /><br />
<asp:Literal ID="ecBlurb" runat="server" Text="One of the most recent schools, started in Bromley in 2012 to cater for children in South London and Surrey." meta:resourcekey="ecBlurb" />
</p>

<p><asp:LinkButton PostBackUrl="http://internationalacademygreenwich.co.uk/" ID="iagTitle" runat="server" Text="International Academy of Greenwich" meta:resourcekey="iagTitle" /><br />
<asp:Literal ID="iagBlurb" runat="server" Text="A new free secondary school with a focus on languages, set up by parents in the Greenwich area." meta:resourcekey="iagBlurb" />
</p>

<p><asp:LinkButton PostBackUrl="http://www.bbs-cfbt.org.uk/home.aspx" ID="planEcoleTitle" runat="server" Text="Bromley Bilingual School" meta:resourcekey="bromleyTitle"/><br />
<asp:Literal ID="planEcoleBlurb" runat="server" Text="This primary school in Bromley will specialise in French-English bilingual learning for children aged from four to 11. The school plans to open with up to two reception classes and, if demand exists, up to two Year 1 and Year 2 classes. Its bilingual early immersion model, combined with a strong grounding in academic subjects will foster excellence and offer a broad and balanced curriculum." meta:resourcekey="bromleyBlurb" />
</p>

  <h2><asp:Literal runat="server" meta:resourcekey="Misc" Text="Miscellaneous" /></h2>

  <p><asp:LinkButton PostBackUrl="http://multilingualfamily.org.uk/" ID="multilingualTitle" runat="server" Text="Multilingual Family" meta:resourcekey="multilingualTitle" /><br />
    <asp:Literal ID="multilingualBlurb" runat="server" Text="A website set up by a dynamic French mum living in the UK, enables parents speaking several languages to exchange tips and experience on bringing up children." meta:resourcekey="multilingualBlurb" />
  </p>
  <p><asp:LinkButton PostBackUrl="http://lespetitslapins.forumotion.com/" ID="lapinsTitle" runat="server" Text="Les Petits Lapins forum" meta:resourcekey="lapinsTitle" /><br />
    <asp:Literal ID="lapinsBlurb" runat="server" Text="Created by parents in the Maidstone area, this site contains information on events throughout Kent, and is also a meeting place for French-speaking Internet users. Requires registration to read and reply to messages." meta:resourcekey="lapinsBlurb" />
  </p>
  <p><asp:LinkButton PostBackUrl="http://www.maskarade.net/" ID="maskaradeTitle" runat="server" Text="Maskarade Languages" meta:resourcekey="maskaradeTitle" /><br />
    <asp:Literal ID="maskaradeBlurb" runat="server" Text="Teaching resources to learn French aimed at children." meta:resourcekey="maskaradeBlurb"/>
  </p>

</asp:Panel>

</asp:Content>

                                                      