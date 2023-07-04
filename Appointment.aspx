<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Appointment.aspx.cs" Inherits="Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            height: 30px;
            width: 75px;
        }
        .style3
        {
            height: 124px;
        }
        .style4
        {
            width: 228px;
            height: 28px;
        }
        .style5
        {
            width: 75px;
            height: 28px;
        }
        .style7
        {
            height: 26px;
            width: 228px;
        }
        .style8
        {
            width: 75px;
            height: 26px;
        }
        .style9
        {
            height: 30px;
            width: 228px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

<table align=right                 
        
        
        
        
        style="z-index: 101;  color: #ffffff; font-family: 'Lucida Console'; width: 594px; margin-top: 0px;">
        <tr><td colspan=2 
                style="font-family: 'Arial Black'; color: #000000; font-style: italic; font-size: x-large;" 
                >Book An Appointment...</td></tr>
<tr><td colspan=2 align=center class="style3">
    <img src="Pictures/images%20(5).jpg" 
        style="height: 128px; width: 151px" /></td></tr>
     <tr bgcolor="#FBF6F6"><td style="color: #000000;" class="style4">Name</td>
    <td class="style5"> 
    <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Black"></asp:Label></td></tr>
<tr bgcolor="#FBF6F6"><td style="color: #000000;" class="style4">Phone no.</td>
<td class="style5">
    <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="Black"></asp:Label></asp.TextBox></td>
</tr>
<tr bgcolor="#FBF6F6"><td style="color: #000000;" class="style4">Gender</td>
<td class="style5">
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" ForeColor="Black" 
        RepeatDirection="Horizontal">
        <asp:ListItem>Male</asp:ListItem>
        <asp:ListItem>Female</asp:ListItem>
    </asp:RadioButtonList>    
    </td>
    <td bgcolor="White" height="28px"><asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" ControlToValidate="RadioButtonList1" 
        ErrorMessage="Please Choose Gender" ForeColor="#FF3300" 
            Font-Size="13px"></asp:RequiredFieldValidator></td>
</tr>
<tr bgcolor="#FBF6F6">
<td style="color: #000000;" class="style4">Select Department</td>
<td class="style5"><asp:DropDownList ID="DropDownList1" runat="server"> 
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
                 </asp:DropDownList></td>
                 
</tr>
<tr bgcolor="#FBF6F6"><td style="color: #000000;" class="style4">Date Of Appointment</td>
<td class="style5"><asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox></asp.TextBox></td>
<td bgcolor="White" height="28px"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="TextBox4" 
        ErrorMessage="Please Select Date " ForeColor="#FF3300" 
            Font-Size="13px"></asp:RequiredFieldValidator></td>
<tr bgcolor="#FBF6F6"><td style="color: #000000;" class="style7">Appointment Time</td>
<td class="style8">
<asp:RadioButtonList ID="RadioButtonList2" runat="server" ForeColor="Black" 
        Font-Bold="True" Font-Size="Small">
    <asp:ListItem Value="Morning">Morning:        10AM-12PM</asp:ListItem>
    <asp:ListItem Value="Afternoon">Afternoon:  1PM-3PM</asp:ListItem>
    <asp:ListItem Value="Evening">Evening:       4PM-6PM</asp:ListItem>
    </asp:RadioButtonList>
</td>
<td bgcolor="White" height="28px"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
            runat="server" ControlToValidate="RadioButtonList2" 
        ErrorMessage="Please Select Session " ForeColor="#FF3300" 
            Font-Size="13px"></asp:RequiredFieldValidator></td>
<tr bgcolor="#FBF6F6"><td style="color: #000000;" class="style9">Please Tell Us Your Concern</td>
<td class="style2">
    <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine" 
        Height="40px" Width="181px"></asp:TextBox></td>
</tr>
<tr bgcolor="#FBF6F6" height="40px"><td colspan=2 align=center height="30px">
<asp:Button ID="Button1" runat="server" Text="Reset" asp:Button 
        onclick="Button1_Click"> </asp:Button>
<asp:Button ID="Button2" runat="server" Text="Get An Appointment" Height="39px" 
        Width="148px" BackColor="#FF3300" ForeColor="White"
                 style="margin-top: 4px; margin-left: 0px;" 
        onclick="Button2_Click" ></asp:Button>
</td></tr>
<tr><td colspan=2 align=center><asp:Label ID="Label1" runat="server" 
        ForeColor="Red"></asp:Label></td></tr>
</table>
</asp:Content>


