<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="D Contact.aspx.cs" Inherits="D_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
        BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Horizontal" AutoGenerateSelectButton="True" 
        Width="799px" onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                <asp:BoundField DataField="meno" HeaderText="No." />                
                <asp:BoundField DataField="logid" HeaderText="P.Name" />
                <asp:BoundField DataField="department" HeaderText="Department" />
                <asp:BoundField DataField="pmessage" HeaderText="Message" />
                <asp:BoundField DataField="dmassage" HeaderText="Reply" />                                                       
                </Columns>
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView><br />
            <table align=center>
            <tr bgcolor="#FBF6F6">
            <td width="20px"><asp:Label ID="Label16" runat="server" Font-Bold="True" 
                    Font-Size="17px">No.:</asp:Label></td>
            <td width="200px"><asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" 
                    Font-Size="18px"></asp:Label></td>
            </tr>            
            <tr bgcolor="#FBF6F6">
            <td width="20px"><asp:Label ID="Label15" runat="server" Font-Bold="True" 
                    Font-Size="17px">Patient Id:</asp:Label></td>
            <td><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="17px"></asp:Label></td>
            </tr>           
            <tr bgcolor="#FBF6F6">
            <td width="20px">
                <asp:Label ID="Label13" runat="server" Font-Bold="True" 
                    Font-Size="16px">Department:</asp:Label></td>
            <td><asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="16px"></asp:Label></td>
            </tr>
            <tr bgcolor="#FBF6F6">
            <td colspan=2><asp:Label ID="Label2" runat="server" Font-Bold="True" 
                    Font-Size="18px">Message:</asp:Label></td>
            </tr>
            <tr bgcolor="#FBF6F6">
            <td colspan=2 align=center>
                <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                    Font-Size="16px" Height="50px" Width="150px"></asp:Label></td>
            </tr>
            <tr bgcolor="#FBF6F6">
            <td colspan=2>
                <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" 
                    Font-Size="16px" Height="55px" Width="255px" TextMode="MultiLine"></asp:TextBox></td>
            </tr>
            <tr bgcolor="#FBF6F6">
            <td colspan=2 align=center>
                <asp:Button ID="Button1" runat="server" Text="Send Message" 
                    onclick="Button1_Click" Font-Bold="True" ForeColor="Red"></asp:Button></td>
            </tr>
            </table>
</asp:Content>


