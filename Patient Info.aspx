<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Patient Info.aspx.cs" Inherits="Patient_Info" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
        <br /><br /><br /><table>
        <tr>
        <td width="300px"><img src="Pictures/321.jpg" style="height: 460px; width: 300px" /></td>
        <td align="center" width="1200px" height="400px" style="font-weight: bold">
        <asp:Label ID="Label1" runat="server" Text="Patient Id" Font-Size="Large"></asp:Label>
   &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBoxi1" runat="server" Width="132px"></asp:TextBox><br />
        <asp:Button ID="Button3" runat="server" Text="Search" Width="63px" 
                style="margin-left: 97px; margin-top: 7px"/> <br /><br /><br /><br />

          <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
                Font-Bold="True" Font-Size="20px" CellPadding="4">
              <ItemTemplate>
                 
                  <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("name") %>' Font-Size="23px" />
                  <br />
                  Email:
                  &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                  <br />
                  Mo No.:
                  &nbsp;&nbsp;<asp:Label ID="mnoLabel" runat="server" Text='<%# Eval("mobail") %>' />
                  <br />
                  Address:
                  <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>' />
                  <br />
                  Age:
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="ageLabel" runat="server" Text='<%# Eval("age") %>' />
                  <br />
                  Blood Group:
                  <asp:Label ID="bgLabel" runat="server" Text='<%# Eval("bg") %>' />
                  <br />
                  Department:
                  <asp:Label ID="dpLabel" runat="server" Text='<%# Eval("dp") %>' />
                  <br />
                  Symptom's:
                  &nbsp;&nbsp;<asp:Label ID="syLabel" runat="server" Text='<%# Eval("sy") %>' />
                  <br />
                  Diagnosis:
                  &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="diLabel" runat="server" Text='<%# Eval("di") %>' />
                  <br />
                  Medicine:
                  &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="meLabel" runat="server" Text='<%# Eval("me") %>' />
                  <br />
                  Addmit Date:
                  <asp:Label ID="dLabel" runat="server" Text='<%# Eval("d", "{0:d}") %>' />
                  <br />
                  Ward:
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="twLabel" runat="server" Text='<%# Eval("tw") %>' />
                  <br />
                  Room no.:
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="noLabel" runat="server" Text='<%# Eval("no") %>' />
                  <br />
<br />
              </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="Select * from Registration R INNER JOIN Patient P ON (R.logid = P.id) where R.logid=@pid">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBoxi1" Name="pid" 
                        PropertyName="Text" Type="String"/>
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
        </tr>
        </table>
        
</asp:Content>


