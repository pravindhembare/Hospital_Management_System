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

public partial class Dr_Login : System.Web.UI.Page
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
        string sql1 = " select * from [Doctors] where department =@department and logid = @logid and password = @password";
        cmd = new SqlCommand(sql1, cn);
        cmd.Parameters.AddWithValue("department", DropDownList1.Text);
        cmd.Parameters.AddWithValue("logid", TextBoxd1.Text);
        cmd.Parameters.AddWithValue("password", TextBox2.Text);
        cn.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            dr.Close();
            cmd.ExecuteNonQuery();
            cn.Close();
            Session["DR"] = DropDownList1.Text;
            Response.Redirect("Log DrHome.aspx");
        }
        else
        {
            Label1.Text = "Enter Valid LoginID/Password";
        }
    }
}