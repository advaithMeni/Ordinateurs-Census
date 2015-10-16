<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Reporterr.aspx.cs" Inherits="Reporterr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
     <asp:Table ID="mytable" runat="server">
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
                <asp:DropDownList ID="DropDownList2" runat="server" Height="35px" Width="310px"></asp:DropDownList><br />
                </asp:TableCell>
            </asp:TableRow>
         
       <asp:TableRow HorizontalAlign="Center" VerticalAlign="Middle"><asp:TableCell>
    <asp:Label ID="Label3" runat="server" Text="Reason" Font-Bold="true" Font-Size="X-Large"></asp:Label></asp:TableCell>
         
             <asp:TableCell><asp:TextBox ID="TextBox1" runat="server" Height="148px" TextMode="MultiLine" Width="400px"></asp:TextBox></asp:TableCell>
         </asp:TableRow>
        
    <asp:TableRow HorizontalAlign="Center" VerticalAlign="Middle"><asp:TableCell></asp:TableCell><asp:TableCell>
    <asp:Button ID="btnreport" runat="server" Text="Report" Font-Size="Large" Height="45px" Width="161px" OnClick="btnreport_Click" />
       </asp:TableCell></asp:TableRow>
    </asp:Table>
</asp:Content>

