<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="verAplicacion.aspx.vb" Inherits="programahonor.verAplicacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentNumber" DataSourceID="SqlDataAplicacion">
        <Columns>
            <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
            <asp:BoundField DataField="StudentNumber" HeaderText="StudentNumber" ReadOnly="True" SortExpression="StudentNumber" />
            <asp:BoundField DataField="Stu_Gender" HeaderText="Stu_Gender" SortExpression="Stu_Gender" />
            <asp:BoundField DataField="Stu_Birthday" HeaderText="Stu_Birthday" SortExpression="Stu_Birthday" />
            <asp:BoundField DataField="Stu_Email" HeaderText="Stu_Email" SortExpression="Stu_Email" />
            <asp:BoundField DataField="Stu_Phone" HeaderText="Stu_Phone" SortExpression="Stu_Phone" />
            <asp:BoundField DataField="Stu_Department" HeaderText="Stu_Department" SortExpression="Stu_Department" />
            <asp:BoundField DataField="Stu_Year" HeaderText="Stu_Year" SortExpression="Stu_Year" />
            <asp:BoundField DataField="Stu_Igs" HeaderText="Stu_Igs" SortExpression="Stu_Igs" />
            <asp:BoundField DataField="Stu_Certificate" HeaderText="Stu_Certificate" SortExpression="Stu_Certificate" />
            <asp:BoundField DataField="Stu_Authorization" HeaderText="Stu_Authorization" SortExpression="Stu_Authorization" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataAplicacion" runat="server" ConnectionString="<%$ ConnectionStrings:WAPHConnectionString %>" SelectCommand="SELECT [StudentName], [StudentNumber], [Stu_Gender], [Stu_Birthday], [Stu_Email], [Stu_Phone], [Stu_Department], [Stu_Year], [Stu_Igs], [Stu_Certificate], [Stu_Authorization] FROM [AdmRequest] ORDER BY [StudentNumber]"></asp:SqlDataSource>
</form>
</asp:Content>
