<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="P Appointment.aspx.cs" Inherits="P_Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <br /><br />
            <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        Font-Bold="True" Font-Size="16px" CellPadding="20" RepeatColumns="3" HorizontalAlign=Center >
    <ItemTemplate>
        
        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' Font-Bold="True" Font-Size="18px" />
        <br />
        Phone no.:
        <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
        <br />
        Gender:
        <asp:Label ID="genderLabel" runat="server" Text='<%# Eval("gender") %>' />
        <br />
        Date:
        <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date", "{0:d}") %>' />
        <br />
        Department:
        <asp:Label ID="departmentLabel" runat="server" 
            Text='<%# Eval("department") %>' />
        <br />
        Medicines:
        <asp:Label ID="medicineLabel" runat="server" Text='<%# Eval("medicine1") %>' Font-Size="15px" />
        <br />  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp      
        <asp:Label ID="medicinLabel" runat="server" Text='<%# Eval("medicin2") %>' Font-Size="15px" />
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
        <asp:Label ID="mediciLabel" runat="server" Text='<%# Eval("medici3") %>' Font-Size="15px" />
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
        <asp:Label ID="mediLabel" runat="server" Text='<%# Eval("medi5") %>' Font-Size="15px" />
        <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp
        <asp:Label ID="medicLabel" runat="server" Text='<%# Eval("medic4") %>' Font-Size="15px" />
        <br />
        Report:<br />
        <asp:Image ID="reportLabel" runat="server" ImageUrl='<%# Eval("report1") %>' Height="250px" Width="200px" /></asp:Image>
        <br />
<br />
    </ItemTemplate>
    </asp:DataList>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT A.*,R.* FROM Appointment A INNER JOIN Report R on (A.no = R.app_no) WHERE ([logid] = @logid)">
    <SelectParameters>
        <asp:SessionParameter DefaultValue="1" Name="logid" SessionField="ID" 
            Type="String" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>


