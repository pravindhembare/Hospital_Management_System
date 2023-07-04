<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Log Home.aspx.cs" Inherits="Log_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<img src="Pictures/images.png" style="margin-top: 43px" />
<table align=center><tr><td align="center">
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        Font-Bold="True" Font-Italic="True" Font-Size="50px">
    <ItemTemplate>      
        <asp:Label align="center" ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
    </ItemTemplate>
    </asp:DataList></td> </tr>  </table>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [name] FROM [Registration] WHERE ([logid] = @logid)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="logid" SessionField="ID" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


