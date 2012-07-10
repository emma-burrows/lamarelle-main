<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="Votez pour les activit�s de votre choix" %>

<%@ import Namespace="System.Xml" %>
<script runat="server">

protected void Submit_Click(object sender, EventArgs e)
{
  string filename = Server.MapPath("Vote.xml");
  XmlDocument xmlDoc = new XmlDocument();
  try
  {                  
    xmlDoc.Load(filename);
  }
  catch(System.IO.FileNotFoundException)
  {
    //if file is not found, create a new xml file
    XmlTextWriter xmlWriter = new XmlTextWriter(filename, System.Text.Encoding.UTF8);
    xmlWriter.Formatting = Formatting.Indented;
    xmlWriter.WriteProcessingInstruction("xml", "version='1.0' encoding='UTF-8'");
    xmlWriter.WriteStartElement("Root");
    //If WriteProcessingInstruction is used as above,
    //Do not use WriteEndElement() here
    //xmlWriter.WriteEndElement();
    //it will cause the <Root> to be &ltRoot />
    xmlWriter.Close();
    xmlDoc.Load(filename);
  }
  XmlNode root = xmlDoc.DocumentElement;
  XmlElement nodeVote = xmlDoc.CreateElement("vote");
  XmlElement nodeDate = xmlDoc.CreateElement("date");
  XmlElement nodeNom = xmlDoc.CreateElement("nom");
  XmlElement nodeChoix = xmlDoc.CreateElement("choix");
  XmlElement nodeComment = xmlDoc.CreateElement("comment");

  XmlText textDate = xmlDoc.CreateTextNode(DateTime.Now.ToShortDateString());
  XmlText textNom = xmlDoc.CreateTextNode(txtNom.Text);
  string Choix = "";
  for (int i = 0; i < rblChoix.Items.Count; i++ )
  {
      if (rblChoix.Items[i].Selected)
      {
          Choix += rblChoix.Items[i].Value + "-";
      }
  }
     
    XmlText textChoix = xmlDoc.CreateTextNode(Choix);
  XmlText textComment = xmlDoc.CreateTextNode(txtComments.Text);
  
  root.AppendChild(nodeVote);
  nodeVote.AppendChild(nodeDate);
  nodeDate.AppendChild(textDate);
  nodeVote.AppendChild(nodeNom);
  nodeNom.AppendChild(textNom);
  nodeVote.AppendChild(nodeChoix);
  nodeChoix.AppendChild(textChoix);
  nodeVote.AppendChild(nodeComment);
  nodeComment.AppendChild(textComment);

  xmlDoc.Save(filename);

  Questionnaire.Visible = false;
  Result.Visible = true;
  
}
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuPlaceHolder" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
              <tm:dynamicheading id="Dynamicheading01" text="P�rojets �d'avenir" headingstyle="Cursif" runat="server" />


<asp:Label ID="Result" Visible="false" runat="server"><p><b>Merci pour votre r�ponse. Nous prendrons en compte tous les avis donn�s pour nos projets d'expansion.</b></p></asp:Label>

<asp:Panel ID="Questionnaire" runat="server">
<table width="600">
<tr><td><p>Notre association propose actuellement des cours du samedi pour les enfants de 3 � 12 ans, mais nous aimerions � l'avenir proposer d'autres services � la communaut� francophone et �ventuellement aussi aux anglais francophiles.</p>

<p> Le questionnaire suivant �num�re les id�es qui nous paraissent r�alisables d'ici la fin de l'ann�e. Les activit�s seraient payantes et propos�es le samedi matin dans les locaux de Fleetdown Junior School � Dartford. Veuillez cocher celles qui vous int�ressent :</p><br /></td></tr>
<tr>
<td style="width: 300px" valign="top">
  <p>
  Votre nom : 
    <asp:TextBox ID="txtNom" runat="server" Width="200px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Veuillez entrer votre nom" ControlToValidate="txtNom"></asp:RequiredFieldValidator>
    </p>
  
  
  <p>
    <asp:CheckBoxList ID="rblChoix" runat="server">
      <asp:ListItem Value="Biblioth�que">Biblioth�que (livres, DVDs et videos en fran�ais � emprunter)</asp:ListItem>
      <asp:ListItem Value="Toddler">Groupe de jeu en fran�ais (pour parents et enfants de moins de 5 ans)</asp:ListItem>
      <asp:ListItem Value="Conversation">Groupe de conversation fran�aise (pour adultes anglais et fran�ais)</asp:ListItem>
    </asp:CheckBoxList>&nbsp;</p>
    
      <p>
  Commentaires :<br /> 
    <asp:TextBox ID="txtComments" runat="server" Width="200px" Rows="3" TextMode="MultiLine" Wrap="true"></asp:TextBox>
    </p>

  <asp:Button ID="Submit" runat="server" Text="Envoyer" OnClick="Submit_Click" />
  
</td>
</tr>

</table>
</asp:Panel>

</asp:Content>

