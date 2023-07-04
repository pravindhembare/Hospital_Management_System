
using Microsoft.Reporting.WebForms;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class PrintInvoiceForm : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
   
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        SqlDataAdapter da = new SqlDataAdapter ("Select * from View_All_Bill where logid = '" + TextBox1.Text + "'",cn);
        DataSet2 ds = new DataSet2();
        da.Fill(ds, "DataTable_Invoice");
        ReportDataSource dataSource = new ReportDataSource("DataSet_Report", ds.Tables[0]);
        this.ReportViewer1.LocalReport.DataSources.Clear();
        this.ReportViewer1.LocalReport.DataSources.Add(dataSource);
        
        
    }

    
}