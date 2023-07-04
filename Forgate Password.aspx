<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forgate Password.aspx.cs" Inherits="Forgate_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<table>
<tr>
<td><img src="Pictures/12.jpg" width="600px" height="500px" /></td>
<td align="left">
<h2 align="left" 
        style="font-family: 'Arial Black'; color: #000000; font-style: italic;">Reset Password Here...</h2>

<table style="z-index: 101;  color: #ffffff; font-family: 'Lucida Console';">
<tr><td colspan=2 align=center><img src="Pictures/images%20(5).jpg" 
        style="height: 168px; width: 164px" /></td></tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">LoginID</td>
<td style="height: 34px; width:157px;">
    <asp:TextBox ID="TextBoxp1" runat="server"></asp:TextBox>
    </td>
    <td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" ControlToValidate="TextBoxp1" 
        ErrorMessage="Please insert Your Login Id" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator></td>
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">Select Pass.Recov.Que</td>
<td><asp:DropDownList ID="DropDownList1" runat="server">
                     <asp:ListItem>Your Best Friend</asp:ListItem>
                     <asp:ListItem>ZP School Name</asp:ListItem>
                     <asp:ListItem>Mother's maiden Name</asp:ListItem>
                     <asp:ListItem>Your First Pet</asp:ListItem>
                     <asp:ListItem>Your First Car</asp:ListItem>
                     <asp:ListItem>Your Childhood Hero</asp:ListItem>
                     </asp:DropDownList></td>

</tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">Answer</td>
<td style="height: 34px; width:157px;">
    <asp:TextBox ID="TextBoxa5" runat="server"></asp:TextBox>
    </td>
    <td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="TextBoxa5" 
        ErrorMessage="Please insert Your Quetion Answer" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator></td>
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">
   New Password</td>
<td style="height: 34px; width:157px;">
    <asp:TextBox ID="TextBoxp2" runat="server" 
        TextMode="Password"></asp:TextBox></asp.TextBox></td>
        <td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
            runat="server" ControlToValidate="TextBoxp2" 
        ErrorMessage="Please insert New Password" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator></td>
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">Conform Password</td>
<td style="height: 34px; width:157px;">
    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>     
    </td>
    <td bgcolor="White">
        <asp:CompareValidator ID="CompareValidator2" runat="server"
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
</table>

</asp:Content>


