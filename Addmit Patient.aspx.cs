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

public partial class Addmit_Patient : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into Registration (name,mobail,email,age,address,logid,conpassword,prq,ans) values(@n,@m,@e,@a,@ad,@l,@c,@p,@an)", cn);
        cmd.Parameters.AddWithValue("@n", TextBoxn1.Text);
        cmd.Parameters.AddWithValue("@m", System.Convert.ToInt64(TextBoxmn2.Text));
        cmd.Parameters.AddWithValue("@e", TextBoxe3.Text);
        cmd.Parameters.AddWithValue("@a", TextBoxmn3.Text);
        cmd.Parameters.AddWithValue("@ad", TextBox4.Text);
        cmd.Parameters.AddWithValue("@l", TextBoxmn5.Text);
        cmd.Parameters.AddWithValue("@c", TextBoxmn6.Text);
        cmd.Parameters.AddWithValue("@p", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@an", TextBoxmn7.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        display();
        Label6.Text = "Patient Record Added Succesfully";
    }
    public void display()
    {
        cn.Open();
        cmd = new SqlCommand("Select * from Registration", cn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        cn.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TextBoxn1.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBoxmn2.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBoxe3.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBoxmn3.Text = GridView1.SelectedRow.Cells[4].Text;
        TextBox4.Text = GridView1.SelectedRow.Cells[5].Text;
        TextBoxmn5.Text = GridView1.SelectedRow.Cells[6].Text;
        TextBoxmn4.Text = GridView1.SelectedRow.Cells[7].Text;
        DropDownList1.Text = GridView1.SelectedRow.Cells[8].Text;
        TextBoxmn7.Text = GridView1.SelectedRow.Cells[9].Text;
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("update Registration set name=@n,mobail=@m,email=@ad,age=@e,address=@a,logid=@g,conpassword=@b,prq=@d,ans=@t where logid=@id", cn);
        cmd.Parameters.AddWithValue("@n", TextBoxn1.Text);
        cmd.Parameters.AddWithValue("@m", System.Convert.ToInt64(TextBoxmn2.Text));
        cmd.Parameters.AddWithValue("@ad", TextBoxe3.Text);
        cmd.Parameters.AddWithValue("@e", TextBoxmn3.Text);
        cmd.Parameters.AddWithValue("@a", TextBox4.Text);
        cmd.Parameters.AddWithValue("@g", TextBoxmn5.Text);
        cmd.Parameters.AddWithValue("@b", TextBoxmn6.Text);
        cmd.Parameters.AddWithValue("@d", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@t", TextBoxmn7.Text);
        cmd.Parameters.AddWithValue("@id", TextBoxmn5.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        display();
        Label6.Text = "Patient Record Update Succesfully";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("delete from Registration where logid=@id", cn);
        cmd.Parameters.AddWithValue("@id", TextBoxmn5.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        display();
        Label6.Text = "Patient Record Deleted Succesfully";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBoxn1.Text = "";
        TextBoxmn2.Text = "";
        TextBoxe3.Text = "";
        TextBox4.Text = "";
        TextBoxmn3.Text = "";
        DropDownList1.Text = "";
        TextBoxmn5.Text = "";
        TextBoxmn6.Text = "";
        TextBoxmn7.Text = "";
        TextBoxmn4.Text = "";
        Label6.Text = "";
    }
}