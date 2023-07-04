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

public partial class Contact_US : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];

        cn = new SqlConnection(st);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into Message (name,mobail,email,department,message) values(@n,@m,@e,@d,@ms)", cn);
        cmd.Parameters.AddWithValue("@n", TextBoxn1.Text);
        cmd.Parameters.AddWithValue("@m", System.Convert.ToInt64(TextBoxmn2.Text));
        cmd.Parameters.AddWithValue("@e", TextBox3.Text);
        cmd.Parameters.AddWithValue("@d", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@ms", TextBox4.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Label6.Text = "Message Sent Succesfully";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBoxn1.Text = "";
        TextBoxmn2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        DropDownList1.Text = "";
        Label6.Text = "";
    }
}