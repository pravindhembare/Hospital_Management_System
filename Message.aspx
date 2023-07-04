<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Message.aspx.cs" Inherits="Message" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 222px;
        }
    .style2
    {
        width: 909px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table><tr><td width="200px"><img src="Pictures/214.jpg" 
            style="height: 208px; width: 196px" /><br />
 <table><tr><td height="320px"></td></tr></table>
        </td>
    <td  class="style2">   
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
     <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
            Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
            WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="916px" 
            Height="520px">
         <LocalReport ReportPath="Report4.rdlc">
             <DataSources>
                 <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
             </DataSources>
         </LocalReport>
        </rsweb:ReportViewer> 
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="GetData" TypeName="DataSet7TableAdapters.MessageTableAdapter">
        </asp:ObjectDataSource>
    
    </td><td align="top" class="style1">
            <img src="Pictures/211.jpg" 
                style="height: 510px; width: 311px; margin-top: 0px" /></td>
    </tr></table>
</asp:Content>


