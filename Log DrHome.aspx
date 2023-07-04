<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="Log DrHome.aspx.cs" Inherits="Log_DrHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<img src="Pictures/images.png" style="margin-top: 43px" />
<table align=center><tr><td align="center">
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1"  Font-Bold="True" Font-Italic="True" Font-Size="50px">
    <ItemTemplate>
        
        <asp:Label ID="drnameLabel" runat="server" Text='<%# Eval("drname") %>' />
        <br />
<br />
    </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [drname] FROM [Doctors] WHERE ([department] = @department)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="department" SessionField="DR" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </td> </tr>  </table>
</asp:Content>


