<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="managelb.aspx.cs" Inherits="Roles_HOD_managelb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="449px">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="lab" HeaderText="lab" SortExpression="lab" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection%>" DeleteCommand="DELETE FROM [oc] WHERE [ID] = @ID" InsertCommand="INSERT INTO [oc] ([ID], [role], [email], [lab]) VALUES (@ID, @role, @email, @lab)" SelectCommand="SELECT [ID], [role], [email], [lab] FROM [oc] WHERE ([role] = @role)" UpdateCommand="UPDATE [oc] SET [role] = @role, [email] = @email, [lab] = @lab WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="String" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ID" Type="String" />
        <asp:Parameter Name="role" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="lab" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:Parameter DefaultValue="Lab Assistant" Name="role" Type="String" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="role" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="lab" Type="String" />
        <asp:Parameter Name="ID" Type="String" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

