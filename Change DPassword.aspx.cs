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

public partial class Change_DPassword : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
       
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];

        cn = new SqlConnection(st);
        {
            string s;
            s = System.Configuration.ConfigurationManager.AppSettings["cn"];

            cn = new SqlConnection(s);
            string sql = "Select * from Doctors where department='" + Session["DR"] + "'";
            SqlCommand cmd = new SqlCommand(sql, cn);
            cn.Open();
            using (SqlDataReader dr = cmd.ExecuteReader())
            {
                if (dr.Read())
                {

                    Label2.Text = dr["department"].ToString();
                    Label3.Text = dr["logid"].ToString();

                }
            } cn.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        string qry;
        qry = "select * from Doctors where department='" + Label2.Text + "' and logid='" + Label3.Text + "' and password='" + TextBoxp5.Text + "'";
        SqlCommand cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();

        if (dr.Read())
        {
            dr.Close();
            cn.Close();
            {
                cn.Open();
                cmd = new SqlCommand("update Doctors set password=@cp where logid=@li", cn);
                cmd.Parameters.AddWithValue("@li", Label3.Text);
                cmd.Parameters.AddWithValue("@cp", TextBox4.Text);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            Label1.Text = "Password Change Succesfully";
        }
        else
        {
            Label1.Text = "Enter Valid Information";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        
        TextBoxp2.Text = "";
        TextBoxp5.Text = "";
        TextBox4.Text = "";
        Label1.Text = "";
    }
}