<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="French as a foreign language" Inherits="LocalizedPage" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1><asp:Literal ID="litTitle" meta:resourcekey="litTitle" Text="French as a foreign language" runat="server"/></h1>
  <asp:Literal meta:resourcekey="intro" runat="server" Text="&lt;p&gt;In addition to its school for French-speaking children, La Marelle offers Saturday classes for English-speaking students.&lt;/p&gt; 
  "></asp:Literal>
   
  <h2><asp:Literal ID="childrenTitle" meta:resourcekey="childrenTitle" runat="server" Text="Classes for Children" /></h2>
  <asp:Literal ID="childrenIntro" meta:resourcekey="childrenIntro" runat="server" Text="&lt;p&gt;French for non-native speakers.&lt;/p&gt;
  "></asp:Literal>

  <table id="fletable" class="table">
    <thead>
    <tr>
      <th>&nbsp;</th>
      <th>
        <p><asp:Literal ID="classes" meta:resourcekey="classes" Text="Classes" runat="server" /></p>
      </th>
      <th >
        <p><asp:Literal ID="time" meta:resourcekey="time" Text="Time" runat="server" /></p>
      </th>
      <th>
        <p><asp:Literal ID="age" meta:resourcekey="age" Text="Age group" runat="server" /></p>
      </th>
      <th>
        <p><asp:Literal ID="teacher" meta:resourcekey="teacher" Text="Teacher" runat="server" /></p>
      </th>
    </tr>
    </thead>
    <tbody>
    <tr>
      <td rowspan="2" style="vertical-align: middle;">
        <p>
          <a href="http://sweetclipart.com/multisite/sweetclipart/files/snail_2_brown_green.png">
            <img alt="Snails 1" width="70" src="http://sweetclipart.com/multisite/sweetclipart/files/snail_2_brown_green.png"/>
          </a>
        </p>
      </td>
      <td><p>Snails 1</p></td>
      <td><p>9:30-10:30 (1 <asp:Literal meta:resourcekey="hour" Text="hour" runat="server"/>)</p></td>
      <td rowspan="2" style="vertical-align: middle;">
        <p>
          3-5 <asp:Literal meta:resourcekey="years" Text="years" runat="server" />
        </p>
      </td>
      <td rowspan="2" style="vertical-align: middle;">
        <p>Julie</p>
      </td>
    </tr>
    <tr>
      <td><p>Escargots 1</p></td>
      <td><p>9:30-12:30 (3 <asp:Literal meta:resourcekey="hour" Text="hour" runat="server"/>s)</p></td>
    </tr>
    <tr>
      <td rowspan="2" style="vertical-align: middle;">
        <p>
          <a href="http://www.mycutegraphics.com/graphics/snail/yellow-purple-snail.html">
          <img alt="Snails 2" width="70" src="http://content.mycutegraphics.com/graphics/snail/snail-yellow-purple.png"/>
          </a>
        </p>
      </td>
      <td><p>Snails 2</p></td>
      <td><p>9:30-10:30 (1 <asp:Literal meta:resourcekey="hour" Text="hour" runat="server"/>)</p></td>
      <td rowspan="2" style="vertical-align: middle;">
        <p>5-7 <asp:Literal meta:resourcekey="years" Text="years" runat="server" /></p>
      </td>
      <td rowspan="2" style="vertical-align: middle;">
        <p>Alexiade</p>
      </td>
    </tr>
    <tr>
      <td><p>Escargots 2</p></td>
      <td><p>9:30-12:30 (3 <asp:Literal meta:resourcekey="hour" Text="hour" runat="server"/>s)</p></td>
    </tr>
    <tr>
      <td rowspan="2" style="vertical-align: middle;">
        <p>
          <img alt="Frog" width="70" src="../images/frog.png" />
        </p>
      </td>
      <td><p>Frogs</p></td>
      <td><p>9:30-10:30 (1 <asp:Literal meta:resourcekey="hour" Text="hour" runat="server"/>)</p></td>
      <td rowspan="2" style="vertical-align: middle;">
        <p>7-9 <asp:Literal meta:resourcekey="years" Text="years" runat="server" /></p>
      </td>
      <td rowspan="2" style="vertical-align: middle;">
        <p>Aline</p>
      </td>
    </tr>
    <tr>
      <td><p>Grenouilles</p></td>
      <td><p>9:30-12:30 (3 <asp:Literal meta:resourcekey="hour" Text="hour" runat="server"/>s)</p></td>
    </tr>
    <tr>
      <td rowspan="2" style="vertical-align: middle;">
        <p>
          <a href="http://www.illustrationsof.com/99032-royalty-free-beetle-clipart-illustration">
            <img alt="Beetles" height="70" src="http://www.illustrationsof.com/royalty-free-beetle-clipart-illustration-99032.jpg" />
          </a>
        </p>
      </td>
      <td><p>Beetles</p></td>
      <td><p>9:30-10:30 (1 <asp:Literal meta:resourcekey="hour" Text="hour" runat="server"/>)</p></td>
      <td rowspan="2" style="vertical-align: middle;">
        <p>9-11 <asp:Literal meta:resourcekey="years" Text="years" runat="server" /></p>
      </td>
      <td rowspan="2" style="vertical-align: middle;">
        <p>Dzoulia</p>
      </td>
    </tr>
    <tr>
      <td><p>Scarabées</p></td>
      <td><p>9:30-12:30 (3 <asp:Literal meta:resourcekey="hour" Text="hour" runat="server"/>s)</p></td>
    </tr>
    </tbody>
  </table>

  <h2><asp:Literal ID="gcseTitle" meta:resourcekey="gcseTitle" Text="Classes for GCSE students" runat="server" /></h2>
  <asp:Literal ID="gcseIntro" meta:resourcekey="gcseIntro" runat="server" Text="&lt;p&gt;La Marelle provides classes to help young people prepare their French GCSE exams.&lt;/p&gt;"></asp:Literal>

      
  <h2><asp:Literal ID="privateTitle" meta:resourcekey="privateTitle" runat="server" Text="Private lessons" /></h2>
  <asp:Literal ID="privateIntro" meta:resourcekey="privateIntro" runat="server" Text="&lt;p&gt;Some of our teachers also provide private tuition for children and conversation classes for adults&lt;/p&gt;
  "></asp:Literal>

</asp:Content>

