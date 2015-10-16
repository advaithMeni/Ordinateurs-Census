using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Reporterr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList2.Items.Clear();
        string q = "select compID from [dbo].[addcomp]";

        if (DropDownList1.SelectedItem.ToString() == "Keyboard")
        {
            q = "select compID from [dbo].[addcomp] where compID like 'k%'";

        }
        else if (DropDownList1.SelectedItem.ToString() == "Mouse")
        {
            q = "select compID from [dbo].[addcomp] where compID like 'm%'";

        }
        SqlConnection con = DAL.getconnection();
        SqlCommand cmd = new SqlCommand(q, con);
        SqlDataReader reader;

        try
        {
            ListItem newItem = new ListItem();
            newItem.Text = "<Select ID>";
            newItem.Value = "0";
            DropDownList2.Items.Add(newItem);

            con.Open();
            reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                newItem = new ListItem();
                newItem.Value = reader["compID"].ToString();
                DropDownList2.Items.Add(newItem);
            }
            reader.Close();
        }
        catch (Exception err)
        {
            //TODO
        }
        finally
        {
            con.Close();
        }

    }
    protected void btnreport_Click(object sender, EventArgs e)
    {
        try
        {

            DAL.processquery("insert into [dbo].[error](type,compID,userID,reportdesc,dor,tor) values('" + DropDownList1.SelectedItem.ToString() + "','" + DropDownList2.SelectedItem.ToString() + "','" + (string)Session["user"] + "','" + TextBox1.Text + "', '" + DateTime.Now.ToShortDateString() + "','" + DateTime.Now.ToShortTimeString() + "') ");
            Response.Write("<script LANGUAGE='JavaScript' >alert('Component Reported Successfully');document.location='" + ResolveClientUrl("~/Roles/Lab-Assistant/Manage.aspx") + "';</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Error');document.location='" + ResolveClientUrl("~/Roles/Lab-Assistant/addcomp.aspx") + "';</script>");
        }
    }
}