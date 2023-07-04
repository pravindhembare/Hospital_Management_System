using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class AAppointment : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];

        cn = new SqlConnection(st);
        display();
        
    }
    public void display()
    {
        cn.Open();
        cmd = new SqlCommand("Select * from Appointment where date=@pid", cn);
        cmd.Parameters.AddWithValue("@pid", TextBox1.Text);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        cn.Close();
    }
   
}
