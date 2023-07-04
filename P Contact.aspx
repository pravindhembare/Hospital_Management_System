<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="P Contact.aspx.cs" Inherits="P_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table align=center>
<tr>
<td align=center>
<asp:DropDownList ID="DropDownList1" runat="server">                     
                     <asp:ListItem>Neurosurgery</asp:ListItem>
                     <asp:ListItem>Neurology</asp:ListItem>
                     <asp:ListItem>Heamatology</asp:ListItem>
                     <asp:ListItem>Cordiology</asp:ListItem>
                     <asp:ListItem>Orthopaedic</asp:ListItem>
                     <asp:ListItem>Oncology</asp:ListItem>
                     <asp:ListItem>Endocrinology</asp:ListItem>
                     <asp:ListItem>Gastroenterology</asp:ListItem>
                     <asp:ListItem>General Surgery</asp:ListItem>
                     <asp:ListItem>Dentistry</asp:ListItem>
                     <asp:ListItem>Organ Transplants</asp:ListItem>
                     <asp:ListItem>Urology</asp:ListItem>
                 </asp:DropDownList>
</td>
</tr><br />
<tr><td align=center style="color: #FF0000"><asp:Button ID="Button1" runat="server" 
        Text="Search Doctor" Height="24px" 
        Width="55px" ForeColor="Red"></asp:Button></td></tr><br />
        <tr width="150px"><td style="font-size: large; font-weight: bold">To.</td></tr>
        <tr><td align=center style="font-weight: bold; font-size: 18px;">
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                Height="21px">
            <ItemTemplate>                
                <asp:Label ID="drnameLabel" runat="server" Text='<%# Eval("drname") %>'></asp:Label>
            </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [drname] FROM [Doctors] WHERE ([department] = @department)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" DefaultValue="1" 
                        Name="department" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td></tr>
        <tr>
        <td><asp:TextBox ID="TextBox1" runat="server" Height="70px" TextMode="MultiLine" 
                Width="222px"></asp:TextBox></td>
        </tr>
        <tr>
        <td align=right>&nbsp; 
            <asp:Button ID="Button2" runat="server" Text="Send Message" 
                onclick="Button2_Click" Font-Bold="True" ForeColor="Red" Width="126px"></asp:Button>
        </td></tr>
</table>
<br />
<asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource3" 
        align="left" CellPadding="4" ForeColor="#333333" >
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#EFF3FB" />
    <ItemTemplate>
        no:
        <asp:Label ID="menoLabel" runat="server" Text='<%# Eval("meno") %>' />
        <br />&nbsp;&nbsp;&nbsp;&nbsp;
        
        <asp:Label ID="pmessageLabel" runat="server" Text='<%# Eval("pmessage") %>' />
        <br />
        Doctor Message:<br />&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="dmassageLabel" runat="server" Text='<%# Eval("dmassage") %>' />
        <br />
<br />
    </ItemTemplate>
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [meno], [pmessage], [dmassage] FROM [PtoDContact] WHERE ([logid] = @logid)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="logid" SessionField="ID" 
                Type="String" />
        </SelectParameters>
</asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [meno], [pmessage], [dmassage] FROM [PtoDContact] WHERE ([logid] = @logid)">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="1" Name="logid" SessionField="ID" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>


