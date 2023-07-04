<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="PrintInvoiceForm.aspx.cs" Inherits="PrintInvoiceForm" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<br />
    <table align=center><tr><td align=center>
    <asp:Label ID="Label2" runat="server" Text=" Patients Bills Report" Font-Bold="True" 
            Font-Size="Large"></asp:Label>
    <asp:ScriptManager ID="ScriptManager2" runat="server">
    </asp:ScriptManager>

<rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" 
              Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
              WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" 
        BackColor="Black" BorderColor="Black" Width="605px" Height="680px">
    <LocalReport ReportPath="Report3.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet1" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
    
          <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
              SelectMethod="GetData" TypeName="DataSet1TableAdapters.DataTable1TableAdapter">
          </asp:ObjectDataSource></td><td width="20px"></td><td align=center>
        <asp:Label ID="Label1" runat="server" Text="Bill No." Font-Bold="True" 
            Font-Size="Large"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" Width="94px"></asp:TextBox>
    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
            Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
            WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="550px" Height="740px">
        <LocalReport ReportPath="Report1.rdlc">
            <DataSources>
                <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet_Report" />
            </DataSources>
        </LocalReport>
        </rsweb:ReportViewer>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [View_All_Bill_Test] WHERE ([billid] = @billid)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DefaultValue="1" Name="billid" 
                    PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        </td></tr></table>
    </asp:Content>
