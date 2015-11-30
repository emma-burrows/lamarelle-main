using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;

/// <summary>
/// Summary description for Fees
/// </summary>
public partial class en_Fees : LocalizedPage
{
  String lang = Thread.CurrentThread.CurrentCulture.TwoLetterISOLanguageName;
  Decimal YearlyOneHour = 240;
  Decimal YearlyThree1 = 420;
  Decimal YearlyThree2 = 756;
  Decimal YearlyThree3 = 340; // 1020 / 3;
  Decimal HourlyOneHour = 8;
  Decimal HourlyThree1 = 15;
  Decimal HourlyThree2 = 13.5M; // 27 / 2
  Decimal HourlyThree3 = 11.66M; // 35 / 3
  int SessionsPerTerm = 10;
  int SessionsPerYear = 30;
  

  private Decimal PaypalFee(Decimal fee) {
    return Math.Round(fee + ((fee / 100) * 3.4M) + 0.2M, 2);
  }

  protected void Page_Load(object sender, EventArgs e)
  {
    Paypal1.Text = "£" + PaypalFee(HourlyThree1 * SessionsPerTerm);
    Paypal2.Text = "£" + PaypalFee(HourlyThree2 * 2 * SessionsPerTerm);
    Paypal3.Text = "£" + PaypalFee(HourlyThree3 * 3 * SessionsPerTerm);
  }

  protected void Submit_Click(object sender, EventArgs e)
  {
    Decimal total;

    Int32 hours = Convert.ToInt32(Hours.SelectedValue);
    Int32 children = Convert.ToInt16(Children.Text);
    String term = Term.SelectedValue;
    Decimal perchild = 0;
    Int32 sessions = 0;

    if (term == "year")
    {
      if (hours == 1)
      {
        total = YearlyOneHour * children;
      }
      else
      {
        switch (children)
        {
          case 1:
            total = YearlyThree1;
            break;
          case 2:
            total = YearlyThree2;
            break;
          default:
            total = YearlyThree3 * children;
            break;
        }
      }
    }
    else
    {
      // Price per child per session
      if (hours == 1)
      {
        perchild = HourlyOneHour;
      }
      else
      {
        switch (children)
        {
          case 1:
            perchild = HourlyThree1;
            break;
          case 2:
            perchild = HourlyThree2;
            break;
          default:
            perchild = HourlyThree3;
            break;
        }
      }

      // Number of sessions
      switch (term)
      {
        case "session":
          sessions = 1;
          break;
        case "term":
          sessions = SessionsPerTerm;
          break;
        default:
          sessions = 30;
          break;
      }
      total = Convert.ToInt32(children * perchild * sessions);
    }

    if (lang == "fr")
    {
      String childstring = children == 1 ? "enfant" : "enfants";
      String heures = "heures";
      switch (term)
      {
        case "session":
          term = "une séance";
          break;
        case "term":
          term = "un trimestre";
          break;
        case "year":
          term = "une année";
          break;
      }
      if (hours == 1)
        heures = "heure";

      Result.Text = "Tarif pour " + children + " " + childstring + " pour " + term + " (séances de " + hours + " " + heures + "): <b>£" + total + "</b>";
      if (term != "une séance")
        Result.Text += " + frais supplémentaires (voir ci-dessous)";
    }
    else
    {
      String childstring = children == 1 ? "child" : "children";
      Result.Text = "Fee for " + children + " " + childstring + " for a " + term + " (" + hours + "-hour sessions): <b>£" + total + "</b>";
      if (term != "session")
        Result.Text += " + additional fees if applicable (see below)";
    }

    ResultDiv.Visible = true;
  }

}