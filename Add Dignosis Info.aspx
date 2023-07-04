<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Add Dignosis Info.aspx.cs" Inherits="Add_Dignosisi_Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 303px;
        }
        .style2
        {
            width: 306px;
        }
        .style4
        {
            width: 308px;
        }
        .style5
        {
            width: 309px;
        }
        .style6
        {
            width: 549px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h2 align="center" 
        style="font-family: 'Arial Black'; color: #000000;">Adding More Information About Patient...</h2>
        <table>
        <tr>
        <td width="300px"><img src="Pictures/321.jpg" style="height: 460px; width: 296px" /></td>
        <td align="center" width="1200px" height="400px" style="font-weight: bold">
        <asp:Label ID="Label1" runat="server" Text="Patient Id" Font-Size="Large"></asp:Label>
   &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxi1" runat="server" Width="132px"></asp:TextBox><br />
        <asp:Button ID="Button3" runat="server" Text="Search" Width="63px" 
                style="margin-left: 97px; margin-top: 7px"/>
                <table><tr><td height="60px">
         <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Horizontal" AutoGenerateColumns="False" Width="249px" Height="16px">
                <Columns>
                <asp:BoundField DataField="name" HeaderText="Patient Name" />
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
          </td> </tr> </table>
                <table><tr><td height="50px">
         <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Horizontal" AutoGenerateColumns="False" Width="782px" 
                        AutoGenerateSelectButton="True" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns> 
                <asp:BoundField DataField="di" HeaderText="Diagnosis" />               
                <asp:BoundField DataField="sy" HeaderText="Symptom's" />
                <asp:BoundField DataField="type" HeaderText="Type" />
                <asp:BoundField DataField="bg" HeaderText="B.Group" />
                <asp:BoundField DataField="dp" HeaderText="Department" />
                <asp:BoundField DataField="me" HeaderText="Medical" />
                <asp:BoundField DataField="d" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="w" HeaderText="Ward" />                
                <asp:BoundField DataField="tw" HeaderText="Type" />
                <asp:BoundField DataField="no" HeaderText="No" />
              
                
                
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
          </td> </tr> </table><br>
<table align="top" style="margin-top: 0px; width: 666px; height: 233px;">
         <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
             <td width="200px"  align="center" style="font-weight: bold" class="style2">
                 <asp:Label ID="Label16" runat="server" Font-Bold="False" 
                     Text="Blood Group:"></asp:Label>
             </td width="200px" >
             <td align="left" class="style2">
                                  <asp:DropDownList ID="DropDownList3" runat="server">                     
                     <asp:ListItem>A+</asp:ListItem>
                     <asp:ListItem>A-</asp:ListItem>
                     <asp:ListItem>B+</asp:ListItem>
                     <asp:ListItem>B-</asp:ListItem>
                     <asp:ListItem>AB+</asp:ListItem>
                     <asp:ListItem>AB-</asp:ListItem>
                     <asp:ListItem>O+</asp:ListItem>
                     <asp:ListItem>O-</asp:ListItem>
                 </asp:DropDownList>
             </td>
             <td width="200px" style="font-weight: bold" class="style1">
                 <asp:Label ID="Label17" runat="server" Font-Bold="False" 
                     Text="Department:"></asp:Label>
             </td>
             <td align="left" class="style1">
                 <asp:DropDownList ID="DropDownList6" runat="server">
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
         </tr>
         <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
             <td width="200px"  align="center" style="font-weight: bold" class="style2">
                 <asp:Label ID="Label11" runat="server" Font-Bold="False" 
                     Text="Diagnosis:"></asp:Label>
             </td>
             <td align="left" class="style2">
                 <asp:TextBox ID="TextBox11" runat="server" Width="144px" 
                     Height="19px"></asp:TextBox>
             </td>
             <td width="200px" style="font-weight: bold" class="style1">
                 <asp:Label ID="Label14" runat="server" Font-Bold="False" 
                     Text="Date Of Addmit:"></asp:Label>
             </td>
             <td align="left" class="style1">
                 <asp:TextBox ID="TextBox13" runat="server" Height="25px" style="margin-top: 0px" 
                     Width="140px" TextMode="Date" ></asp:TextBox>
                     </td>
         </tr>
         <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
             <td class="style6">
                 <asp:Label ID="Label0" runat="server" Font-Bold="False" 
                     Text="Symptom's:"></asp:Label>
             </td>
             <td class="style2">
                 </asp:Label>
                 <asp:TextBox ID="TextBox10" runat="server" Width="137px" Height="19px"></asp:TextBox>
             </td>
                          <td style="font-weight: bold" class="style6">
                 <asp:Label ID="Label13" runat="server" Font-Bold="False" 
                     Text="Ward Required?"></asp:Label>
             </td>
             <td align="left">
                                  <asp:DropDownList ID="DropDownList1" runat="server">                     
                     <asp:ListItem>Yes</asp:ListItem>
                     <asp:ListItem>No</asp:ListItem>
                 </asp:DropDownList>
             </td>

         </tr>
                  <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
                  <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label18" runat="server" Font-Bold="False" 
                     Text="Select Type:"></asp:Label>
             </td>
             <td align="left">
                                  <asp:DropDownList ID="DropDownList5" runat="server">                     
                     <asp:ListItem>Ordinary</asp:ListItem>
                     <asp:ListItem>Serious</asp:ListItem>
                 </asp:DropDownList>
                      </td>
                  
             
             </td>
                          <td style="font-weight: bold" class="style6">
                 <asp:Label ID="Label15" runat="server" Font-Bold="False" 
                     Text="Type Of Ward:"></asp:Label>
             </td>
             <td align="left">
                 <asp:DropDownList ID="DropDownList2" runat="server">                     
                     <asp:ListItem>General</asp:ListItem>
                     <asp:ListItem>Duo</asp:ListItem>
                     <asp:ListItem>Single</asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
         <td width="200px"  align="center" style="font-weight: bold" class="style2">
                 <asp:Label ID="Label12" runat="server" Font-Bold="False" 
                     Text="Medical Hestory:"></asp:Label>
             </td width="200px" >
             <td align="left" class="style2">
                                  <asp:DropDownList ID="DropDownList4" runat="server">                     
                     <asp:ListItem>Yes</asp:ListItem>
                     <asp:ListItem>No</asp:ListItem>
                 </asp:DropDownList>
             </td>
             <td width="200px" style="font-weight: bold" class="style1">
                 <asp:Label ID="Label3" runat="server" Font-Bold="False" 
                     Text="Ward/Room No:"></asp:Label>
             </td>
             <td align="left" class="style1">
                 <asp:TextBox ID="TextBox33" runat="server" Height="23px" style="margin-top: 0px" 
                     Width="97px" ></asp:TextBox>
         </tr>
         <tr align="left"><td colspan=4 align="center" bgcolor="#FBF6F6" class="style4">
             <asp:Button ID="Button2" runat="server" Text="Reset" Width="63px" 
                 onclick="Button2_Click"/> 
             <asp:Button ID="Button1" runat="server" BackColor="#FF3300" ForeColor="White" 
                 Text="Addmit" Height="36px" Width="95px" 
                 style="margin-left: 0px;" onclick="Button1_Click"/>   
                 <asp:Button ID="Button4" runat="server" BackColor="#FF3300" ForeColor="White" 
                  Text="Update" Height="36px" Width="95px" 
                 onclick="Button4_Click"/>
                 <asp:Button ID="Button5" runat="server" BackColor="#FF3300" ForeColor="White" 
                 Text="Discharge" Height="36px" Width="95px" 
                 style="margin-left: 0px;" onclick="Button5_Click"/>                          
             </td></tr>
             <tr><td colspan=2 align=center class="style5"><asp:Label ID="Label6" runat="server" 
                     Font-Size="Large" ForeColor="Red"></asp:Label></td></tr>
         </table>
        </td>
        </tr>
        </table>
</asp:Content>




