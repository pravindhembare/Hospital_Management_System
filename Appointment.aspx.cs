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

public partial class Appointment : System.Web.UI.Page
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

        }
        string sql = "Select * from Registration where logid='" + Session["ID"] + "'";
        SqlCommand cmd = new SqlCommand(sql, cn);
        cn.Open();
        using (SqlDataReader dr = cmd.ExecuteReader())     
        {
            if (dr.Read())
            {

                Label2.Text = dr["name"].ToString();
                Label3.Text = dr["mobail"].ToString();
            }
        } cn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into Appointment (name,phone,gender,date,time,department,concern,logid) values(@n,@p,@g,@d,@t,@dp,@c,@id)", cn);
        cmd.Parameters.AddWithValue("@n", Label2.Text);
        cmd.Parameters.AddWithValue("@p", Label3.Text);
        cmd.Parameters.AddWithValue("@g", RadioButtonList1.Text);
        cmd.Parameters.AddWithValue("@t", RadioButtonList2.Text);
        cmd.Parameters.AddWithValue("@d", TextBox4.Text);
        cmd.Parameters.AddWithValue("@dp", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@c", TextBox5.Text);
        cmd.Parameters.AddWithValue("@id", (string)Session["ID"]);
        cmd.ExecuteNonQuery();
        cn.Close();       
        Label1.Text = "Appointment Book Succesfully";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        TextBox4.Text = "";
        TextBox5.Text = "";
        DropDownList1.Text = "";
        RadioButtonList1.Text = "";
        RadioButtonList2.Text = "";
        Label1.Text = "";
    }
}