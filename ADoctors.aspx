<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ADoctors.aspx.cs" Inherits="ADoctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

<table align="top">
        <tr>
        <td width="300px" align="top">
        <table height="200px" align="top" style="margin-top: 0px; width: 350px;">
        <tr><td colspan=2 align=center>
            <img src="Pictures/physician-icon-png-15318.png" 
                style="height: 207px; width: 213px" /></td>
        </tr>
        <tr bgcolor="#FBF6F6">
        <td class="style2"><asp:Label ID="Label10" runat="server" ForeColor="Red"></asp:Label></td>
             <td class="style2"><asp:Label ID="Label11" runat="server" ForeColor="Red"></asp:Label></td>
        </tr>
         <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
             <td width="200px"  align="center" style="font-weight: bold" class="style2">
                 <asp:Label ID="Label1" runat="server" Font-Bold="False" 
                     Text="Doctor Name:"></asp:Label>
             </td width="200px" >
             <td align="left" class="style2">
                 <asp:TextBox ID="TextBox91" runat="server" Width="149px" Height="16px"></asp:TextBox>
             </td>
         </tr>
        <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold" class="style3">
                 <asp:Label ID="Label3" runat="server" Font-Bold="False" 
                     Text="Email:"></asp:Label>
             </td>
             <td align="left" class="style3">
                 <asp:TextBox ID="TextBox92" runat="server" Width="182px" Height="17px"></asp:TextBox>
             </td>
             </td>
         </tr>
                  <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold" class="style1" align="center">
                 <asp:Label ID="Label5" runat="server" Font-Bold="False" 
                     Text="Education:"></asp:Label>
             </td>
             <td align="left" class="style1">
                 <asp:TextBox ID="TextBox93" runat="server" Height="18px" style="margin-top: 0px" 
                     Width="166px"></asp:TextBox>
             </td>
         </tr>
         

         <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label4" runat="server" Font-Bold="False" 
                     Text="Department:"></asp:Label>
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
         <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label8" runat="server" Font-Bold="False" 
                     Text="Login Id:"></asp:Label>
             </td>
             <td><asp:TextBox ID="TextBoxd1" runat="server" Height="18px" Width="135px"></asp:TextBox></td>
             </tr>
             <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label9" runat="server" Font-Bold="False" 
                     Text="Password:"></asp:Label>
             </td>
             <td><asp:TextBox ID="TextBoxp2" runat="server" Height="18px" Width="135px"></asp:TextBox></td>
             </tr>
          <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label2" runat="server" Font-Bold="False" 
                     Text="Photo:"></asp:Label>
             </td>
             <td align="left">
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="129px" />
             </td>

         </tr>
         <tr align="center" style="font-size: 18px" bgcolor="#FBF6F6">
             <td width="200px" style="font-weight: bold">
                 <asp:Label ID="Label7" runat="server" Font-Bold="False" 
                     Text="Information:"></asp:Label>
             </td>
             <td align="left">
                 <asp:TextBox ID="TextBox95" runat="server" TextMode="MultiLine" Height="42px" 
                     Width="166px"></asp:TextBox>
             </td>

         </tr>

         <tr align="left"><td colspan=2 align="center" bgcolor="#FBF6F6" class="style4">
             <asp:Button ID="Button2" runat="server" Text="Reset" Width="63px" 
                 onclick="Button2_Click" />
             <asp:Button ID="Button1" runat="server" BackColor="#FF3300" ForeColor="White" 
                 Text="Add" Height="32px" Width="87px" 
                 style="margin-top: 15px; margin-left: 0px;" onclick="Button1_Click"/>
                              <asp:Button ID="Button3" runat="server" BackColor="#FF3300" ForeColor="White" 
                 Text="Update" Height="32px" Width="82px" 
                 style="margin-top: 15px; margin-left: 0px;" onclick="Button3_Click" />
                              <asp:Button ID="Button4" runat="server" BackColor="#FF3300" ForeColor="White" 
                 Text="Delete" Height="32px" Width="92px" 
                 style="margin-top: 15px; margin-left: 0px;" onclick="Button4_Click"/>
             </td></tr>
             <tr><td colspan=2 align=center class="style5"><asp:Label ID="Label6" runat="server" 
                     Font-Size="Large" ForeColor="Red"></asp:Label></td></tr>
         </table>
         <table><tr><td height="550px"></td></tr></table>
        </td>
        <td align="center" width="1100px"> 
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Horizontal" Width="1081px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                <asp:BoundField DataField="drid" HeaderText="Dr.id" />
                <asp:BoundField DataField="drname" HeaderText="Doctor Name" />
                <asp:BoundField DataField="email" HeaderText="Email" />
                 <asp:BoundField DataField="edu" HeaderText="Education" />
                  <asp:BoundField DataField="department" HeaderText="Department" />
                  <asp:BoundField DataField="logid" HeaderText="Log Id" />
                  <asp:BoundField DataField="password" HeaderText="Password" />
                  <asp:ImageField DataImageUrlField="photo" HeaderText="Picture" Controlstyle-Height="70px">
                  <ControlStyle Height="70px" /><ControlStyle />
                  </asp:ImageField>
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


