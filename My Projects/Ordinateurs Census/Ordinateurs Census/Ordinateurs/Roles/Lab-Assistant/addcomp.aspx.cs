using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Roles_Lab_Assistant_addcomp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void addcomponent_Click(object sender, EventArgs e)
    {
        try
        {
            DAL.processquery("insert into [dbo].[addcomp] values('" + compid.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + serialno.Text + "','" + txtsysno.Text + "')");
            DAL.processquery("insert into [dbo].[Table](name,status,reportdesc,dor,tor) values('" + compid.Text + "','Added','" + (string)Session["user"] + "', '" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "')");
            Response.Write("<script LANGUAGE='JavaScript' >alert('Component Added Successfully');document.location='" + ResolveClientUrl("~/Roles/Lab-Assistant/Manage.aspx") + "';</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Error');document.location='" + ResolveClientUrl("~/Roles/Lab-Assistant/addcomp.aspx") + "';</script>");
        }
    }
}