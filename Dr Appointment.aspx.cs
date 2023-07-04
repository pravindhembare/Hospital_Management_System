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

public partial class Dr_Appointment : System.Web.UI.Page
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
        cmd = new SqlCommand("Select * from Appointment where department=@u", cn);
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
        Label15.Text = "Mobail No.:";
        Label13.Text = "Appo Date:";
        Label12.Text = "Department:";
        Label11.Text = "LogIn ID:";
        Label10.Text = "Give Medicine:";
        Label17.Text = "Attach Report File:";
        Label1.Text = GridView1.SelectedRow.Cells[1].Text;
        Label2.Text = GridView1.SelectedRow.Cells[2].Text;
        Label3.Text = GridView1.SelectedRow.Cells[3].Text;
        Label5.Text = GridView1.SelectedRow.Cells[5].Text;
        Label6.Text = GridView1.SelectedRow.Cells[6].Text;
        Label7.Text = GridView1.SelectedRow.Cells[7].Text;
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        {
            cn.Open();
            cmd = new SqlCommand("update Appointment set status=@s where no=@n", cn);
            cmd.Parameters.AddWithValue("@n", System.Convert.ToInt32(Label1.Text));
            cmd.Parameters.AddWithValue("@s", Label4.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            display();
        }
        if (FileUpload1.HasFile)
        {
            String filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Pictures/+filename"));
            string f1 = "~/Pictures/" + filename;

            cn.Open();
            cmd = new SqlCommand("insert into Report (app_no,medicine1,medicin2,medici3,medic4,medi5,report1) values (@n,@m1,@m2,@m3,@m4,@m5,@p)", cn);
            cmd.Parameters.AddWithValue("@n", System.Convert.ToInt32(Label1.Text));
            cmd.Parameters.AddWithValue("@m1", TextBoxm1.Text);
            cmd.Parameters.AddWithValue("@m2", TextBoxm2.Text);
            cmd.Parameters.AddWithValue("@m3", TextBoxm3.Text);
            cmd.Parameters.AddWithValue("@m4", TextBoxm4.Text);
            cmd.Parameters.AddWithValue("@m5", TextBoxm5.Text);
            cmd.Parameters.AddWithValue("@p", f1.ToString());
            cmd.ExecuteNonQuery();
            cn.Close();
            display();
            
        }
        Label8.Text = "Appointment Info Save Succesfully";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Label1.Text = "";
        TextBoxm1.Text = "";
        TextBoxm2.Text = "";
        TextBoxm4.Text = "";
        TextBoxm5.Text = "";
        TextBoxm3.Text = "";

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        {
            cn.Open();
            cmd = new SqlCommand("update Appointment set status=@s where no=@n", cn);
            cmd.Parameters.AddWithValue("@n", System.Convert.ToInt32(Label1.Text));
            cmd.Parameters.AddWithValue("@s", Label4.Text);
            cmd.ExecuteNonQuery();
            cn.Close();
            display();
        }
        if (FileUpload1.HasFile)
        {
            String filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Pictures/+filename"));
            string f1 = "~/Pictures/" + filename;

            cn.Open();
            cmd = new SqlCommand("update Report set medicine1=@m1,medicin2=@m2,medici3=@m3,medic4=@m4,medi5=@m5,report1=@p where app_no=@n", cn);
            cmd.Parameters.AddWithValue("@n", System.Convert.ToInt32(Label1.Text));
            cmd.Parameters.AddWithValue("@m1", TextBoxm1.Text);
            cmd.Parameters.AddWithValue("@m2", TextBoxm2.Text);
            cmd.Parameters.AddWithValue("@m3", TextBoxm3.Text);
            cmd.Parameters.AddWithValue("@m4", TextBoxm4.Text);
            cmd.Parameters.AddWithValue("@m5", TextBoxm5.Text);
            cmd.Parameters.AddWithValue("@p", f1.ToString());
            cmd.ExecuteNonQuery();
            cn.Close();
            display();

        }
        Label8.Text = "Appointment Info Update Succesfully";
    }
}