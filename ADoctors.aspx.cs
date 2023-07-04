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

public partial class ADoctors : System.Web.UI.Page
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
        cn.Open();
        cmd = new SqlCommand("Select * from Doctors ", cn);
        DataSet ds = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        cn.Close();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Label10.Text = "Doctor Id";
        Label11.Text = GridView1.SelectedRow.Cells[1].Text;
        TextBox91.Text = GridView1.SelectedRow.Cells[2].Text;
        TextBox92.Text = GridView1.SelectedRow.Cells[3].Text;
        TextBox93.Text = GridView1.SelectedRow.Cells[4].Text;
        DropDownList1.Text = GridView1.SelectedRow.Cells[5].Text;
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Pictures/+filename"));
            string f1 = "~/Pictures/" + filename;
            cn.Open();
            cmd = new SqlCommand("insert into Doctors (drname,email,edu,department,photo,info,logid,password) values(@n,@e,@ed,@d,@p,@i,@id,@ps)", cn);
            cmd.Parameters.AddWithValue("@n", TextBox91.Text);
            cmd.Parameters.AddWithValue("@e", TextBox92.Text);
            cmd.Parameters.AddWithValue("@ed", TextBox93.Text);
            cmd.Parameters.AddWithValue("@d", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@p", f1.ToString());
            cmd.Parameters.AddWithValue("@id", TextBoxd1.Text);
            cmd.Parameters.AddWithValue("@ps", TextBoxp2.Text);
            cmd.Parameters.AddWithValue("@i", TextBox95.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            display();
            Label6.Text = "Doctor's Record Added Succesfully";
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            String filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Pictures/+filename"));
            string f1 = "~/Pictures/" + filename;
            cn.Open();
            cmd = new SqlCommand("update Doctors set drname=@n,email=@e,edu=@ed,department=@d,photo=@p,logid=@ip,password=@ps where drid=@id", cn);
            cmd.Parameters.AddWithValue("@id", System.Convert.ToInt32(Label11.Text));
            cmd.Parameters.AddWithValue("@n", TextBox91.Text);
            cmd.Parameters.AddWithValue("@e", TextBox92.Text);
            cmd.Parameters.AddWithValue("@ed", TextBox93.Text);
            cmd.Parameters.AddWithValue("@d", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@p", f1.ToString());
            cmd.Parameters.AddWithValue("@ip", TextBoxd1.Text);
            cmd.Parameters.AddWithValue("@ps", TextBoxp2.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            display();
            Label6.Text = "Doctor's Record Update Succesfully";
        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        cn.Open();
        cmd = new SqlCommand("delete from Doctors where drid=@id", cn);
        cmd.Parameters.AddWithValue("@id", System.Convert.ToInt32(Label11.Text));
        cmd.ExecuteNonQuery();
        cn.Close();
        display();
        Label6.Text = "Doctor's Record Deleted Succesfully";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label10.Text = "";
        Label11.Text = "";
        TextBox91.Text = "";
        TextBox92.Text = "";
        TextBox93.Text = "";
        TextBoxp2.Text = "";
        TextBoxd1.Text = "";
        TextBox95.Text = "";
        DropDownList1.Text = "";
    }
}
