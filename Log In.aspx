<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Log In.aspx.cs" Inherits="Log_In" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 45px;
        }
        .style2
        {
            height: 41px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
<table>
<tr>
<td><img src="Pictures/12.jpg" width="600px" height="500px" /></td>
<td align="left">
<h2 align="left" 
        style="font-family: 'Arial Black'; color: #000000; font-style: italic;">Login Here...</h2>

<table style="z-index: 101;  color: #ffffff; font-family: 'Lucida Console';">
<tr><td colspan=2 align=center><img src="Pictures/images%20(5).jpg" 
        style="height: 176px; width: 205px" /></td></tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">LoginID</td>
<td style="height: 34px; width:157px;">
    <asp:TextBox ID="TextBoxp1" runat="server"></asp:TextBox>
    </td>
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">
    Password</td>
<td style="height: 34px; width:157px;"><asp:TextBox ID="TextBox2" runat="server" 
        TextMode="Password"></asp:TextBox></td>
</tr>
<tr bgcolor="#FBF6F6"><td colspan=2 class="style1"><asp:Button ID="Button1" runat="server" 
        Text="Login" Height="39px" Width="148px" BackColor="#FF3300" ForeColor="White"
                 style="margin-top: 15px; margin-left: 60px;" 
        onclick="Button1_Click" ></asp:Button></td></tr>
        <tr><td colspan=2 class="style2"><asp:Label ID="Label1" runat="server" 
                ForeColor="#FF3300"></asp:Label></td></tr>
</table>
<asp:Menu ID="Menu1" runat="server" Font-Underline="True" ForeColor="#3366CC" Orientation="Horizontal" Font-Bold="True" RenderingMode="Table">
<Items>
<asp:MenuItem Text="New User Signup" Value="New User Signup" NavigateUrl="Registration.aspx"></asp:MenuItem>
<asp:MenuItem Text="|Forgot Password?" Value="|Forgot Password?" NavigateUrl="Forgate Password.aspx"></asp:MenuItem>
</Items>
                <StaticHoverStyle ForeColor="Black" />
                <StaticMenuItemStyle HorizontalPadding="10px" />
</asp:Menu>
</td>
</tr>
</table>
</asp:Content>


