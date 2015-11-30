<%@ Application Language="C#" %>
<%@ Import Namespace="System.Threading" %>
<%@ Import Namespace="System.Globalization" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        // Code that runs on application startup

    }
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

    protected void Application_BeginRequest(object sender, EventArgs e)
    { 

      String currentPath = Request.Path.ToLower();

      // Set the language based on the requested path or the cookie,
      if (currentPath.Contains("/fr/") || currentPath.Contains("/en/"))
      {
        string culture = "en-GB";

        if (currentPath.Contains("/fr/"))
        {
          culture = "fr-FR";
        }

        Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(culture);
        Thread.CurrentThread.CurrentUICulture = new CultureInfo(culture);
        //Session["LaMarelleLang"] = culture;
        Response.Cookies["LaMarelleLang"].Value = culture;
        Response.Cookies["LaMarelleLang"].Expires = DateTime.Now.AddYears(1);

        // Redirect to the common page in /p/
        Context.RewritePath(currentPath.Replace("/fr/", "/p/").Replace("/en/", "/p/"), "", "lang=" + culture);

      }
      else
      {
        // Don't change the culture if this is a request for /p/, as this would include 
        // paths rewritten by the code above - ie redirected from a language-specific URL
      }

    }
       
</script>
