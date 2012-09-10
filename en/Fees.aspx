<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Inscriptions" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

   <tm:dynamicheading id="Dynamicheading01" text="F²ees" headingstyle="Cursif" runat="server" />
  
  <p>As a charity, we aim to keep our fees as low as possible, and they are therefore set to cover 
  only our rental, staff and running costs.</p>
  <p> You can pay the full fee per term (for 10 sessions), or pay a discounted fee yearly, either in one go, or by setting up a 12-month standing order.
  The standard fees are as follows:</p>
  

    <table style="width: 600px" cellspacing="0">
      <tr>
        <td style="border-bottom: solid 1px navy;width: 146px; height:20px">&nbsp;
        </td>
        <td style="border-bottom: solid 1px navy;width: 150px; height:20px">
          <span style="font-family: Arial"><strong>1 child</strong></span></td>
        <td style="border-bottom: solid 1px navy;width: 150px; height:20px">
          <span style="font-family: Arial"><strong>2 children</strong></span></td>
        <td style="border-bottom: solid 1px navy;width: 150px; height:20px">
          <span style="font-family: Arial"><strong>3 children or more</strong></span></td>
      </tr>
      <tr>
        <td style="width: 146px; height:20px">
          per <b>term</b></td>
        <td style="width: 150px; height:20px">
          £130</td>
        <td style="width: 150px; height:20px">
          £230
        </td>
        <td style="width: 150px; height:20px">
          £300
        </td>
      </tr>
            <tr>
        <td style="width: 146px; height:20px">
          per <b>year</b></td>
        <td style="width: 150px; height:20px">
          £360 (instead of £390)</td>
        <td style="width: 150px; height:20px">
          £648 (instead of £690)
        </td>
        <td style="width: 150px; height:20px">
          £876 (instead of £900)
        </td>
      </tr>
                  <tr>
        <td style="width: 146px; height:20px">
          per <b>month</b></td>
        <td style="width: 150px; height:20px">
          £30</td>
        <td style="width: 150px; height:20px">
          £54
        </td>
        <td style="width: 150px; height:20px">
          £73
        </td>
      </tr>
    </table>
<br />
<p>An additional <b>£10</b> contribution per pupil towards the cost of supplies is due on first registration and at the beginning of each school year. This is reduced for new registrations near the end of the school year.</p>

<p>Trial sessions incur the full fee for a standard lesson. Pupils must pay a term in advance on registration (this will be reduced for arrivals during the term).</p>

<p>Please note that any fees paid to us are <b>non-refundable</b>.</p>

<h2>Payment Terms</h2>
<p>To secure your child's place, you will need to pay a deposit of at least half the fee, or start your monthly standing order, as soon as possible or six weeks before the start of term. The rest of the fee is due two weeks before the first day of class. Please make sure you fill in our <a href="registration.aspx">registration form</a> before sending any payment.</p>

<h2>Payment Methods</h2>

<p>You can pay using the following methods:</p>

<h3>Cheque</h3>
<p>Cheques should be drawn on a UK bank account or building society and made out to "La Marelle". You can either hand it to our president during lessons, or send it to <b>5 Eynsford Road, Greenhithe DA9 9HB</b></p>

<h3>Bank transfer or monthly standing order</h3>

<p>Please <a href="contact.aspx">contact us</a> for our account details. The monthly standing order then needs to be arranged directly with your bank.</p>

<p>Note: you must continue the payments even in months where there are no lessons, as the monthly fee is calculated to cover our costs over 12 months. Failure to keep up your payments may result in your child losing their place at the school.</p>
  <p>
    Please indicate your children's surname as the reference so we can check which pupils have been paid for.</p>

<h3>Paypal</h3>
<p>You can pay using a credit or debit card, or from your own Paypal account, by using the following dialogue box. Prices include a small charge to cover Paypal's processing fees.</p>

<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="2Y7A45X3WSZYY">
<table>
<tr><td><input type="hidden" name="on0" value="Fees">Fees</td></tr><tr><td><select name="os0">
	<option value="1 child">1 child (£132.00)
	<option value="2 children">2 children (£233.50)
	<option value="3 children">3 children (£304.50)
</select> </td></tr>
<tr><td><input type="hidden" name="on1" value="Children's name">Children's name</td></tr><tr><td><input type="text" name="os1" maxlength="60">
</table>
<input type="hidden" name="currency_code" value="GBP">
<asp:ImageButton ID="ImageButton1" runat="server" PostBackUrl="https://www.paypal.com/cgi-bin/webscr" ImageUrl="https://www.paypal.com/en_GB/i/btn/btn_paynowCC_LG.gif" AlternateText="PayPal - The safer, easier way to pay online." />
<img alt="" border="0" src="https://www.paypal.com/en_GB/i/scr/pixel.gif" width="1" height="1">

<p>&nbsp;</p>

</asp:Content>

