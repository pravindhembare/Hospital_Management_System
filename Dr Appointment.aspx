<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage5.master" AutoEventWireup="true" CodeFile="Dr Appointment.aspx.cs" Inherits="Dr_Appointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 109px;
        }
        .style2
        {
            width: 180px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">


<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  
        BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Horizontal" AutoGenerateSelectButton="True" 
        Width="772px" Height="10px" onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                <asp:BoundField DataField="no" HeaderText="No." />                
                <asp:BoundField DataField="name" HeaderText="Patient Name" />
                <asp:BoundField DataField="phone" HeaderText="Mobail No." />
                <asp:BoundField DataField="gender" HeaderText="Gender" />                  
                 <asp:BoundField DataField="date" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                   <asp:BoundField DataField="time" HeaderText="Session"  />
                   <asp:BoundField DataField="department" HeaderText="Department"  />
                   <asp:BoundField DataField="Status" HeaderText="status" />     
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
            <br />
     <table align=center style="width: 358px">
            <tr>
            <td class="style1"><asp:Label ID="Label16" runat="server" Font-Bold="True" 
                    Font-Size="17px">No.:</asp:Label></td>
            <td class="style2"><asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red" 
                    Font-Size="18px"></asp:Label></td>
            </tr>
            <tr>
            <td colspan=2>
                <asp:Label ID="Label2" runat="server" Font-Bold="True" 
                    Font-Size="18px" ForeColor="Red"></asp:Label></td>
            </tr>
            <tr>
            <td class="style1"><asp:Label ID="Label15" runat="server" Font-Bold="True" 
                    Font-Size="17px">Mobail No.:</asp:Label></td>
            <td class="style2"><asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="16px"></asp:Label></td>
            </tr>           
            <tr>
            <td class="style1"><asp:Label ID="Label13" runat="server" Font-Bold="True" 
                    Font-Size="17px">Appo Date:</asp:Label></td>
            <td class="style2"><asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="16px"></asp:Label></td>
            </tr>
            <tr>
            <td class="style1"><asp:Label ID="Label12" runat="server" Font-Bold="True" 
                    Font-Size="17px">Department:</asp:Label></td>
            <td class="style2"><asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="16px"></asp:Label></td>
            </tr>
            <tr>
            <td class="style1"><asp:Label ID="Label11" runat="server" Font-Bold="True" 
                    Font-Size="17px">LogIn ID:</asp:Label></td>
            <td class="style2"><asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="16px"></asp:Label></td>
            </tr>
            <tr><td colspan=2><asp:Label ID="Label17" runat="server" Font-Bold="True" 
                    Font-Size="17px">Attach Report File</asp:Label></td>
            </tr>
            <tr><td colspan=2><asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload></td></tr>
            <tr><td colspan=2>
                <asp:Label ID="Label10" runat="server" 
                    Font-Bold="True" Font-Size="19px">Give Medicine:</asp:Label><asp:Label ID="Label4" runat="server" Text="Done" 
                    Visible="False"></asp:Label></td></tr>
            <tr>
            <td colspan=2 >
                <asp:TextBox ID="TextBoxm1" runat="server" Height="20px" 
                    BorderColor="Black" Width="230px"></asp:TextBox>
                    <td bgcolor="White"><asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
            runat="server" ControlToValidate="TextBoxm1" 
        ErrorMessage="Required..!" ForeColor="#FF3300" 
            Font-Size="14px"></asp:RequiredFieldValidator></td>
                    </td>
            </tr>            
            <tr>
            <td colspan=2 >
                <asp:TextBox ID="TextBoxm2" runat="server" Height="20px" 
                    BorderColor="Black" Width="230px"></asp:TextBox></td>
            </tr>
            <tr>
            <td colspan=2 >
                <asp:TextBox ID="TextBoxm3" runat="server" Height="20px" 
                    BorderColor="Black" Width="230px"></asp:TextBox></td>
            </tr>
            <tr>
            <td colspan=2 >
                <asp:TextBox ID="TextBoxm4" runat="server" Height="20px" 
                    BorderColor="Black" Width="230px"></asp:TextBox></td>
            </tr>
            <tr>
            <td colspan=2 ><asp:TextBox ID="TextBoxm5" runat="server" Height="20px" 
                    BorderColor="Black" Width="230px"></asp:TextBox></td>
            </tr>
            <tr><td colspan=2 align=left>
                    <asp:Button ID="Button2" runat="server" Text="Reset"  
                        style="margin-top: 0px; margin-left: 0px;" onclick="Button2_Click"></asp:Button>
                <asp:Button ID="Button1" runat="server" Text="save" Font-Bold="True" Font-Size="16px"
                    BorderColor="Black" Width="88px" onclick="Button1_Click" BackColor="#FF3300" ForeColor="White"></asp:Button>
                    <asp:Button ID="Button3" runat="server" Text="Update" Font-Bold="True" Font-Size="16px"
                    BorderColor="Black" Width="88px" BackColor="#FF3300" ForeColor="White" 
                        onclick="Button3_Click"></asp:Button>
                    </td></tr>
                   <tr><td colspan=2 class="style2"><asp:Label ID="Label8" runat="server" 
                ForeColor="#FF3300"></asp:Label></td></tr>
            </table>       
</asp:Content>


