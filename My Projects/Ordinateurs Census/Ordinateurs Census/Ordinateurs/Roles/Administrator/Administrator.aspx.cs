using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] == "")
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            Label1.Text = "Hello " + (string)Session["user"] + "!!";
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("managecp.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("managelb.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("chkprb.aspx");
    }
}