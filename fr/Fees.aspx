<%@ Page Language="C#" MasterPageFile="~/masterpage.master" Title="La Marelle - Inscriptions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 
   
   <tm:dynamicheading id="Dynamicheading01" text="Tarifs" headingstyle="Cursif" runat="server" />
  
  <p>En tant qu'association � but non lucratif, nous essayons de garder nos tarifs aussi bas que possible, et ils sont donc calcul�s pour couvrir uniquement nos frais de fonctionnement, la location des salles, et la r�mun�ration des enseignants.</p>
  <p>
  Vous pouvez payer soit le tarif plein par trimestre (10 s�ances), soit un tarif r�duit pour l'ann�e, en une fois ou par virement mensuel sur 12 mois. 
  Les tarifs sont les suivants :</p>
  

    <table style="width: 600px" cellspacing="0">
      <tr>
        <td style="border-bottom: solid 1px navy; width: 146px">&nbsp;
        </td>
        <td style="border-bottom: solid 1px navy; width: 150px">
          <span style="font-family: Arial"><strong>1 enfant</strong></span></td>
        <td style="border-bottom: solid 1px navy; width: 150px">
          <span style="font-family: Arial"><strong>2 enfants</strong></span></td>
        <td style="border-bottom: solid 1px navy; width: 150px">
          <span style="font-family: Arial"><strong>3 enfants</strong></span></td>
      </tr>
      <tr>
        <td style="width: 146px; height:20px">
          par <b>trimestre</b></td>
        <td style="width: 150px; height:20px">
          �130</td>
        <td style="width: 150px; height:20px">
          �230
        </td>
        <td style="width: 150px; height:20px">
          �300
        </td>
      </tr>
            <tr>
        <td style="width: 146px; height:20px">
          par <b>an</b></td>
        <td style="width: 150px; height:20px">
          �360 (au lieu de �390)</td>
        <td style="width: 150px; height:20px">
          �648 (au lieu de �690)
        </td>
        <td style="width: 150px; height:20px">
          �876 (au lieu de �900)
        </td>
      </tr>
                  <tr>
        <td style="width: 146px; height:20px">
          par <b>mois</b></td>
        <td style="width: 150px; height:20px">
          �30</td>
        <td style="width: 150px; height:20px">
          �54
        </td>
        <td style="width: 150px; height:20px">
          �73
        </td>
      </tr>
    </table>
<br />
<p>Une cotisation de <b>�10</b> par �l�ve pour les fournitures est �galement due lors de la premi�re inscription et au d�but de chaque ann�e scolaire. Cette cotisation est r�duite pour les arriv�es en fin d'ann�e.</p>

<p>Le tarif d'une s�ance d'essai est le tarif plein pour une s�ance. Un paiement � l'avance pour le trimestre est demand� lors de l'inscription d�finitive (ce tarif sera calcul� au pro-rata pour les inscriptions en cours de trimestre).</p>

<p>Note: les frais d'inscription vers�s ne sont <b>pas remboursables</b>.</p>

<h2>Modalit�s de paiement</h2>
<p>Pour r�server la place de votre enfant pour la prochaine rentr�e, nous vous demandons de payer un acompte de 50% ou de commencer vos virement mensuels six semaines avant la rentr�e ou aussi vite que possible. Le solde est d� au plus tard deux semaines avant la rentr�e. Assurez-vous d'avoir bien rempli notre <a href="registration.aspx">feuille d'inscription</a> avant d'envoyer votre paiement.</p>

<h2>M�thodes de paiement</h2>
<p>Les m�thodes de paiement suivantes sont disponibles :</p>

<h3>Ch�que</h3>
<p>Le ch�que doit �tre tir� sur une banque ou building society anglaise et fait � l'ordre de "La Marelle". Vous pouvez le remettre en main propre � notre pr�sidente pendant les cours, ou l'envoyer par courrier au <b>5 Eynsford Road, Greenhithe DA9 9HB</b>.</p>

<h3>Virement bancaire ou virement mensuel</h3>
<p>Veuillez <a href="contact.aspx">nous contacter</a> pour obtenir nos coordonn�es bancaires. Vous devez mettre en place le virement mensuel directement aupr�s de votre banque.</p>

<p>Veuillez donner le nom de vos enfants comme r�f�rence pour que nous puissions v�rifier quels �l�ves ont pay�.</p>
 
<p>Note: vous devez continuer les virements mensuels m�me les mois o� il n'y a pas de cours, puisque le tarif mensuel est calcul� pour couvrir nos frais sur 12 mois. Si vous arr�tez les paiements, votre enfant risque de perdre sa place � l'�cole.</p>

<h3>Paypal</h3>
<p>Vous pouvez nous payer en utilisant une carte bancaire, ou votre propre compte Paypal, en utilisant le formulaire suivant. Les prix sont major�s pour couvrir les frais d'encaissement de Paypal.</p>

<input type="hidden" name="cmd" value="_s-xclick">
<input type="hidden" name="hosted_button_id" value="2Y7A45X3WSZYY">
<table>
<tr><td><input type="hidden" name="on0" value="Fees">Fees</td></tr><tr><td><select name="os0">
	<option value="1 child">1 enfant (�132.00)
	<option value="2 children">2 enfants (�233.50)
	<option value="3 children">3 enfants (�304.50)
</select> </td></tr>
<tr><td><input type="hidden" name="on1" value="Children's name">Children's name</td></tr><tr><td><input type="text" name="os1" maxlength="60">
</table>
<input type="hidden" name="currency_code" value="GBP">
<asp:ImageButton ID="ImageButton2" runat="server" PostBackUrl="https://www.paypal.com/cgi-bin/webscr" ImageUrl="https://www.paypal.com/fr_FR/i/btn/btn_paynowCC_LG.gif" AlternateText="PayPal - The safer, easier way to pay online." />
<img alt="" border="0" src="https://www.paypal.com/en_GB/i/scr/pixel.gif" width="1" height="1">

  <p>&nbsp;
  </p>
  
</asp:Content>

