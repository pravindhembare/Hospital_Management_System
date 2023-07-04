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

public partial class Patient_Bill : System.Web.UI.Page
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
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            cn.Open();
            cmd = new SqlCommand("Select * from Registration R INNER JOIN Patient P ON (R.logid = P.id) where R.logid=@pid",cn);
            cmd.Parameters.AddWithValue("@pid", TextBox1.Text);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            cn.Close();
            display();
        }
    }
    public void display()
    {
        if (TextBox1.Text != "")
        {           
            cn.Open();
            cmd = new SqlCommand("Select * from Registration R INNER JOIN Patient P ON (R.logid = P.id) where R.logid=@pid",cn);
            cmd.Parameters.AddWithValue("@pid", TextBox1.Text);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            cn.Close();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label20.Text = GridView1.SelectedRow.Cells[1].Text;
        Label3.Text = GridView1.SelectedRow.Cells[2].Text;
        Label7.Text = GridView1.SelectedRow.Cells[3].Text;
        Label9.Text = GridView1.SelectedRow.Cells[4].Text;
        Label5.Text = GridView1.SelectedRow.Cells[5].Text;
        Label13.Text = GridView1.SelectedRow.Cells[6].Text;
        Label17.Text = GridView1.SelectedRow.Cells[7].Text;
        Label18.Text = GridView1.SelectedRow.Cells[8].Text;
        Label22.Text = GridView1.SelectedRow.Cells[9].Text;
        Label24.Text = GridView1.SelectedRow.Cells[10].Text;
        Label26.Text = GridView1.SelectedRow.Cells[11].Text;
        
    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {
        try
        {
            Label30.Text = (float.Parse(TextBox6.Text) + float.Parse(TextBox49.Text) + float.Parse(TextBox44.Text) + float.Parse(TextBox42.Text) + float.Parse(TextBox18.Text) + float.Parse(TextBox21.Text)).ToString();
            Label31.Text = ((float.Parse(TextBox6.Text) + float.Parse(TextBox49.Text) + float.Parse(TextBox44.Text) + float.Parse(TextBox42.Text) + float.Parse(TextBox18.Text) + float.Parse(TextBox21.Text)) * 0.07).ToString();
            Label27.Text = (float.Parse(Label30.Text) + float.Parse(Label31.Text)).ToString();               
        }
        catch
        {
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox6.Text = "";
        TextBox49.Text = "";
        TextBox44.Text = "";
        TextBox42.Text = "";
        Label27.Text = "";
        Label30.Text = "";
        Label31.Text = "";
        TextBox18.Text = "";
        TextBox21.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into Bill (pid,date,amt,des1,des2,des3,des4,des5,des6,amt1,amt2,amt3,amt4,amt5,amt6,dep,ad) values(@p,@d,@a,@d1,@d2,@d3,@d4,@d5,@d6,@a1,@a2,@a3,@a4,@a5,@a6,@de,@ad)", cn);
        cmd.Parameters.AddWithValue("@p", Label20.Text);        
        cmd.Parameters.AddWithValue("@d", TextBox3.Text);
        cmd.Parameters.AddWithValue("@a", Label27.Text);
        cmd.Parameters.AddWithValue("@d1", TextBox45.Text);
        cmd.Parameters.AddWithValue("@d2", TextBox9.Text);
        cmd.Parameters.AddWithValue("@d3", TextBox12.Text);
        cmd.Parameters.AddWithValue("@d4", TextBox15.Text);
        cmd.Parameters.AddWithValue("@d5", TextBox46.Text);
        cmd.Parameters.AddWithValue("@d6", TextBox20.Text);
        cmd.Parameters.AddWithValue("@a1", TextBox6.Text);
        cmd.Parameters.AddWithValue("@a2", TextBox49.Text);
        cmd.Parameters.AddWithValue("@a3", TextBox44.Text);
        cmd.Parameters.AddWithValue("@a4", TextBox42.Text);
        cmd.Parameters.AddWithValue("@a5", TextBox18.Text);
        cmd.Parameters.AddWithValue("@a6", TextBox21.Text);
        cmd.Parameters.AddWithValue("@de", Label17.Text);
        cmd.Parameters.AddWithValue("@ad", System.Convert.ToDateTime(Label22.Text));
        
        cmd.ExecuteNonQuery();
        cn.Close();
        Label32.Text = "Patient Bill save Succesfully";
    }
}
