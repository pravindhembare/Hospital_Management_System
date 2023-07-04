<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="AAppointment.aspx.cs" Inherits="AAppointment" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder3">
    <table><tr><td width="400px" height="515px" align=right><img src="Pictures/221.jpg" height="75px" width="75px" /><br />
    <img src="Pictures/151.jpg" width="300px" height="450" /><br />
    <table><tr><td height="400px"></td></tr></table>
    </td><td width="1100px" align=center>
    
      <asp:Label ID="Label1" runat="server" Text="Select Date:" Font-Bold="True" 
            Font-Size="Large"></asp:Label><asp:TextBox ID="TextBox1" runat="server"  
            TextMode="Date"></asp:TextBox><br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="Button2" runat="server" Text="Search" style="margin-top: 4px" />
        <br />
        <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
        BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Horizontal" AllowSorting="True" CaptionAlign="Top" Width="1058px">
                <Columns>      
                <asp:BoundField DataField="no" HeaderText="App No." />          
                <asp:BoundField DataField="name" HeaderText="Patient Name" />
                <asp:BoundField DataField="logid" HeaderText="Patient Id" />
                <asp:BoundField DataField="phone" HeaderText="Mobail No." />
                <asp:BoundField DataField="gender" HeaderText="Gender" />
                <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                   <asp:BoundField DataField="time" HeaderText="Session"  />
                   <asp:BoundField DataField="department" HeaderText="Department" />
                    <asp:BoundField DataField="concern" HeaderText="Concern" />
                     
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
            <br />
       
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
                Font-Size="8pt" InteractiveDeviceInfos="(Collection)" 
                WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1058px" 
                Height="700px">
           <LocalReport ReportPath="Report2.rdlc">
               <DataSources>
                   <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="DataSet3" />
               </DataSources>
           </LocalReport>
            </rsweb:ReportViewer>

            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                SelectMethod="GetData" 
                TypeName="DatabaseDataSetTableAdapters.AppointmentTableAdapter">
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                SelectMethod="GetData" TypeName="DataSet1TableAdapters.DataTable1TableAdapter">
            </asp:ObjectDataSource>

            
          </td> </tr> </table>
</asp:Content>



