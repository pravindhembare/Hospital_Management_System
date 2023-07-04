<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Patient Bill.aspx.cs" Inherits="Patient_Bill" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 29px;
        }
        .style2
        {
            height: 29px;
            width: 237px;
        }
        .style3
        {
            width: 237px;
        }
        .style6
        {
            width: 562px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<table>
        <tr>
        <td width="300px"><img src="Pictures/321.jpg" style="height: 460px; width: 296px" /></td>
        <td align="center" width="1200px" height="400px" style="font-weight: bold">
        <asp:Label ID="Label1" runat="server" Text="Patient Id" Font-Size="Large"></asp:Label>
   &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="132px" 
                ontextchanged="TextBox1_TextChanged"></asp:TextBox><br />
        <asp:Button ID="Button3" runat="server" Text="Search" Width="63px" 
                style="margin-left: 97px; margin-top: 7px"/>
<table><tr><td height="80px">
         <asp:GridView ID="GridView1" runat="server" 
                AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Horizontal" AutoGenerateColumns="False" onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                <asp:BoundField DataField="logid" HeaderText="Patient id" />
                <asp:BoundField DataField="name" HeaderText="Patient Name" />
                <asp:BoundField DataField="mobail" HeaderText="Mobail No." />
                <asp:BoundField DataField="address" HeaderText="Address" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                <asp:BoundField DataField="age" HeaderText="DOB" />
                <asp:BoundField DataField="dp" HeaderText="Department" />
                <asp:BoundField DataField="type" HeaderText="Type" />
                <asp:BoundField DataField="d" HeaderText="Addmit Date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="tw" HeaderText="W.Type" />
                <asp:BoundField DataField="no" HeaderText="W.no" />
                </Columns>
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            
          </td> </tr> </table><br /> <table frame="box"><tr align="center"><td class="style6">
          <table  width="600px">
          <tr>
          <td colspan=4 style="font-size: 22px" align="center"><asp:Label ID="Label2" 
                  runat="server" ForeColor="Red">Sahyadri Hospitl,Pune</asp:Label></td>
          </tr>
          <tr>
          <td style="font-size: 18px" align=left width="100px" class="style1">
              <asp:Label ID="Label19" runat="server" Text="Patient Id"></asp:Label></td>
          <td style="font-size: 18px" align=left class="style2"><asp:Label ID="Label20" runat="server" Text="" ForeColor="#FF3300"></asp:Label>&nbsp;&nbsp;
             </td>              
              </td>
          </tr>
          <tr>
          <td colspan=4 style="font-size: 21px" align=left><asp:Label ID="Label3" runat="server" Text=""></asp:Label></td>
          </tr>
          <tr>
          <td style="font-size: 18px" align=left width="100px"><asp:Label ID="Label4" 
                  runat="server" Text="Email"></asp:Label></td>
          <td style="font-size: 17px" align=left class="style3"><asp:Label ID="Label5" runat="server" Text=""></asp:Label></td>
          </tr>
          <tr>
          <td style="font-size: 18px" align=left width="100px"><asp:Label ID="Label6" 
                  runat="server" Text="Mobail No."></asp:Label></td>
          <td style="font-size: 17px" align=left class="style3"><asp:Label ID="Label7" runat="server" Text=""></asp:Label></td>
          </tr>
          <tr>
          <td style="font-size: 18px" align=left width="100px"><asp:Label ID="Label8" 
                  runat="server" Text="Addrerss"></asp:Label></td>
          <td style="font-size: 17px" align=left class="style3"><asp:Label ID="Label9" runat="server" Text=""></asp:Label></td>
          </tr>
          <tr>
          <td style="font-size: 18px" align=left width="100px"><asp:Label ID="Label12" 
                  runat="server" Text="DOB"></asp:Label></td>
          <td style="font-size: 17px" align=left class="style3"><asp:Label ID="Label13" runat="server" Text=""></asp:Label>&nbsp;&nbsp; <asp:Label ID="Label11" runat="server" Text=""></asp:Label></td>
          </tr>          
          <tr>
          <td style="font-size: 18px" align=left width="100px"><asp:Label ID="Label16" 
                  runat="server" Text="Department"></asp:Label></td>
          <td style="font-size: 17px" align=left class="style3" ><asp:Label ID="Label17" runat="server" Text=""></asp:Label>&nbsp;&nbsp;&nbsp<asp:Label ID="Label18" runat="server" Text=""></asp:Label></td>
          </tr>
          <tr>
          <td style="font-size: 18px" align=left width="100px"><asp:Label ID="Label21" 
                  runat="server" Text="Addmit Date"></asp:Label></td>
          <td style="font-size: 17px" align=left class="style3"><asp:Label ID="Label22" runat="server" Text=""></asp:Label></td>
              <td><asp:Label ID="Label25" runat="server" Text="Discharge Date"></asp:Label></td>
           <td>   <asp:TextBox ID="TextBox2" runat="server" TextMode="Date" Width="101px"></asp:TextBox>
              </td>
          </tr>
          <tr>
          <td style="font-size: 18px" align=left width="100px"><asp:Label ID="Label23" 
                  runat="server" Text="Ward no."></asp:Label></td>
          <td style="font-size: 17px" align=left class="style3"><asp:Label ID="Label24" runat="server" Text=""></asp:Label>&nbsp;&nbsp; <asp:Label ID="Label26" runat="server" Text=""></asp:Label></td>
          </tr>
          </table>
          <table width="610px" frame="above">
          <tr>
          <td style="font-size: 21px" align=center width="20px"><asp:Label ID="Label10" runat="server" Text="No."></asp:Label></td>
          <td style="font-size: 21px" align=center width="490px"><asp:Label ID="Label14" runat="server" Text="Description"></asp:Label></td>
          <td style="font-size: 21px" align=center width="100px"><asp:Label ID="Label15" runat="server" Text="Amt"></asp:Label></td>
          </tr>
          <tr>
          <td style="font-size: 17px" align=center class="style1"><asp:TextBox ID="TextBox4" runat="server" Width="20px" Height="20px"></asp:TextBox></td>
          <td style="font-size: 17px" align=left class="style1"><asp:TextBox ID="TextBox45" 
                  runat="server" Width="400px" Height="20px"></asp:TextBox></td>
          <td style="font-size: 17px" align=center class="style1"><asp:TextBox ID="TextBox6" 
                  runat="server" Width="100px" Height="20px" ontextchanged="TextBox6_TextChanged"></asp:TextBox></td>
          </tr>
          <tr>
          <td style="font-size: 17px" align=center><asp:TextBox ID="TextBox61" runat="server" Width="20px" Height="15px"></asp:TextBox></td>
          <td style="font-size: 17px" align=left><asp:TextBox ID="TextBox9" runat="server" Width="400px" Height="15px"></asp:TextBox></td>
          <td style="font-size: 17px" align=center><asp:TextBox ID="TextBox49" runat="server" Width="100px" Height="15px"></asp:TextBox></td>
          </tr>
          <tr>
          <td style="font-size: 17px" align=center><asp:TextBox ID="TextBox62" runat="server" Width="20px" Height="20px"></asp:TextBox></td>
          <td style="font-size: 17px" align=left><asp:TextBox ID="TextBox12" runat="server" Width="400px" Height="20px"></asp:TextBox></td>
          <td style="font-size: 17px" align=center><asp:TextBox ID="TextBox44" runat="server" Width="100px" Height="20px"></asp:TextBox></td>
          </tr>
          <tr>
          <td style="font-size: 17px" align=center><asp:TextBox ID="TextBox63" runat="server" Width="20px" Height="20px"></asp:TextBox></td>
          <td style="font-size: 17px" align=left><asp:TextBox ID="TextBox15" runat="server" Width="400px" Height="20px"></asp:TextBox></td>
          <td style="font-size: 17px" align=center><asp:TextBox ID="TextBox42" runat="server" Width="100px" Height="20px"></asp:TextBox></td>
          </tr>
          <tr>
          <td style="font-size: 17px" align=center><asp:TextBox ID="TextBox16" runat="server" Width="20px" Height="20px"></asp:TextBox></td>
          <td style="font-size: 17px" align=left><asp:TextBox ID="TextBox46" runat="server" Width="400px" Height="20px"></asp:TextBox></td>
          <td style="font-size: 17px" align=center><asp:TextBox ID="TextBox18" runat="server" Width="100px" Height="20px"></asp:TextBox></td>
          </tr>
          <tr>
          <td style="font-size: 17px" align=center><asp:TextBox ID="TextBox19" runat="server" Width="20px" Height="20px"></asp:TextBox></td>
          <td style="font-size: 17px" align=left><asp:TextBox ID="TextBox20" runat="server" Width="400px" Height="20px"></asp:TextBox></td>
          <td style="font-size: 17px" align=center><asp:TextBox ID="TextBox21" runat="server" Width="100px" Height="20px"></asp:TextBox></td>
          </tr>
          <tr><td colspan=3 height="50px" width="610px"><p style="font-size: medium; top: 0px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Add GST 7%</p></td></tr>
          <tr>
          
          <td colspan=2 style="font-size: 18px" align=right width="490px">
          <asp:Label ID="Label29" runat="server" Text="Date"></asp:Label>          
          <asp:TextBox ID="TextBox3" runat="server" Width="100px" Height="20px" TextMode="Date"></asp:TextBox>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label28" runat="server" Text="Total"></asp:Label></td>
          <td style="font-size: 18px" align=center width="100px"><asp:Label ID="Label27" 
                  runat="server" ForeColor="Red"></asp:Label></td>
          </tr>
          </table>
          <br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Button ID="Button1" runat="server" Text="Reset" onclick="Button1_Click"/>
          <asp:Button ID="Button2" runat="server" Text="Generate Bill" Height="30px" Width="90px" BackColor="Red" 
                    ForeColor="White"></asp:Button>
                     &nbsp;
            <asp:Button ID="Button4" runat="server" Text="Save" Height="25px" Width="70px" BackColor="Red" 
                    ForeColor="White" onclick="Button4_Click"/>
                    &nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server"  Height="20px" 
                    Width="60px" BackColor="Red" ForeColor="White" 
                    PostBackUrl="~/PrintInvoiceForm.aspx" BorderColor="Black" 
                    BorderStyle="Solid" BorderWidth="2px" Font-Size="15px">Print</asp:LinkButton>
          </td></tr></table>
          <asp:Label ID="Label30" runat="server" Text="Label" Visible="False"></asp:Label>
          <asp:Label ID="Label31" runat="server" Text="Label" Visible="False"></asp:Label>
          </td></tr></table>>
 <table>
 <tr><td width="300px"></td><td align=center width="1200px"><asp:Label ID="Label32" runat="server" 
                     Font-Size="Large" ForeColor="Red"></asp:Label></td></tr><tr height="10px"><td ></td></tr>
 <tr><td width="300px"></td><td align=center width="1200px"> <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>

<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
              Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
              WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" 
        BackColor="Black" BorderColor="Black" Width="605px" Height="200px">
    <LocalReport ReportPath="Report3.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
    
          <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
              SelectMethod="GetData" TypeName="DataSet1TableAdapters.DataTable1TableAdapter">
          </asp:ObjectDataSource></td></tr></table>
      
    
</asp:Content>


