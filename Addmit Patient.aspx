<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Addmit Patient.aspx.cs" Inherits="Addmit_Patient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 86px;
        }
        .style2
        {
            height: 35px;
        }
        .style3
        {
            height: 29px;
        }
        .style4
        {
            height: 56px;
        }
        .style5
        {
            height: 44px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h2 align="center" 
        style="font-family: 'Arial Black'; color: #000000;">Add New Patient Record...</h2>
        <table>
        <tr>
        <td width="300px"><img src="Pictures/321.jpg" style="height: 479px; width: 296px" /></td>
        <td align="center">       
<table height="200px" align="top" style="margin-top: 0px; width: 850px;">
         <tr align="center" style="font-size: 22px" bgcolor="#FBF6F6">
             <td width="200px"  align="center" style="font-weight: bold" class="style2">
                 <asp:Label ID="Label1" runat="server" Font-Bold="False" 
                     Text="Patient Name:"></asp:Label>
             </td width="200px" >
             <td align="left" class="style2">
                 <asp:TextBox ID="TextBoxn1" runat="server" Width="198px" Height="19px"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
            runat="server" ControlToValidate="TextBoxn1" 
        ErrorMessage="Please insert Patient Name" ForeColor="#FF3300" 
            Font-Size="small"></asp:RequiredFieldValidator>
             </td>
             <td class="style2">Patient ID:</td>
             <td class="style2">
                 <asp:TextBox ID="TextBoxmn5" runat="server"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
            runat="server" ControlToValidate="TextBoxmn5" 
        ErrorMessage="Please insert Login Id" ForeColor="#FF3300" 
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
                          <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label7" runat="server" Font-Bold="False" 
                     Text="Password:"></asp:Label>
             </td>
             <td align="left">
                 <asp:TextBox ID="TextBoxmn4" runat="server"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
            runat="server" ControlToValidate="TextBoxmn4" 
        ErrorMessage="Please insert Password" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator>
             </td>

         </tr>
                  <tr align="center" style="font-size: 22px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold" class="style1" align="center">
                 <asp:Label ID="Label3" runat="server" Font-Bold="False" 
                     Text="Email:"></asp:Label>
             </td>
             <td align="left" class="style1">
                 <asp:TextBox ID="TextBoxe3" runat="server" Width="225px"></asp:TextBox><br />
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
ControlToValidate="TextBoxe3" ForeColor="#FF3300"  Font-Size="small" ErrorMessage="Please Enter correct Email Id" 
 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
             </td>
                          <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label8" runat="server" Font-Bold="False" 
                     Text="Con Password:"></asp:Label>
             </td>
             <td align="left">
                 <asp:TextBox ID="TextBoxmn6" runat="server" TextMode="Password"></asp:TextBox><br />
                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="TextBoxmn4" ControlToValidate="TextBoxmn6" 
        ErrorMessage="Password Not Match" ForeColor="#FF3300" 
            Font-Size="small"></asp:CompareValidator>
             </td>
         </tr>
         <tr align="center" style="font-size: 22px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold" class="style3">
                 <asp:Label ID="Label4" runat="server" Font-Bold="False" 
                     Text="DOB:"></asp:Label>
             </td>
             <td align="left" class="style3">
                 <asp:TextBox ID="TextBoxmn3" runat="server" TextMode="Date"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="TextBoxmn3" 
        ErrorMessage="Please Select Date Of Birth" ForeColor="#FF3300" 
            Font-Size="small"></asp:RequiredFieldValidator>
             </td>
             </td>
                          <td width="200px" style="font-weight: bold" class="style3">
                 <asp:Label ID="Label9" runat="server" Font-Bold="False" 
                     Text="Pass.Recov.Que:"></asp:Label>
             </td>
                  <td align="left" class="style3">
                 <asp:DropDownList ID="DropDownList1" runat="server">
                     <asp:ListItem>Your Best Friend</asp:ListItem>
                     <asp:ListItem>ZP School Name</asp:ListItem>
                     <asp:ListItem>Mother's maiden Name</asp:ListItem>
                     <asp:ListItem>Your First Pet</asp:ListItem>
                     <asp:ListItem>Your First Car</asp:ListItem>
                     <asp:ListItem>Your Childhood Hero</asp:ListItem>
                     </asp:DropDownList>
                 </td>
         </tr>
         <tr align="center" style="font-size: 22px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label5" runat="server" Font-Bold="False" 
                     Text="Address:"></asp:Label>
             </td>
             <td align="left">
                 <asp:TextBox ID="TextBox4" runat="server" Height="42px" style="margin-top: 0px" 
                     Width="193px" TextMode="MultiLine"></asp:TextBox><br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" 
            runat="server" ControlToValidate="TextBox4" 
        ErrorMessage="Please insert Patient Address" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator>
             </td>
             <td>Answer</td>
         <td align=left> 
                 <asp:TextBox ID="TextBoxmn7" runat="server"></asp:TextBox><br />
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" 
            runat="server" ControlToValidate="TextBoxmn7" 
        ErrorMessage="Please insert Your Quetion Answer" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator>
             </td>
         </tr>

         <tr align="left"><td colspan=4 align="center" bgcolor="#FBF6F6" class="style4">
             <asp:Button ID="Button2" runat="server" Text="Reset" Width="63px" 
                 onclick="Button2_Click" />
             <asp:Button ID="Button1" runat="server" BackColor="#FF3300" ForeColor="White" 
                 Text="Add" Height="36px" Width="95px" 
                 style="margin-top: 15px; margin-left: 0px;" onclick="Button1_Click" />
                              <asp:Button ID="Button3" runat="server" BackColor="#FF3300" ForeColor="White" 
                 Text="Update" Height="36px" Width="95px" 
                 style="margin-top: 15px; margin-left: 0px;" onclick="Button3_Click" />
                              <asp:Button ID="Button4" runat="server" BackColor="#FF3300" ForeColor="White" 
                 Text="Delete" Height="36px" Width="95px" 
                 style="margin-top: 15px; margin-left: 0px;" onclick="Button4_Click" />
             </td></tr>
             <tr><td colspan=2 align=center class="style5"><asp:Label ID="Label6" runat="server" 
                     Font-Size="Large" ForeColor="Red"></asp:Label></td></tr>
         </table>
          
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Horizontal" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                <asp:BoundField DataField="name" HeaderText="Patient Name" />
                <asp:BoundField DataField="mobail" HeaderText="Mobail No." />
                <asp:BoundField DataField="email" HeaderText="Email." />
                <asp:BoundField DataField="age" HeaderText="DOB" />
                <asp:BoundField DataField="address" HeaderText="Address" />
                 <asp:BoundField DataField="logid" HeaderText="Patient ID" />
                  <asp:BoundField DataField="conpassword" HeaderText="Password" />
                   <asp:BoundField DataField="prq" HeaderText="Quetion" />
                    <asp:BoundField DataField="ans" HeaderText="Answer" />
                </Columns>
             <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
             <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
             <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F7F7F7" />
             <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
             <SortedDescendingCellStyle BackColor="#E5E5E5" />
             <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
         </td>
        </tr>
        </table>
</asp:Content>


