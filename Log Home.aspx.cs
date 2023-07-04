using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Log_Home : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    SqlDataAdapter sda = new SqlDataAdapter();
    DataSet ds = new DataSet(); 
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        
    }

}
