using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class P_Contact : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];

        cn = new SqlConnection(st);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into PtoDContact (department,logid,pmessage) values(@dp,@id,@p)", cn);        
        cmd.Parameters.AddWithValue("@dp", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@id", (string)Session["ID"]);
        cmd.Parameters.AddWithValue("@p", TextBox1.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
}