using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.SqlClient;
using System.Web;
using System.Configuration;
using System.Data;

/// <summary>
/// Summary description for DAL
/// </summary>
public class DAL
{
	public DAL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static SqlConnection getconnection()
    {
        string s = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(s);
        return con;
    }

    public static void processquery(string q)
    {
        SqlConnection c = getconnection();
        SqlCommand cmd = new SqlCommand(q, c);
        c.Open();
        cmd.ExecuteNonQuery();
        c.Close();
    }

    public static DataTable getrecords(string q)
    {

        SqlConnection c = getconnection();
        DataTable dt = new DataTable();
        SqlDataAdapter adp = new SqlDataAdapter(q, c);
        adp.Fill(dt);
        return dt;
    }
}