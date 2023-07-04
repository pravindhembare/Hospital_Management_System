<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="Edit Profile.aspx.cs" Inherits="Edit_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<table align=center><tr><td align=center>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
    Height="400px" Font-Bold="True" Font-Size="17px" ForeColor="Black">
    <ItemTemplate>        
        <asp:Image ID="photo" runat="server" ImageUrl='<%# Eval("photo") %>' Height="250px" Width="300px" /></asp:Image> 
        <br />        
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="TextBox5" runat="server" Text='<%# Eval("drname") %>' ForeColor="Red" Font-Size="20px" />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# Eval("drid") %>' Font-Size="20px" ForeColor="Red" />             
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="departmentLabel" runat="server" 
            Text='<%# Eval("department") %>' ForeColor="Red" />

        <br />
        Email:
        <asp:Label ID="TextBox4" runat="server" Text='<%# Eval("email") %>' ForeColor="Black" Font-Size="16px" Height="15px" />
        <br />
        Edu:
        &nbsp;&nbsp;&nbsp;<asp:Label ID="TextBox3" runat="server" Text='<%# Eval("edu") %>' ForeColor="Black" Font-Size="16px" Width="150px" Height="15px" />
        <br />
        logId:
        &nbsp;<asp:Label ID="TextBox2" runat="server" Text='<%# Eval("logid") %>' ForeColor="Black" Font-Size="16px" Width="100px" Height="15px"/>
        <br />
        About:
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("info") %>' 
            Height="100px" Width="450px" TextMode="MultiLine" ForeColor="Black" Font-Size="15px" BorderStyle="None" Font-Bold="True" />             
    </ItemTemplate>
    </asp:DataList>
   </td></tr></table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [info], [photo], [edu], [email], [drname], [drid], [logid], [department] FROM [Doctors] WHERE ([department] = @department)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="department" SessionField="DR" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


