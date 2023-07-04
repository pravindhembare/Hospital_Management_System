<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">        
        <img src="Pictures/img1.jpg" height="495PX" width="1500PX" />
        <table bgcolor="#FF3300"><tr height="40px"><td width=300px></td><td width=1190px>
            <asp:LinkButton 
            ID="LinkButton1" runat="server" 
            ForeColor="White" Font-Size="X-Large" Font-Bold="True" BackColor="#FF3300" 
                onclick="LinkButton1_Click">Book An Appointment >></asp:LinkButton>
           </td></tr></table>
           <p align="center" style="font-size: xx-large; font-weight: bold"> Centres of Excellence</p>
           <table width=1500px>
           <tr>
           <td><img src="Pictures/Neurosurgery.png" ismap="ismap" usemap="Neurosurgery.aspx" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href=Neurosurgery.aspx>Neurosurgery</a></p></td>
           <td><img src="Pictures/Organ%20Transplants.png" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href="Organ Transplants.aspx">Organ Transplants</a> </p></td>
           <td><img src="Pictures/Neurology.png" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href=Neurology.aspx>Neurology</a> </p></td>
           <td><img width=300px height=270px src="Pictures/Dentistry.png" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href=Dentistry.aspx>Dentistry</a> </p></td>
           </tr>
           <tr>
           <td><img src="Pictures/Heamatology.png" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href=Heamatology.aspx>Heamatology</a> </p></td>
           <td><img src="Pictures/Cordiology.png" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href=Cordiology.aspx>Cordiology</a> </p></td>
           <td><img src="Pictures/Orthopaedic.png" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href=Orthopaedic.aspx>Orthopaedic</a> </p></td>
           <td><img src="Pictures/Oncology.png" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href=Oncology.aspx>Oncology</a> </p></td>
           </tr>
           <tr>
           <td><img src="Pictures/Endocrinology.png" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href=Endocrinology.aspx>Endocrinology </a> </p></td>
           <td><img src="Pictures/Gastroenterology.png" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href=Gastroenterology.aspx>Gastroenterology</a> </p></td>
           <td><img src="Pictures/General%20Surgery.png" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href="General Surgery.aspx">General Surgery</a> </p></td>
           <td><img src="Pictures/Urology.png" /><p align="center" 
                   style="font-size:x-large; font-weight: bold"><a href=Urology.aspx>Urology</a> </p></td>
           </tr>
           </table>
           <img width=1500px src="Pictures/Screenshot%20(45).png" />
</asp:Content>


