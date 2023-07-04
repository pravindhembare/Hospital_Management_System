<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 176px;
            height: 26px;
        }
        .style2
        {
            width: 157px;
            height: 26px;
        }
        .style3
        {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<table>
<tr>
<td><img src="Pictures/12.jpg" width="600px" height="500px" /></td>
<td align="left">
<h2 align="left" 
        style="font-family: 'Arial Black'; color: #000000; font-style: italic;">Register Here...</h2>

<table style="z-index: 101;  color: #ffffff; font-family: 'Lucida Console';">
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">Name</td>
<td style="height: 34px; width:157px;">
    <asp:TextBox ID="TextBoxn1" runat="server"></asp:TextBox>
    </td>
    <td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" ControlToValidate="TextBoxn1" 
        ErrorMessage="Please insert Your Name" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator></td>

</tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">Phone no.</td>
<td style="height: 34px; width:157px;"><asp:TextBox ID="TextBoxp2" runat="server" 
        TextMode="Phone"></asp:TextBox></td>
       <td bgcolor="White"><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
        ControlToValidate="TextBoxp2" ForeColor="#FF3300"  Font-Size="14px" ErrorMessage="Please Enter Correct Phone No" 
        ValidationExpression="\d{10}" > </asp:RegularExpressionValidator></td> 
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">Email</td>
<td style="height: 34px; width:157px;"><asp:TextBox ID="TextBoxe3" runat="server"></asp:TextBox></td>
<td bgcolor="White"> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
ControlToValidate="TextBoxe3" ForeColor="#FF3300"  Font-Size="14px" ErrorMessage="Please Enter correct Email Id" 
 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
</tr>
<tr bgcolor="#FBF6F6"><td style="color: #000000;" class="style3">DOB</td>
<td class="style2"><asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox></td>
<td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="TextBox4" 
        ErrorMessage="Please Select Date Of Birth" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator></td>
</tr>
<tr bgcolor="#FBF6F6"><td style="color: #000000;" class="style1">Address</td>
<td class="style2"><asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox></td>
<td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
            runat="server" ControlToValidate="TextBox5" 
        ErrorMessage="Please insert Your Address" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator></td>
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 26px; width:176px; color: #000000;">LoginID</td>
<td style="height: 34px; width:157px;"><asp:TextBox ID="TextBoxl6" runat="server"></asp:TextBox></td>
<td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
            runat="server" ControlToValidate="TextBoxl6" 
        ErrorMessage="Please insert Your Login Id" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator></td>
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 26px; width:176px; color: #000000;">Password</td>
<td style="height: 34px; width:157px;"><asp:TextBox ID="TextBoxp7" runat="server"></asp:TextBox></td>
        <td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
            runat="server" ControlToValidate="TextBoxp7" 
        ErrorMessage="Please insert Your Password" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator></td>
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 26px; width:176px; color: #000000; font-size: medium;">Confirm Password</td>
<td style="height: 34px; width:157px;"><asp:TextBox ID="TextBox8" runat="server" 
        TextMode="Password"></asp:TextBox>
    </td>
        <td bgcolor="White"> <asp:CompareValidator ID="CompareValidator1" runat=server 
        ControlToCompare="TextBoxp7" ControlToValidate="TextBox8" 
        ErrorMessage="Password Not Match" ForeColor="#FF3300" 
            Font-Size="14px"></asp:CompareValidator></td>
</tr>
<tr bgcolor="#FBF6F6">
<td style="height: 26px; width:176px; color: #000000; font-size: medium;">Pass.Recov.Que</td>
<td><asp:DropDownList ID="DropDownList1" runat="server">
                     <asp:ListItem>Your Best Friend</asp:ListItem>
                     <asp:ListItem>ZP School Name</asp:ListItem>
                     <asp:ListItem>Mother's maiden Name</asp:ListItem>
                     <asp:ListItem>Your First Pet</asp:ListItem>
                     <asp:ListItem>Your First Car</asp:ListItem>
                     <asp:ListItem>Your Childhood Hero</asp:ListItem>
                     </asp:DropDownList></td>
                     </tr>
<tr bgcolor="#FBF6F6"><td style="height: 26px; width:176px; color: #000000;">Answer</td>
<td style="height: 34px; width:157px;"><asp:TextBox ID="TextBoxa9" runat="server"></asp:TextBox></td>
<td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            runat="server" ControlToValidate="TextBoxa9" 
        ErrorMessage="Please insert Your Quetion Answer" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator> </td>
</tr>
<tr bgcolor="#FBF6F6"><td colspan=2 class="style1">
<asp:Button ID="Button2" runat="server" Text="Reset"  style="margin-top: 0px; margin-left: 70px;" onclick="Button1_Click"></asp:Button>
<asp:Button ID="Button1" runat="server" 
        Text="Submit" Height="32px" Width="130px" BackColor="#FF3300" ForeColor="White"
                 style="margin-top: 10px; margin-left: 0px;" 
        onclick="Button2_Click"></asp:Button></td>
</tr>
<tr><td colspan=2 align=center><asp:Label ID="Label1" runat="server" 
        ForeColor="Red"></asp:Label></td></tr>
</table>
</td>
</tr>
</table>
</asp:Content>


