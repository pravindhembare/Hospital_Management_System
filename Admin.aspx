<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage4.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<br />
<table style="height: 550px; width: 1495px">
<tr height="200px">
  <td>  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table align=center style="z-index: 101;  color: #ffffff; font-family: 'Lucida Console'; font-weight: bold; width: 300px;">
<tr><td style="height: 34px; width:176px; color: #000000;">Admin ID</td>
<td style="height: 34px; width:157px;">
    <asp:TextBox ID="TextBoxa1" runat="server"></asp:TextBox>
    </td>
</tr>
<tr><td style="height: 34px; width:176px; color: #000000;">
    Password</td>
<td style="height: 34px; width:157px;"><asp:TextBox ID="TextBox2" runat="server" 
        TextMode="Password"></asp:TextBox></td>
</tr>
<tr><td colspan=2 class="style1">
    <asp:Button ID="Button1" runat="server" 
        Text="Login" Height="34px" Width="122px" BackColor="#FF3300" ForeColor="White"
                 style="margin-top: 15px; margin-left: 60px;" 
        onclick="Button1_Click"></asp:Button></td></tr>
        <tr><td colspan=2 class="style2"><asp:Label ID="Label1" runat="server" 
                ForeColor="#FF3300"></asp:Label></td></tr>
</table>
</td></tr><tr>
<td class="style2"><img src="Pictures/102.jpg" 
        style="width: 1485px; height: 354px" /></td>
</tr>
</table>
</asp:Content>


