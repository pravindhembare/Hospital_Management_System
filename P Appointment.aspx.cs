using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class P_Appointment : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];

        cn = new SqlConnection(st);

        if (Session["ID"] == null)
        {
            Response.Redirect("Log In.aspx");
        }
        else
        {
            string user = Session["ID"].ToString();
            DataTable dt = new DataTable();
            cn.Open();
            SqlDataReader dr = null;
            cmd = new SqlCommand("Select * from Appointment where logid=@u", cn);
            cmd.Parameters.AddWithValue("@u", user);
            dr = cmd.ExecuteReader();
            dr.Read();
            cn.Close();
        }
    }
   
}