using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



public partial class Log_In : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    string str2 = "";
    protected void Page_Load(object sender, EventArgs e)
    {
            string st;
            st = System.Configuration.ConfigurationManager.AppSettings["cn"];

            cn = new SqlConnection(st);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql1 = " select * from [Registration] where logid = @logid and conpassword = @conpassword";
        cmd = new SqlCommand(sql1, cn);
        cmd.Parameters.AddWithValue("logid", TextBoxp1.Text);
        cmd.Parameters.AddWithValue("conpassword", TextBox2.Text);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            dr.Close();
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Write("<script>alert('Congrats your Login is Successfully');</script>");
            {
                Session["ID"] = TextBoxp1.Text;
                Response.Redirect("Log Home.aspx");
            }
        }
        else
        {
            
            Label1.Text = "Enter Valid LoginID/Password";
        }
        
    }    
}