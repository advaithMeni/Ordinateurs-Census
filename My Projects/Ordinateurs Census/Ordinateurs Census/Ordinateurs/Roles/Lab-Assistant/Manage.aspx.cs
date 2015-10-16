using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Manage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "Role : Lab Assitant";
        
        if (Session["user"] == "")
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {
            string s=(string)Session["user"];
            Label1.Text = "Name : "+s+"!!";
            DataTable dt= DAL.getrecords("select lab from [dbo].[oc] where ID='"+s+"'");
            DataList1.DataSource = dt;
            DataList1.DataBind();
            
        }
      
    }
   
    protected void addcomponent_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Roles/Lab-Assistant/addcomp.aspx");
    }
    protected void delcomponent_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Roles/Lab-Assistant/delcomp.aspx");
    }
    protected void updcomponent_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Roles/Lab-Assistant/updcomp.aspx");
    }
    protected void reporterr_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Roles/Lab-Assistant/Reporterr.aspx");
    }
    protected void shwcmp_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Roles/Lab-Assistant/shwcmp.aspx");
    }
}