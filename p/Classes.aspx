<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Curriculum" Inherits="LocalizedPage" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1><asp:Literal ID="litTitle" Text="Classes for French-speaking children" meta:resourcekey="litTitle" runat="server" /></h1>
  <asp:Literal ID="intro" meta:resourcekey="intro" runat="server" Text="
    &lt;p&gt;This page concerns La Marelle's school for French-speaking children. Please see our &lt;a href=&quot;FrenchClasses.aspx&quot;&gt;French as a foreign language&lt;/a&gt; page if you are looking for French lessons for non-native speakers. Unless otherwise specified, all lessons take place on Saturday mornings at &lt;a href=&quot;https://maps.google.co.uk/?q=La+Marelle+DA2+6JX&quot; target=&quot;_blank&quot;
          title=&quot;View our exact location on Google Maps&quot;&gt;Fleetdown Primary School&lt;/a&gt;.&lt;/p&gt;
  "></asp:Literal>

  <h2><asp:Literal ID="currTitle" Text="Curriculum" meta:resourcekey="currTitle" runat="server" /></h2>
  <asp:Literal ID="currIntro" meta:resourcekey="currIntro" runat="server" Text="
    &lt;p&gt;
    Pupils are divided into seven levels: four for pre-school aged children under 5 and three for primary school children over 5. &lt;/p&gt;
    &lt;p&gt;
    Lessons are based on the official French curriculum for pre-schools and primary schools, albeit adapted to a weekly session and the specific needs of bilingual children.&lt;/p&gt;
  "></asp:Literal>

  <img alt="Fourmis" src="../images/Ant.png" class="floated" />
  <h3><asp:Literal ID="fourmisTitle" Text="Fourmis (Ants)" meta:resourcekey="fourmisTitle" runat="server" /></h3>
  <p><asp:Literal runat="server" meta:resourcekey="teacher" />: Malika Agounizera</p>
  <asp:Literal ID="fourmisIntro" runat="server" meta:resourcekey="fourmisIntro" Text="&lt;p&gt;Creche&lt;/p&gt;"></asp:Literal>

  <br />
  <img alt="Coccinelles" src="../images/Ladybird.png" class="floated" />
  <h3><asp:Literal ID="coccinellesTitle" Text="Coccinelles (Ladybirds)" meta:resourcekey="coccinellesTitle" runat="server" /></h3>
  <p><asp:Literal runat="server" meta:resourcekey="teacher" />: Virginie Ambroise</p>
  <br />
  <img alt="Abeilles" src="../images/Bee.png" class="floated" />
  <h3><asp:Literal ID="abeillesTitle" Text="Abeilles (Bees)" meta:resourcekey="abeillesTitle" runat="server" /></h3>
  <p><asp:Literal runat="server" meta:resourcekey="teacher" />: Isabelle Jones</p>

  <asp:Literal ID="coAbIntro" runat="server" meta:resourcekey="coAbIntro" Text="&lt;p&gt;Nursery to Reception.&lt;/p&gt;"></asp:Literal>
   
  <br />
  <img alt="Bourdons" src="../images/Bumblebee.png" class="floated" />
  <h3><asp:Literal ID="bourdonsTitle" Text="Bourdons (Bumblebees)" meta:resourcekey="bourdonsTitle" runat="server" /></h3>
  <p><asp:Literal runat="server" meta:resourcekey="teacher" />: Florence Bissianna</p>
  <br />
  <img alt="Chenilles" src="../images/Caterpillar.png" class="floated" />
  <h3><asp:Literal ID="chenillesTitle" Text="Chenilles (Caterpillars)" meta:resourcekey="chenillesTitle" runat="server" /></h3>
  <p><asp:Literal runat="server" meta:resourcekey="teacher" />: Myriam Surel</p>

  <asp:Literal ID="boChIntro" meta:resourcekey="boChIntro" runat="server" Text="&lt;p&gt;Years 1 and 2&lt;/p&gt;"></asp:Literal>    

  <br />
  <img alt="Papillons" src="../images/Butterfly.png" class="floated" />
  <h3><asp:Literal ID="papillonsTitle" Text="Papillons (Butterflies)" meta:resourcekey="papillonsTitle" runat="server" /></h3>
  <p><asp:Literal runat="server" meta:resourcekey="teacher" />: Aude Gagnier</p>

  <asp:Literal ID="paIntro" meta:resourcekey="paIntro" runat="server" Text="&lt;p&gt;Year 3&lt;/p&gt;"></asp:Literal>

  <br />
  <img alt="Libellules 1" src="../images/Dragonfly.png" class="floated" />
  <h3><asp:Literal ID="libellulesTitle" Text="Libellules 1 (Dragonflies)" meta:resourcekey="libellules1Title" runat="server" /></h3>
  <p><asp:Literal ID="Literal2" runat="server" meta:resourcekey="teacher" />: Amélia Ledo</p>
  <br />
  <img alt="Libellules 2" src="../images/Dragonfly.png" class="floated" />
  <h3><asp:Literal ID="Literal1" Text="Libellules 2 (Dragonflies)" meta:resourcekey="libellules2Title" runat="server" /></h3>
  <p><asp:Literal ID="Literal4" runat="server" meta:resourcekey="teacher" />: Gwladys Dupont</p>
  <br />
  <img alt="Lucioles" src="../images/Dragonfly.png" class="floated" />
  <h3><asp:Literal ID="luciolesTitle" Text="Lucioles (Fireflies)" meta:resourcekey="luciolesTitle" runat="server" /></h3>
  <p><asp:Literal ID="Literal3" runat="server" meta:resourcekey="teacher" />: Paolo Giambarresi</p>

  <asp:Literal ID="liLuIntro" runat="server" meta:resourcekey="liLuIntro" Text="
  &lt;p&gt;Oral skills will be developed further, and pupils will consolidate their existing knowledge of French grammatical rules, learning the more advanced aspects of French grammar through grammar, conjugation and spelling exercises. Meanwhile, their vocabulary and written expression will be enhanced by the study of complete books, and creative writing will also be encouraged. The second half of the session covers GCSE preparation, which is also open to English-speaking pupils who are preparing that exam.&lt;/p&gt;
  "></asp:Literal>

  <br />
  <asp:Literal ID="endBlurb" runat="server" meta:resourcekey="endBlurb" Text="
  &lt;p&gt;
      History, geography and the cultures of the French-speaking world will be covered in all levels, and French holidays will be the occasion of celebrations and entertainment.
    &lt;/p&gt;
  "></asp:Literal>


</asp:Content>

