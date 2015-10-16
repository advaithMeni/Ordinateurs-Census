<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="shwcmp.aspx.cs" Inherits="Roles_Lab_Assistant_shwcmp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection%>" DeleteCommand="DELETE FROM [addcomp] WHERE [compID] = @compID" InsertCommand="INSERT INTO [addcomp] ([compID], [type], [serialno], [sysno]) VALUES (@compID, @type, @serialno, @sysno)" SelectCommand="SELECT * FROM [addcomp]" UpdateCommand="UPDATE [addcomp] SET [type] = @type, [serialno] = @serialno, [sysno] = @sysno WHERE [compID] = @compID">
        <DeleteParameters>
            <asp:Parameter Name="compID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="compID" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="serialno" Type="String" />
            <asp:Parameter Name="sysno" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="serialno" Type="String" />
            <asp:Parameter Name="sysno" Type="String" />
            <asp:Parameter Name="compID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="compID" DataSourceID="SqlDataSource1" GridLines="None" Height="214px" Width="635px" align="Center" ForeColor="#333333" HorizontalAlign="Center" AlternatingRowStyle-HorizontalAlign="Center"  HeaderStyle-HorizontalAlign="Center" PagerStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center" >
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="compID" HeaderText="---Component ID---" ReadOnly="True" SortExpression="compID" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="type" HeaderText="---Type---" SortExpression="type" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="serialno" HeaderText="---Serial Number---" SortExpression="serialno" ItemStyle-HorizontalAlign="Center" />
            <asp:BoundField DataField="sysno" HeaderText="---System Number---" SortExpression="sysno" ItemStyle-HorizontalAlign="Center"/>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    
</asp:Content>

