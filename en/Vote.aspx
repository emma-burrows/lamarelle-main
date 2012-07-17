<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="Vote for the activities you would like" %>

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
  for (int i = 0; i < rblChoix.Items.Count; i++)
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
              <tm:dynamicheading id="Dynamicheading01" text="F²uture ²plans" headingstyle="Cursif" runat="server" />


<asp:Label ID="Result" Visible="false" runat="server"><p><b>Thank you for your response. We will take all opinions into account when planning our future endeavours.</b></p></asp:Label>

<asp:Panel ID="Questionnaire" runat="server">
<table width="600">
<tr><td><p>Our charity currently runs Saturday morning classes for children aged 3 to 12, but in future, we would like to expand our services to include activities for the French-speaking community and possibly English-speaking francophiles.</p>

<p>The following questionnaire lists the ideas which seem feasible by the end of the year. We would charge for these activities and run them on Saturday mornings at Fleetdown Junior School in Dartford. Please tick any you might be interested in.</p><br /></td></tr>
<tr>
<td style="width: 300px" valign="top">
  <p>
  Your name: 
    <asp:TextBox ID="txtNom" runat="server" Width="200px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your name" ControlToValidate="txtNom"></asp:RequiredFieldValidator>
    </p>
  
  
  <p>
    <asp:CheckBoxList ID="rblChoix" runat="server">
      <asp:ListItem Value="Bibliothèque">Library (French books, DVDs and videos to borrow)</asp:ListItem>
      <asp:ListItem Value="Toddler">French playgroup (for parents and children under 5)</asp:ListItem>
      <asp:ListItem Value="Conversation">French conversation group (for English adults)</asp:ListItem>
    </asp:CheckBoxList>&nbsp;</p>
    
      <p>
  Comments :<br /> 
    <asp:TextBox ID="txtComments" runat="server" Width="200px" Rows="3" TextMode="MultiLine" Wrap="true"></asp:TextBox>
    </p>

  <asp:Button ID="Submit" runat="server" Text="Send" OnClick="Submit_Click" />
  
</td>
</tr>

</table>
</asp:Panel>

</asp:Content>

