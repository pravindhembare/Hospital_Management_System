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

public partial class D_Contact : System.Web.UI.Page
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
    public void display()
    {
        string user = Session["DR"].ToString();
        cn.Open();
        cmd = new SqlCommand("Select * from PtoDContact where department=@u", cn);
        cmd.Parameters.AddWithValue("@u", user);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        cn.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label16.Text = "No.:";
        Label15.Text = "Patient Id:";
        Label13.Text = "Department:";
        Label2.Text = "Message:";
        Label1.Text = GridView1.SelectedRow.Cells[1].Text;
        Label3.Text = GridView1.SelectedRow.Cells[2].Text;
        Label5.Text = GridView1.SelectedRow.Cells[3].Text;
        Label4.Text = GridView1.SelectedRow.Cells[4].Text;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("update PtoDContact set dmassage=@m1 where meno=@id", cn);
        cmd.Parameters.AddWithValue("@m1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@id", System.Convert.ToInt32(Label1.Text));
        cmd.ExecuteNonQuery();
        cn.Close();
        display();
    }
}
