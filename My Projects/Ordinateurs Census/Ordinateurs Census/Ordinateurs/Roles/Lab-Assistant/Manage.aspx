<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Manage.aspx.cs" Inherits="Manage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">                   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">      
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p align="center">
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Adobe Hebrew" Font-Size="XX-Large"></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Adobe Hebrew" Font-Size="XX-Large"></asp:Label><br />

         </p>
    <p align="center">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
               
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Adobe Hebrew" Font-Size="XX-Large"  Text="Assigned Lab:"></asp:Label>
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Adobe Hebrew" Font-Size="XX-Large" Text='<%#Eval("lab") %>'></asp:Label>
        
                     </ItemTemplate>
        </asp:DataList>

         </p>
    <p>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" Height="119px" OnClick="addcomponent_Click" Text="Add Component" Width="243px" BackColor="#009900" Font-Bold="True" Font-Names="Adobe Caslon Pro Bold" Font-Size="X-Large" Font-Underline="False" ForeColor="#99FF66" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
        <asp:Button ID="Button2" runat="server" Height="119px" OnClick="delcomponent_Click" Text="Delete Component" Width="243px" BackColor="#009900" Font-Bold="True" Font-Names="Adobe Caslon Pro Bold" Font-Size="X-Large" Font-Underline="False" ForeColor="#99FF66" />
         &nbsp;</p>
     <p>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; <asp:Button ID="Button4" runat="server" Height="119px" OnClick="updcomponent_Click" Text="Update Component" Width="243px" BackColor="#009900" Font-Bold="True" Font-Names="Adobe Caslon Pro Bold" Font-Size="X-Large" Font-Underline="False" ForeColor="#99FF66" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Button5" runat="server" Height="119px" OnClick="reporterr_Click" Text="Report Errors" Width="243px" BackColor="#009900" Font-Bold="True" Font-Names="Adobe Caslon Pro Bold" Font-Size="X-Large" Font-Underline="False" ForeColor="#99FF66" />
         &nbsp;</p>
    <p align="center">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;<asp:Button ID="Button6" runat="server" Height="119px" OnClick="shwcmp_Click" Text="Show Components" Width="243px" BackColor="#009900" Font-Bold="True" Font-Names="Adobe Caslon Pro Bold" Font-Size="X-Large" Font-Underline="False" ForeColor="#99FF66" />
         </p>
    
</asp:Content>

