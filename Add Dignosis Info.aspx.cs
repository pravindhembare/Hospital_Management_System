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

public partial class Add_Dignosisi_Info : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        string st;
        st = System.Configuration.ConfigurationManager.AppSettings["cn"];

        cn = new SqlConnection(st);
        display();
        show();
    }
    public void show()
    {
        cn.Open();
        cmd = new SqlCommand("Select * from Registration where logid=@pid", cn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        cmd.Parameters.AddWithValue("@pid", TextBoxi1.Text);
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        cn.Close();
    }
    public void display()
    {                 
            cn.Open();
            cmd = new SqlCommand("Select R.*,P.* from Registration R INNER JOIN Patient P ON (R.logid = P.id) where R.logid=@pid", cn);
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            cmd.Parameters.AddWithValue("@pid", TextBoxi1.Text);
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            cn.Close();        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("insert into Patient (sy,di,me,w,d,tw,no,bg,dp,type,id)values(@s,@di,@m,@w,@d,@t,@n,@bg,@dp,@ty,@id)", cn);
        cmd.Parameters.AddWithValue("@s", TextBox10.Text);
        cmd.Parameters.AddWithValue("@di", TextBox11.Text);
        cmd.Parameters.AddWithValue("@m", DropDownList4.Text);
        cmd.Parameters.AddWithValue("@w", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@d", TextBox13.Text);
        cmd.Parameters.AddWithValue("@t", DropDownList2.Text);
        cmd.Parameters.AddWithValue("@n", TextBox33.Text);
        cmd.Parameters.AddWithValue("@bg", DropDownList4.Text);
        cmd.Parameters.AddWithValue("@dp", DropDownList6.Text);
        cmd.Parameters.AddWithValue("@ty", DropDownList5.Text);
        cmd.Parameters.AddWithValue("@id", TextBoxi1.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        display();
        Label6.Text = "Patient Info save Succesfully";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBoxi1.Text = "";
        TextBox10.Text = "";
        TextBox11.Text = "";
        DropDownList4.Text = "";
        TextBox33.Text = "";
        DropDownList1.Text = "";
        DropDownList2.Text = "";
        Label6.Text = "";
        DropDownList5.Text = "";
        DropDownList6.Text = "";
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("update Patient set sy=@s,di=@di,me=@m,w=@w,d=@d,tw=@t,no=@n,bg=@bg,dp=@dp,type=@ty where id=@id", cn);
        cmd.Parameters.AddWithValue("@s", TextBox10.Text);
        cmd.Parameters.AddWithValue("@di", TextBox11.Text);
        cmd.Parameters.AddWithValue("@m", DropDownList4.Text);
        cmd.Parameters.AddWithValue("@w", DropDownList1.Text);
        cmd.Parameters.AddWithValue("@d", TextBox13.Text);
        cmd.Parameters.AddWithValue("@t", DropDownList2.Text);
        cmd.Parameters.AddWithValue("@n", TextBox33.Text);
        cmd.Parameters.AddWithValue("@bg", DropDownList4.Text);
        cmd.Parameters.AddWithValue("@dp", DropDownList6.Text);
        cmd.Parameters.AddWithValue("@ty", DropDownList5.Text);
        cmd.Parameters.AddWithValue("@id", TextBoxi1.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        display();
        Label6.Text = "Patient Info Update Succesfully";       
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("delete from Patient where id=@id", cn);
        cmd.Parameters.AddWithValue("@id", TextBoxi1.Text);
        cmd.ExecuteNonQuery();
        cn.Close();
        display();
        Label6.Text = "Patient Discharge Done";
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList3.Text = GridView1.SelectedRow.Cells[4].Text;
        DropDownList6.Text = GridView1.SelectedRow.Cells[5].Text;
        TextBox11.Text = GridView1.SelectedRow.Cells[1].Text;
        System.Convert.ToDateTime(TextBox13.Text = GridView1.SelectedRow.Cells[7].Text);
        TextBox10.Text = GridView1.SelectedRow.Cells[2].Text;
        DropDownList1.Text = GridView1.SelectedRow.Cells[8].Text;
        DropDownList5.Text = GridView1.SelectedRow.Cells[3].Text;
        DropDownList2.Text = GridView1.SelectedRow.Cells[9].Text;
        DropDownList4.Text = GridView1.SelectedRow.Cells[6].Text;
        TextBox33.Text = GridView1.SelectedRow.Cells[10].Text;
    }
}