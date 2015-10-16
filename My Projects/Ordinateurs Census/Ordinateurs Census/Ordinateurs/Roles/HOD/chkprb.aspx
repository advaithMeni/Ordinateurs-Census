<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="chkprb.aspx.cs" Inherits="Roles_HOD_chkprb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection%>" DeleteCommand="DELETE FROM [error] WHERE [Id] = @Id" InsertCommand="INSERT INTO [error] ([type], [compID], [reportdesc], [dor], [tor]) VALUES (@type, @compID, @reportdesc, @dor, @tor)" SelectCommand="SELECT * FROM [error]" UpdateCommand="UPDATE [error] SET [type] = @type, [compID] = @compID, [reportdesc] = @reportdesc, [dor] = @dor, [tor] = @tor WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="compID" Type="String" />
            <asp:Parameter Name="reportdesc" Type="String" />
            <asp:Parameter Name="dor" Type="String" />
            <asp:Parameter Name="tor" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="compID" Type="String" />
            <asp:Parameter Name="reportdesc" Type="String" />
            <asp:Parameter Name="dor" Type="String" />
            <asp:Parameter Name="tor" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="217px" Width="858px" AlternatingRowStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center" >
        <AlternatingRowStyle BackColor="White" />
        <Columns>
             <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="type" HeaderText="Type" SortExpression="type" />
            <asp:BoundField DataField="compID" HeaderText="Component ID" SortExpression="compID" />
            <asp:BoundField DataField="userID" HeaderText="User ID" SortExpression="userID" />
            <asp:BoundField DataField="reportdesc" HeaderText="Description" SortExpression="reportdesc" />
            <asp:BoundField DataField="dor" HeaderText="Date Of Report" SortExpression="dor" />
            <asp:BoundField DataField="tor" HeaderText="Time Of Report" SortExpression="tor" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>

