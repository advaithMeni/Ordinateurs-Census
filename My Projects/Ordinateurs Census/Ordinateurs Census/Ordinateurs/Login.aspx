<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     <asp:Table ID="mytable" runat="server"><asp:TableRow><asp:TableCell>
    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label></asp:TableCell>
    <asp:TableCell><asp:TextBox ID="txtusr" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtusr"></asp:RequiredFieldValidator>
    </asp:TableCell>
        
        </asp:TableRow>
        <asp:TableRow><asp:TableCell>
    <asp:Label ID="Label5" runat="server" Text="Role"></asp:Label></asp:TableCell>
    <asp:TableCell>
         
        <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="310px">
            <asp:ListItem Selected="True">Select Choice</asp:ListItem>
            <asp:ListItem>Lab Assistant</asp:ListItem>
            <asp:ListItem>HOD</asp:ListItem>
            <asp:ListItem>Administrator</asp:ListItem>
            <asp:ListItem>Director</asp:ListItem>
        </asp:DropDownList>
        <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
         </asp:TableCell>
        </asp:TableRow>
       <asp:TableRow><asp:TableCell>
    <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></asp:TableCell>
    <asp:TableCell><asp:TextBox ID="txtpwd" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtpwd"></asp:RequiredFieldValidator></asp:TableCell>
         </asp:TableRow>
           </asp:Table>
    <asp:Button ID="sub" runat="server" Text="Login" OnClick="Button1_Click" />
  
</asp:Content>

