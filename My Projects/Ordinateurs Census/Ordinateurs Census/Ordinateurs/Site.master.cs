using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Site : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HyperLink1.Visible = false;
        if (Session["user"] != "")
        {
            LoginView1.Visible = false;
            HyperLink1.Visible = true;
           
        }
    }
    protected void HyperLink2_Click(object sender, EventArgs e)
    {
        if (Session["user"] != "")
        {
            string currentUrl = Request.Url.AbsoluteUri;
            if (currentUrl.Contains("Lab-Assistant"))
            {
                Response.Redirect("~/Roles/Lab-Assistant/Manage.aspx");
            }
            else if (currentUrl.Contains("HOD"))
            {
                Response.Redirect("~/Roles/HOD/HOD.aspx");
            }
            else if (currentUrl.Contains("Administrator"))
            {
                Response.Redirect("~/Roles/Administrator/Administrator.aspx");
            }
            else if (currentUrl.Contains("Director"))
            {
                Response.Redirect("~/Roles/Director/Director.aspx");
            }
        }
        else
        {
            Response.Redirect("~/");
        }
    }
}
