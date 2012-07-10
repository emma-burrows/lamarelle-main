<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="MenuPlaceHolder" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<!-- Download SimpleViewer at www.airtightinteractive.com/simpleviewer -->
<script type="text/javascript" src="../images/swfobject.js"></script>
	<div id="flashcontent">SimpleViewer requires JavaScript and the Flash Player. <a href="http://www.macromedia.com/go/getflashplayer/">Get Flash.</a>	</div>
	
	<script type="text/javascript">

    var loc = location.search.substring(1, location.search.length);
    var param_value = false;
    var params = loc.split("&");
    for (i=0; i<params.length;i++) {
      param_name = params[i].substring(0,params[i].indexOf('='));
      if (param_name == "path") {
          param_value = params[i].substring(params[i].indexOf('=')+1)
      }
      else {
            param_value = "images/hstoate"
      };
    }

    var fo = new SWFObject("../images/viewer.swf", "viewer", "100%", "600", "8", "#F0F8FF");
    		
    // SIMPLEVIEWER CONFIGURATION OPTIONS
    // To use an option, uncomment it by removing the "//" at the start of the line
    // For a description of config options, go to: 
    // http://www.airtightinteractive.com/simpleviewer/options.html
	
    fo.addVariable("xmlDataPath", "../images/imageData.aspx?path=../" + param_value );
    //fo.addVariable("firstImageIndex", "5");	
    //fo.addVariable("langOpenImage", "Open Image in New Window");
    //fo.addVariable("langAbout", "About");	
    //fo.addVariable("preloaderColor", "0xFFFFFF");
	
    fo.write("flashcontent");	
	    
	</script>	


</asp:Content>

