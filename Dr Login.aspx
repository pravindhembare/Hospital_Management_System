<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Dr Login.aspx.cs" Inherits="Dr_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table>
<tr>
<td><img src="Pictures/12.jpg" width="600px" height="500px" /></td>
<td align="left">
<h2 align="left" 
        style="font-family: 'Arial Black'; color: #000000; font-style: italic;">Login Here...</h2>

<table style="z-index: 101;  color: #ffffff; font-family: 'Lucida Console';">
<tr><td colspan=2 align=center><img src="Pictures/images%20(3).jpg" 
        style="height: 205px; width: 211px" /></td></tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">Department</td>
<td style="height: 34px; width:157px;">
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
</tr>
<tr bgcolor="#FBF6F6"><td style="height: 34px; width:176px; color: #000000;">LoginID</td>
<td style="height: 34px; width:157px;">
    <asp:TextBox ID="TextBoxd1" runat="server"></asp:TextBox>
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
</td>
</tr>
</table>
</asp:Content>


