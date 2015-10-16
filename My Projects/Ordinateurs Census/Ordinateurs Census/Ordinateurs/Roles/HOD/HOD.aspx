<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="HOD.aspx.cs" Inherits="HOD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Adobe Gothic Std B" Font-Size="XX-Large"></asp:Label>
    <h2>You are logged in as HOD.</h2>
    <p align="center">
        <asp:Button ID="Button2" runat="server" Height="86px" Text="Manage Components" Font-Size="Large" OnClick="Button1_Click" />
        
    &nbsp;
        <asp:Button ID="Button1" runat="server" Height="86px" Text="Manage Lab Assistants" Font-Size="Large" OnClick="Button1_Click1" />
         &nbsp;
        <asp:Button ID="Button3" runat="server" Height="86px" Text="Reports" Font-Size="Large" OnClick="Button3_Click" Width="266px" />
    </p>
</asp:Content>

