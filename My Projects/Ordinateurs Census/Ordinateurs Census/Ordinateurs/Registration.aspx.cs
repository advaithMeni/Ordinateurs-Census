using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            try
            {
                if (DropDownList1.SelectedItem.ToString() != "Select Choice")
                {
                    DAL.processquery("insert into [dbo].[oc] values('" + txtusr.Text + "','" + DropDownList1.SelectedItem.ToString() + "','" + txtemail.Text + "','" + txtpwd.Text + "','" + txtcpwd.Text + "','')");
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Registration Successful');document.location='" + ResolveClientUrl("~/Login.aspx") + "';</script>");
                }
                else
                {
                    Label6.Text = "Select a Role";
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Error');document.location='" + ResolveClientUrl("~/Registration.aspx") + "';</script>");
            }
      
    }
}