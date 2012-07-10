<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Lesson dates" %>
<%@ Register Namespace="MyCalendars" TagPrefix="cal" %>

<%@ import Namespace="System.Xml" %>
<script runat="server">
    public System.Data.DataSet dsItems = new System.Data.DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        dsItems.ReadXml(Server.MapPath("/App_Data/Dates.xml"));

        MMC.DataSource = MMC2.DataSource = MMC3.DataSource = MMC4.DataSource = dsItems.Tables[1];
        MMC.DayField = MMC2.DayField = MMC3.DayField = MMC4.DayField = "StartDate";
    }

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuPlaceHolder" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
              <tm:dynamicheading id="Dynamicheading01" text="Dates ²des ²cours" headingstyle="Cursif" runat="server" />

<p>Voici les dates des cours pour les prochains trimestres:</p>
    
             
         <cal:MultiMonthCalendar runat="server" ID="MMC4" 
        DayHeaderStyle-Font-Bold="true"
        meta:resourcekey="Calendar" 
        BackColor="White" 
        BorderColor="#663366" 
        Font-Names="Verdana" 
        Font-Size="8pt" 
        ForeColor="Black" CalendarStyle-CellPadding="0" CalendarStyle-GridLines="None" 
                  CalendarDayNameFormat="Shortest" NumberOfMonths="4" 
    CalendarsPerRow="4" StartDate="2012-04-21" Title="Printemps 2012">
             <SelectedDayStyle BackColor="White" ForeColor="Gray" Font-Bold="False" />
        <OtherMonthDayStyle ForeColor="Gray" />
        <TodayDayStyle BackColor="White" ForeColor="Black" BorderColor="#FF5050" 
                 BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" />
        <SelectorStyle BackColor="#9C85BB" />
        <WeekendDayStyle BackColor="LightSteelBlue" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <DayHeaderStyle BackColor="#0099CC" Font-Bold="True" Font-Size="7pt" />
        <TitleStyle BackColor="#3366CC" BorderColor="Black" Font-Bold="True" 
                 ForeColor="White" />
       <DayWithEventsStyle BackColor="#FF6666" BorderColor="#990033" BorderStyle="Solid"
         BorderWidth="2px" ForeColor="Black" Font-Bold="True" />
       <CalendarStyle CellPadding="0" Height="150px" Width="150px" />
       <ControlTitleStyle BackColor="#000099" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
         ForeColor="White" />
     </cal:MultiMonthCalendar>
     
                   <br />
              
         <cal:MultiMonthCalendar runat="server" ID="MMC" 
        DayHeaderStyle-Font-Bold="true"
        meta:resourcekey="Calendar" 
        BackColor="White" 
        BorderColor="#663366" 
        Font-Names="Verdana" 
        Font-Size="8pt" 
        ForeColor="Black" CalendarStyle-CellPadding="0" CalendarStyle-GridLines="None" 
                  CalendarDayNameFormat="Shortest" NumberOfMonths="4" 
    CalendarsPerRow="4" StartDate="2012-09-29" Title="Automne 2012">
             <SelectedDayStyle BackColor="White" ForeColor="Gray" Font-Bold="False" />
        <OtherMonthDayStyle ForeColor="Gray" />
        <TodayDayStyle BackColor="White" ForeColor="Black" BorderColor="#FF5050" 
                 BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" />
        <SelectorStyle BackColor="#9C85BB" />
        <WeekendDayStyle BackColor="LightSteelBlue" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <DayHeaderStyle BackColor="#0099CC" Font-Bold="True" Font-Size="7pt" />
        <TitleStyle BackColor="#3366CC" BorderColor="Black" Font-Bold="True" 
                 ForeColor="White" />
       <DayWithEventsStyle BackColor="#FF6666" BorderColor="#990033" BorderStyle="Solid"
         BorderWidth="2px" ForeColor="Black" Font-Bold="True" />
       <CalendarStyle CellPadding="0" Height="150px" Width="150px" />
       <ControlTitleStyle BackColor="#000099" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
         ForeColor="White" />
     </cal:MultiMonthCalendar>
     
              <cal:MultiMonthCalendar runat="server" ID="MMC2" 
        DayHeaderStyle-Font-Bold="true"
        meta:resourcekey="Calendar" 
        BackColor="White" 
        BorderColor="#663366" 
        Font-Names="Verdana" 
        Font-Size="8pt" 
        ForeColor="Black" CalendarStyle-CellPadding="0" CalendarStyle-GridLines="None" 
                  CalendarDayNameFormat="Shortest" NumberOfMonths="3" 
    CalendarsPerRow="4" StartDate="2013-01-05" Title="Hiver 2013">
             <SelectedDayStyle BackColor="White" ForeColor="Gray" Font-Bold="False" />
        <OtherMonthDayStyle ForeColor="Gray" />
        <TodayDayStyle BackColor="White" ForeColor="Black" BorderColor="#FF5050" 
                 BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" />
        <SelectorStyle BackColor="#9C85BB" />
        <WeekendDayStyle BackColor="LightSteelBlue" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <DayHeaderStyle BackColor="#0099CC" Font-Bold="True" Font-Size="7pt" />
        <TitleStyle BackColor="#3366CC" BorderColor="Black" Font-Bold="True" 
                 ForeColor="White" />
       <DayWithEventsStyle BackColor="#FF6666" BorderColor="#990033" BorderStyle="Solid"
         BorderWidth="2px" ForeColor="Black" Font-Bold="True" />
       <CalendarStyle CellPadding="0" Height="150px" Width="150px" />
       <ControlTitleStyle BackColor="#000099" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
         ForeColor="White" />
     </cal:MultiMonthCalendar>
     
                   <cal:MultiMonthCalendar runat="server" ID="MMC3" 
        DayHeaderStyle-Font-Bold="true"
        meta:resourcekey="Calendar" 
        BackColor="White" 
        BorderColor="#663366" 
        Font-Names="Verdana" 
        Font-Size="8pt" 
        ForeColor="Black" CalendarStyle-CellPadding="0" CalendarStyle-GridLines="None" 
                  CalendarDayNameFormat="Shortest" NumberOfMonths="4" 
    CalendarsPerRow="4" StartDate="2013-04-20" Title="Printemps 2013">
             <SelectedDayStyle BackColor="White" ForeColor="Gray" Font-Bold="False" />
        <OtherMonthDayStyle ForeColor="Gray" />
        <TodayDayStyle BackColor="White" ForeColor="Black" BorderColor="#FF5050" 
                 BorderStyle="Solid" BorderWidth="1px" Font-Bold="True" />
        <SelectorStyle BackColor="#9C85BB" />
        <WeekendDayStyle BackColor="LightSteelBlue" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <DayHeaderStyle BackColor="#0099CC" Font-Bold="True" Font-Size="7pt" />
        <TitleStyle BackColor="#3366CC" BorderColor="Black" Font-Bold="True" 
                 ForeColor="White" />
       <DayWithEventsStyle BackColor="#FF6666" BorderColor="#990033" BorderStyle="Solid"
         BorderWidth="2px" ForeColor="Black" Font-Bold="True" />
       <CalendarStyle CellPadding="0" Height="150px" Width="150px" />
       <ControlTitleStyle BackColor="#000099" Font-Bold="True" Font-Names="Arial" Font-Size="Medium"
         ForeColor="White" />
     </cal:MultiMonthCalendar>


</asp:Content>

