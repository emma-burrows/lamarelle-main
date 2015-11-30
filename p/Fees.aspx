<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Fees" Inherits="en_Fees" CodeFile="~/p/Fees.aspx.cs" Culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <h1><asp:Literal ID="litTitle" Text="Lesson Fees" runat="server" meta:resourcekey="litTitleResource1" /></h1>

  <asp:Literal ID="intro" meta:resourcekey="intro" runat="server" Text="
    &lt;p&gt;If you think your children would benefit from our French lessons, they can come for a paid trial session 
    (see our &lt;a href=&quot;Dates.aspx&quot;&gt;lesson dates to find out when the next session is&lt;/a&gt;). &lt;/p&gt;
   &lt;p&gt;
     If you subsequently enrol them, we will ask you to pay for the remaining 
     sessions in the term, as well as the £10 supplies contribution due by all pupils 
     each school year. Other small fees for library books or snacks may be due 
     depending on the classes the children are in.&lt;/p&gt;
  "></asp:Literal>

  <div class="bs-example">
    <h2><asp:Literal ID="calculatorTitle" Text="Fee Calculator" runat="server" meta:resourcekey="calculatorTitle" /></h2>

    <div class="form-group">
      <asp:Label ID="hoursLbl" runat="server" meta:resourcekey="hoursLbl" Text="Number of hours:" AssociatedControlID="Hours" />
      <asp:RadioButtonList ID="Hours" CssClass="radio" runat="server" meta:resourcekey="HoursResource1">
        <asp:ListItem Value="1" Text="1 hour (French as a foreign language only)" meta:resourcekey="hoursOne" />
        <asp:ListItem Value="3" Selected="True" Text="3 hours" meta:resourcekey="hoursThree" />
      </asp:RadioButtonList>
    </div>
    <div class="form-group">
      <asp:Label ID="childrenLbl" runat="server" meta:resourcekey="childrenLbl" Text="Number of children:" AssociatedControlID="Children" />
      <asp:DropDownList ID="Children" CssClass="form-control" runat="server" meta:resourcekey="ChildrenResource1">
        <asp:ListItem Value="1" Text="1 child"  meta:resourcekey="child1" />
        <asp:ListItem Value="2" Text="2 children" meta:resourcekey="child2" />
        <asp:ListItem Value="3" Text="3 children" meta:resourcekey="child3" />
        <asp:ListItem Value="4" Text="4 children" meta:resourcekey="child4" />
        <asp:ListItem Value="5" Text="5 children" meta:resourcekey="child5" />
      </asp:DropDownList>
    </div>
    <div class="form-group">
      <asp:Label ID="termLbl" runat="server" meta:resourcekey="termLbl" Text="Display fee for:" AssociatedControlID="Term" />
      <asp:RadioButtonList ID="Term" CssClass="radio" runat="server" meta:resourcekey="TermResource1">
        <asp:ListItem Value="session" meta:resourcekey="ListItemResource1">Trial session only</asp:ListItem>
        <asp:ListItem Value="term" Selected="True" meta:resourcekey="ListItemResource2">Term (3 months = 10 sessions)</asp:ListItem>
        <asp:ListItem Value="year" meta:resourcekey="ListItemResource3">Entire Year (September-July = 30 sessions)</asp:ListItem>
      </asp:RadioButtonList>
    </div>
    <div class="form-group">
      <asp:Button ID="Submit" CssClass="btn btn-primary" runat="server" Text="Calculate fees" OnClick="Submit_Click" meta:resourcekey="SubmitResource1" />
    </div>

    <asp:Panel ID="ResultDiv" CssClass="alert alert-success" Visible="False" runat="server" meta:resourcekey="ResultDivResource1">
      <asp:Literal ID="Result" runat="server" meta:resourcekey="ResultResource1"></asp:Literal>
    </asp:Panel>
  </div>
  <asp:Literal runat="server" meta:resourcekey="feesBlurb" Text="
    &lt;p&gt;Fees are due in their entirety by the &lt;b&gt;first day of term&lt;/b&gt; at the very latest. Early payment will secure your child’s place for the next term.&lt;/p&gt;

    &lt;p&gt;In exceptional circumstances, there may be more than 10 lessons in a term – extra sessions will be charged at the “trial session” rate.&lt;/p&gt;

    &lt;p&gt;&lt;a href=&quot;https://docs.google.com/file/d/0B6WanLW1zzXxU0JLOTlDRjhRUWc/edit?usp=sharing&quot;&gt;View all our fees (pdf)&lt;/a&gt;&lt;/p&gt;
  "></asp:Literal>

  <h2><asp:Literal ID="Literal3" runat="server" meta:resourcekey="additionalTitle" Text="Additional fees" /></h2>

  <table class="table">
    <thead>
      <tr>
        <td></td>
        <td><asp:Literal runat="server" meta:resourcekey="child1" Text="1 child" /></td>
        <td><asp:Literal runat="server" meta:resourcekey="child2" Text="2 children" /></td>
        <td><asp:Literal runat="server" meta:resourcekey="child3" Text="3 children"/></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><b><asp:Literal runat="server" meta:resourcekey="suppliesHeader" Text="Yearly supplies contribution" /></b></td>
        <td>£15</td>
        <td>£30</td>
        <td>£45</td>
      </tr>
      <tr>
        <td><b><asp:Literal runat="server" meta:resourcekey="lateHeader" Text="Late payment fee" /></b></td>
        <td>£20</td>
        <td>£40</td>
        <td>£60</td>
      </tr>
    </tbody>
  </table>

  <h3><asp:Literal ID="Literal1" runat="server" meta:resourcekey="suppliesHeader" Text="Yearly supplies contribution" /></h3>
  <asp:Literal runat="server" meta:resourcekey="suppliesIntro" Text="
    &lt;p&gt;A £10 contribution per pupil is due on first registration and at the beginning of each school year. This covers the purchase of some of the extra supplies needed when a child joins a new class.&lt;/p&gt;
  "></asp:Literal>

  <h3><asp:Literal runat="server" meta:resourcekey="lateHeader" Text="Late payment fee" /></h3>
  <asp:Literal runat="server" meta:resourcekey="lateIntro" Text="
    &lt;p&gt;Fees paid after the first Saturday of the term will incur a &lt;b&gt;£20 administrative fee&lt;/b&gt; per child. If no payment is received by the third session, your child will no longer be a pupil at the school. Please contact us if you are unable to pay your fees for any reason.&lt;/p&gt;
  "></asp:Literal>

  <p><b><asp:Literal runat="server" meta:resourcekey="noRefund" Text="Please note that no refunds will be given after the term has started." /></b></p>

  <h2><asp:Literal runat="server" meta:resourcekey="paymentMethods" Text="Payment methods" /></h2>
  <h3><asp:Literal runat="server" meta:resourcekey="cheque" Text="Cheque" /></h3>
  <asp:Literal runat="server" meta:resourcekey="chequeIntro" Text="
    &lt;p&gt;Cheques should be drawn on a UK bank account or building society and made out to &quot;La Marelle&quot;. You can hand it to our president or secretary at reception during lessons.&lt;/p&gt;
  "></asp:Literal>

  <h3><asp:Literal runat="server" meta:resourcekey="bacs" Text="Bank transfer or monthly standing order" /></h3>
  <asp:Literal runat="server" meta:resourcekey="accountDetails" Text="
    &lt;p&gt;Please &lt;a href=&quot;contact.aspx&quot;&gt;contact us&lt;/a&gt; for our account details.&lt;/p&gt;
    &lt;p&gt;&lt;b&gt;Indicate your children's name&lt;/b&gt; as the reference so we can check which pupils have been paid for, and tell us if you are paying by BACS as we are not automatically notified of payments.&lt;/p&gt;
  " ></asp:Literal>

  <!-- h3>Paypal</>
  <asp:Literal ID="Literal2" runat="server" meta:resourcekey="paypalIntro" Text="
    &lt;p&gt;You can pay fees for one term of three hour sessions using a credit or debit card, or from your own Paypal account, by using the following dialogue box. Prices include a small charge to cover Paypal's processing fees.&lt;/p&gt;
    &lt;p&gt;Please inform us when you are using Paypal as we are not automatically notified of payments.&lt;/p&gt;
  " ></asp:Literal>

  <div class="form-horizontal">
    <input type="hidden" name="cmd" value="_s-xclick">
    <input type="hidden" name="hosted_button_id" value="2Y7A45X3WSZYY">

    <div class="form-group">
      <input type="hidden" name="on0" value="Fees">
      <label for="os0" class="col-sm-2 control-label"><asp:Literal runat="server" meta:resourcekey="fees" Text="Fees" /></label>
      <div class="col-sm-10">
        <select name="os0" class="form-control">
	        <option value="1 child"><asp:Literal runat="server" meta:resourcekey="child1" Text="1 child" /> (<asp:Literal runat="server" ID="Paypal1" />)</option>
	        <option value="2 children"><asp:Literal runat="server" meta:resourcekey="child2" Text="2 children" /> (<asp:Literal runat="server" ID="Paypal2" />)</option>
	        <option value="3 children"><asp:Literal runat="server" meta:resourcekey="child3" Text="3 children" /> (<asp:Literal runat="server" ID="Paypal3" />)</option>
        </select>
      </div>
    </div>
    <div class="form-group">
      <input type="hidden" name="on1" value="Children's name">
      <label for="os1" class="col-sm-2 control-label"><asp:Literal runat="server" meta:resourcekey="childsNamePaypal" Text="Children's name" /></label>
      <div class="col-sm-10">
        <input type="text" name="os1" maxlength="60" class="form-control">
      </div>
    </div>
    <input type="hidden" name="currency_code" value="GBP">
    <asp:ImageButton ID="ImageButton2" runat="server" PostBackUrl="https://www.paypal.com/cgi-bin/webscr" ImageUrl="https://www.paypal.com/en_GB/i/btn/btn_paynowCC_LG.gif" AlternateText="PayPal - The safer, easier way to pay online." meta:resourcekey="ImageButton2Resource1" />
    <img alt="" border="0" src="https://www.paypal.com/en_GB/i/scr/pixel.gif" width="1" height="1">
  </ -->
</asp:Content>

