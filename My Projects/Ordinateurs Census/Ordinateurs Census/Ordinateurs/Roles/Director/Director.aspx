<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Director.aspx.cs" Inherits="Director" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Adobe Gothic Std B" Font-Size="XX-Large"></asp:Label>
    <h2>You are logged in as Director.</h2>
     <p align="center">
          <asp:Button ID="Button4" runat="server" Font-Bold="True" Font-Size="Large" Height="58px" Text="Manage Components" Width="198px" OnClick="Button4_Click" />&nbsp;
         <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" Height="58px" Text="Reports" Width="198px" OnClick="Button1_Click" />&nbsp;
         <asp:Button ID="Button2" runat="server" Font-Bold="True" Font-Size="Large" Height="58px" Text="Updates" Width="198px" OnClick="Button2_Click" />&nbsp;
     <asp:Button ID="Button3" runat="server" Font-Bold="True" Font-Size="Large" Height="58px" Text="Manage Persons" Width="198px" OnClick="Button3_Click" />
     </p>
     
    </asp:Content>

