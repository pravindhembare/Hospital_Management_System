<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact US.aspx.cs" Inherits="Contact_US" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 64px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <img src="Pictures/images%20(2).jpg" 
        style="width: 665px; height: 89px; margin-top: 13px" />
 <table>
 <tr height="434px">
 <td width="750px" align=center style="font-size: large"><b><font size="6px">Sahyadri Hospital, Private Limited</font>
     </b><br />
<b>Address of registered office:</b> S N. 89 & 90 ,<br /> Plot No. 54, Lokmanya Colony, Kothrud,<br /> Pune 411038, Maharashtra, India<br />
<b>Corporate Identity Number (CIN):</b> U85110PN1996PTC099499<br />
<b>Telephone number:</b> 020 6721 5000<br />
<b>Email id:</b> feedback@sahyadrihospitals.com <br />
<b>Fax No:</b> +91 20 6721 5098<br /><br />
<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.349298207548!2d73.83710181484264!3d18.513110987413366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bf89a5c2551f%3A0xe5a1afe1c6049f8b!2sSahyadri%20Super%20Speciality%20Hospital%2C%20Deccan%20Gymkhana%2C%20Pune!5e0!3m2!1sen!2sin!4v1640280847122!5m2!1sen!2sin" width="600" height="225" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</td>
 <td width="750px">
 <h1>Get in Touch</h1>
     <table height="200px" style="width: 66%; margin-left: 0px;" 
         align="center">
         <tr align="center" style="font-size: 22px" bgcolor="#FBF6F6">
             <td width="200px"  align="center" style="font-weight: bold">
                 <asp:Label ID="Label1" runat="server" Font-Bold="False" 
                     Text="Your Name:"></asp:Label>
             </td width="200px" >
             <td align="left">
                 <asp:TextBox ID="TextBoxn1" runat="server" Width="225px"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="TextBoxn1" 
        ErrorMessage="Please Enter Name" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr align="center" style="font-size: 22px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label2" runat="server" Font-Bold="False" 
                     Text="Mobail no.:"></asp:Label>
             </td>
             <td align="left">
                 <asp:TextBox ID="TextBoxmn2" runat="server"></asp:TextBox><br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
        ControlToValidate="TextBoxmn2" ForeColor="#FF3300"  Font-Size="14px" ErrorMessage="Please Enter Correct Phone No" 
        ValidationExpression="\d{10}" > </asp:RegularExpressionValidator>
             </td>

         </tr>
         <tr align="center" style="font-size: 22px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label3" runat="server" Font-Bold="False" 
                     Text="Email:"></asp:Label>
             </td>
             <td align="left">
                 <asp:TextBox ID="TextBox3" runat="server" Width="225px"></asp:TextBox><br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
ControlToValidate="TextBox3" ForeColor="#FF3300"  Font-Size="14px" ErrorMessage="Please Enter correct Email Id" 
 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td>
         </tr>
         <tr align="center" style="font-size: 22px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label4" runat="server" Font-Bold="False" 
                     Text="Select Department:"></asp:Label>
             </td>
             <td align="left">
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
         <tr align="center" style="font-size: 22px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold" class="style1">
                 <asp:Label ID="Label5" runat="server" Font-Bold="False" 
                     Text="Message:"></asp:Label>
             </td>
             <td align="left" class="style1">
                 <asp:TextBox ID="TextBox4" runat="server" Height="50px" style="margin-top: 0px" 
                     Width="225px" TextMode="MultiLine"></asp:TextBox><br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" ControlToValidate="TextBox4" 
        ErrorMessage="Please Enter your Message" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator>
                     
             </td>
         </tr>
         <tr align="left"><td colspan=2 align="center" bgcolor="#FBF6F6">
             <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reset" />
             <asp:Button ID="Button1" runat="server" BackColor="#FF3300" ForeColor="White" 
                 Text="Send Message" Height="39px" Width="148px" 
                 style="margin-top: 15px; margin-left: 0px;" onclick="Button1_Click" />
             </td></tr>
             <tr><td colspan=2 align=center><asp:Label ID="Label6" runat="server" Text=""></asp:Label></td></tr>
         </table>
 </td>
 </tr>
 </table>       
</asp:Content>


