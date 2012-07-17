using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class baby_year3_4_Default : System.Web.UI.Page
{
    private DataSet dsDescriptions;
    private DataView dvDescriptions;

    int lastUpdate = 0901;
    string lastFolder = "../images/HStoate";

    protected void Page_Load(object sender, EventArgs e)
    {
        //Get list of images from the path in directory
        DirectoryInfo dirInfo = new DirectoryInfo(Server.MapPath(lastFolder));

        //Getting image files
        FileInfo[] imgFiles = filterForImages(dirInfo.GetFiles("*.jpg"));
        Array.Sort(imgFiles, new MyDateSorter());
        FillDataSet(dirInfo.FullName);

        //Determine the current image to show
        int imgIndex = 0;
        try
        {
            if (!(Request.QueryString["N"] == null))
            {
                imgIndex = int.Parse(Request.QueryString["N"]);
            }
        }
        catch (Exception ex1)
        {
            Response.Write(ex1);
        }

        //showing the current image title
        imgDesc.Text = GetDescription(imgFiles[imgIndex].Name);

        //Showing the current image 
        imgLarge.ImageUrl = lastFolder + "\\" + Path.GetFileName(imgFiles[imgIndex].Name);

        //navigation
        if (imgIndex > 0)
        {
            cmdPrev.Visible = true;
            cmdPrev.PostBackUrl = "slideshow.aspx?N=" + (imgIndex - 1);
        }
        else
        {
            cmdPrev.Visible = false;
        }
        if (imgIndex < (imgFiles.Length - 1))
        {
            cmdNext.Visible = true;
            cmdNext.PostBackUrl = "slideshow.aspx?N=" + (imgIndex + 1);
        }
        else
        {
            cmdNext.Visible = false;
        }
    }

    //Defining the function below
    private FileInfo[] filterForImages(FileInfo[] imgFiles)
    {
        ArrayList newImg = new ArrayList(imgFiles.Length);
        for (int i = 0; i <= (imgFiles.Length - 1); i++)
        {
            //Making sure only the image files appears on slide show.
            if (imgFiles[i].Extension==".jpg")
            {
                newImg.Add(imgFiles[i]);
            }
        }
        return (FileInfo[])(newImg.ToArray(typeof(FileInfo)));

    }

    void FillDataSet(string path)
    {
        string descFile = path + "/descriptions.xml";
        dsDescriptions = new DataSet();
        FileInfo fiDescFile = new FileInfo(descFile);

        if (fiDescFile.Exists)
        {
            dsDescriptions.ReadXml(descFile);
            dvDescriptions = new DataView(dsDescriptions.Tables[0]);
        }

    }

    string GetDescription(string photo)
    {
        if (!(dvDescriptions == null))
        {
            dvDescriptions.RowFilter = "photo='" + photo + "'";
            if (dvDescriptions.Count > 0)
            {
                string result = dvDescriptions[0].Row.ItemArray[1].ToString() + "<br/><small>" + dvDescriptions[0].Row.ItemArray[2].ToString() + " (" + dvDescriptions[0].Row.ItemArray[3].ToString() + ")</small>";
                return result.Replace("\\", "");
            }
            else
            {
                return photo;
            }
        }
        return "";
    }

}
public class MyDateSorter : IComparer
{
    #region IComparer Members
    public int Compare(object x, object y)
    {
        if (x == null && y == null)
        {
            return 0;
        }
        if (x == null)
        {
            return -1;
        }
        if (y == null)
        {
            return 1;
        }
        FileInfo xInfo = (FileInfo)x;
        FileInfo yInfo = (FileInfo)y;
        return xInfo.Name.CompareTo(yInfo.Name);
    }
    #endregion
}
