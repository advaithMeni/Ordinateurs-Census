<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="updcomp.aspx.cs" Inherits="Roles_Lab_Assistant_delcomp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     <asp:Table ID="mytable" runat="server" align="center">
        <asp:TableRow HorizontalAlign="Center" VerticalAlign="Middle">
            <asp:TableCell>
                <asp:Label ID="Label1" runat="server" Text="Type of Component " Font-Bold="True" Font-Size="Large"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="310px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                     <asp:ListItem>Select Choice</asp:ListItem>
                    <asp:ListItem>Keyboard</asp:ListItem>
                     <asp:ListItem>Mouse</asp:ListItem>
                </asp:DropDownList>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow HorizontalAlign="Center" VerticalAlign="Middle">
            <asp:TableCell>
                <asp:Label ID="Label2" runat="server" Text="Component ID " Font-Bold="True" Font-Size="Large"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="310px" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                </asp:TableCell>
            </asp:TableRow>
         <asp:TableRow HorizontalAlign="Center" VerticalAlign="Middle">
            <asp:TableCell>
                <asp:Label ID="Label3" runat="server" Text="Serial Number " Font-Bold="True" Font-Size="Large"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="serialno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="serialno"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
        <asp:TableRow HorizontalAlign="Center" VerticalAlign="Middle">
            <asp:TableCell>
                <asp:Label ID="Label4" runat="server" Text="System Number " Font-Bold="True" Font-Size="Large"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="txtsysno" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtsysno"></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
<asp:TableRow HorizontalAlign="Center"><asp:TableCell>
    <asp:Button ID="btnsub" runat="server" Text="Edit" Height="40px" Width="150px" OnClick="btnsub_Click"/></asp:TableCell>
    <asp:TableCell>  <asp:Button ID="Button1" runat="server" Text="Update" Height="40px" Width="150px" OnClick="Button1_Click" /></asp:TableCell>
</asp:TableRow>
    </asp:Table>
</asp:Content>

