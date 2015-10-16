using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.OleDb;
using System.Data;

public partial class Roles_Lab_Assistant_delcomp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        serialno.Enabled = false;
        txtsysno.Enabled = false;
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
            newItem.Text = "<Select Subject>";
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

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlConnection c = DAL.getconnection();
        SqlCommand cmd = c.CreateCommand();
        cmd.CommandType = System.Data.CommandType.Text;
        cmd.CommandText = "SELECT serialno,sysno FROM [dbo].[addcomp] WHERE compID = '"+DropDownList2.SelectedItem.ToString()+"'";
        c.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            serialno.Text = dr.GetString(0);
            txtsysno.Text = dr.GetString(1);
        }
        
    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        serialno.Enabled = true;
        txtsysno.Enabled = true;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            DAL.processquery("update [dbo].[addcomp] set type= '" + DropDownList1.SelectedItem.ToString() + "',serialno='" + serialno.Text + "',sysno='" + txtsysno.Text + "' where compID='" + DropDownList2.SelectedItem.ToString() + "' ");
            Response.Write("<script LANGUAGE='JavaScript' >alert('Component Updated Successfully');document.location='" + ResolveClientUrl("~/Roles/Lab-Assistant/Manage.aspx") + "';</script>");
        }
        catch (Exception ex)
        {
            Response.Write("<script LANGUAGE='JavaScript' >alert('Error');document.location='" + ResolveClientUrl("~/Roles/Lab-Assistant/addcomp.aspx") + "';</script>");
        }
    }
}