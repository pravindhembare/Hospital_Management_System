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

public partial class Forgate_Password : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];

        cn = new SqlConnection(st);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        string qry;
        qry = "select * from Registration where logid='" + TextBoxp1.Text + "' and prq='" + DropDownList1.Text + "' and ans='" + TextBoxa5.Text + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        
        if (dr.Read())
            
        {            
           dr.Close(); 
            cn.Close();
            {
            cn.Open();
            cmd = new SqlCommand("update Registration set conpassword=@cp,logid=@li where logid=@li", cn);
            cmd.Parameters.AddWithValue("@li", TextBoxp1.Text);           
            cmd.Parameters.AddWithValue("@cp", TextBox4.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            }
            Label1.Text = "Password Reset Succesfully";
        }
        else
        {
            Label1.Text = "Enter Valid Information";
        }

        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBoxp1.Text = "";
        TextBoxp2.Text = "";
        TextBoxa5.Text = "";
        DropDownList1.Text = "";
        TextBox4.Text = "";
        Label1.Text = "";
    }
    
}