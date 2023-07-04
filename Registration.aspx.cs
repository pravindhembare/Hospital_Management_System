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

public partial class Registration : System.Web.UI.Page
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
        cmd = new SqlCommand("insert into Registration (name,mobail,email,age,address,logid,conpassword,prq,ans) values(@n,@m,@e,@a,@ad,@l,@c,@p,@an)", cn);
        cmd.Parameters.AddWithValue("@n", TextBoxn1.Text);
        cmd.Parameters.AddWithValue("@m", System.Convert.ToInt64(TextBoxp2.Text));
        cmd.Parameters.AddWithValue("@e", TextBoxe3.Text);
        cmd.Parameters.AddWithValue("@a", TextBox4.Text);
        cmd.Parameters.AddWithValue("@ad", TextBox5.Text);
        cmd.Parameters.AddWithValue("@l", TextBoxl6.Text);
        cmd.Parameters.AddWithValue("@c", TextBox8.Text);
        cmd.Parameters.AddWithValue("@p", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@an", TextBoxa9.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        Label1.Text = "Your Registration successfully completed. ";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBoxn1.Text = "";
        TextBoxp2.Text = "";
        TextBoxe3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBoxl6.Text = "";
        TextBoxp7.Text = "";
        TextBox8.Text = "";
        DropDownList1.Text = "";
        TextBoxa9.Text = "";
        Label1.Text = "";
    }
}