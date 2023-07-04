<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Change Password.aspx.cs" Inherits="Change_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h2 align=center 
        style="font-family: 'Arial Black'; color: #000000; font-style: italic;">Change Password Here...</h2>
<table align=right 
        style="z-index: 101;  color: #ffffff; font-family: 'Lucida Console';">
<tr><td colspan=2 align=center><img src="Pictures/images%20(5).jpg" 
        style="height: 175px; width: 193px" /></td></tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">LoginID</td>
<td style="height: 34px; width:157px;">
    <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Label"></asp:Label>
    </td>
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">Current Password</td>
<td style="height: 34px; width:157px;">
    <asp:TextBox ID="TextBoxp5" runat="server" Width="120px"></asp:TextBox>
    
    </td><td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" ControlToValidate="TextBoxp5" 
        ErrorMessage="Please insert Current Password" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator></td>
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">
   New Password</td>
<td style="height: 34px; width:157px;">
    <asp:TextBox ID="TextBoxp2" runat="server" Width="122px"></asp:TextBox></asp.TextBox></td>
    </td><td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="TextBoxp2" 
        ErrorMessage="Please insert New Password" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator></td>
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">Conform Password</td>
<td style="height: 34px; width:157px;">
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="119px"></asp:TextBox>
        
    </td><td bgcolor="White">
        <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="TextBoxp2" ControlToValidate="TextBox4" 
        ErrorMessage="Password Not Match" ForeColor="#FF3300" Font-Size="14px"></asp:CompareValidator></td>
</tr>
<tr bgcolor="#FBF6F6"><td colspan=2 class="style1">
<asp:Button ID="Button2" runat="server" Text="Reset"  style="margin-top: 0px; margin-left: 70px;" onclick="Button2_Click"></asp:Button>
<asp:Button ID="Button1" runat="server" 
        Text="Change Password" Height="32px" Width="130px" BackColor="#FF3300" ForeColor="White"
                 style="margin-top: 10px; margin-left: 0px;" 
        onclick="Button1_Click"></asp:Button></td>
</tr>
        <tr><td colspan=2 class="style2"><asp:Label ID="Label1" runat="server" 
                ForeColor="#FF3300"></asp:Label></td></tr>
</table>
</asp:Content>


