using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["user"] = "";
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection con = DAL.getconnection();
            string query1 = "Select count(*) from [dbo].[oc] where ID='" + txtusr.Text + "' and pwd='" + txtpwd.Text + "' and role= '" + DropDownList1.SelectedItem.ToString() + "' ";
            SqlCommand cmd1 = new SqlCommand(query1, con);
            con.Open();
            Int32 verify = Convert.ToInt32(cmd1.ExecuteScalar());

            if (verify > 0)
            {
                Session["user"] = txtusr.Text;
                if (DropDownList1.SelectedItem.ToString() == "Lab Assistant")
                    Response.Redirect("~/Roles/Lab-Assistant/Manage.aspx");
                else if (DropDownList1.SelectedItem.ToString() == "HOD")
                    Response.Redirect("~/Roles/HOD/HOD.aspx");
                else if (DropDownList1.SelectedItem.ToString() == "Administrator")
                    Response.Redirect("~/Roles/Administrator/Administrator.aspx");
                else if (DropDownList1.SelectedItem.ToString() == "Director")
                    Response.Redirect("~/Roles/Director/Director.aspx");
            }
            else
            {
                Response.Write("<script LANGUAGE='JavaScript' >alert('Records Not Found');document.location='" + ResolveClientUrl("~/Login.aspx") + "';</script>");
            }


            con.Close();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message.ToString());
        }
    }
}