<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Membre.Master" CodeBehind="verOfertas_Mem.aspx.vb" Inherits="programahonor.verOfertas_Mem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet"/>

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div_white">
        <div class="container-fluid" style="margin-top: 20px;">
            <h3>Ofertas Corrientes</h3>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Compañía</th>
                            <th>Salario</th>
                            <th>Contacto</th>
                            <th>Teléfono</th>
                            <th>Fax</th>
                            <th>Dirección Física</th>
                            <th>Dirección Postal</th>
                            <th>Comentarios</th>
                            <th>Email</th>
                            <th>Página</th>
                        </tr>
                    </thead>
                        <tr>
                            <td>
                                <asp:Label ID="For_CompanyName" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="For_Salary" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="For_OtherBenefits" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="For_ContactName" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="For_ContactOtherPhone" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="For_contactFax" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="For_CompanyPhysicalAddress" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="For_CompanyPostalAddress" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="For_Comments" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="For_CompanyEmail" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="For_CompanyWebPage" runat="server" Text="Label"></asp:Label>
                            </td>


                        </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
