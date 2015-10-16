<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="chkstatus.aspx.cs" Inherits="Roles_Director_chkstatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection%>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Table] ([name], [status], [reportdesc], [dor], [tor]) VALUES (@name, @status, @reportdesc, @dor, @tor)" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [name] = @name, [status] = @status, [reportdesc] = @reportdesc, [dor] = @dor, [tor] = @tor WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="reportdesc" Type="String" />
            <asp:Parameter Name="dor" Type="String" />
            <asp:Parameter Name="tor" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="status" Type="String" />
            <asp:Parameter Name="reportdesc" Type="String" />
            <asp:Parameter Name="dor" Type="String" />
            <asp:Parameter Name="tor" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Width="882px" AlternatingRowStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center"> 
        
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="S.No" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="name" HeaderText="---Component ID---" SortExpression="type" />
            <asp:BoundField DataField="status" HeaderText="-Action-" SortExpression="compID" />
            <asp:BoundField DataField="reportdesc" HeaderText="---Username---" SortExpression="reportdesc" />
            <asp:BoundField DataField="dor" HeaderText="--Report Date--" SortExpression="dor" />
            <asp:BoundField DataField="tor" HeaderText="--Report Time--" SortExpression="tor" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

    </asp:GridView>
</asp:Content>

