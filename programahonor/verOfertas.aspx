<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="verOfertas.aspx.vb" Inherits="programahonor.verOfertas" %>
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
                                <asp:Label ID="For_CompanyWebPage" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                </table>
                <span class="pull-right" style="padding-right: 15px; margin-right: 20px;padding-top: 10px;padding-left: 25px; margin-bottom:20px;">
                        <a href="LogIn.aspx" class="btn btn-primary" role="button" >Ver más</a>
                    </span>
                
            </div>
        </div>
    </div>
</asp:Content>
