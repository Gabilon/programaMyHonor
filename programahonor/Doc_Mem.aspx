<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Doc_Mem.aspx.vb" Inherits="programahonor.Doc_Mem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet" />

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div_white">
        <h1 style="text-align: center; padding: 5px;">Nuestros Docentes y Estudiantes</h1>

        <div class="container-fluid" style="margin-top: 20px;">
            <h3>Profesores</h3>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Título</th>
                            <th>Facultad</th>
                            <th>Contácto</th>
                            <th>Descripción</th>
                            <th>Estado</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Asedoc_nombre" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Titulo" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Departamento" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Email" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Descripcion" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Status" runat="server" Text="Label"></asp:Label></td>

                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Asedoc_nombre1" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Titulo1" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Departamento1" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Email1" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Descripcion1" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Status1" runat="server" Text="Label"></asp:Label></td>
                        </tr>

                       <tr>
                            <td>
                                <asp:Label ID="Asedoc_nombre2" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Titulo2" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Departamento2" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Email2" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Descripcion2" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Asedoc_Status2" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <h3>Comités de Estudiantes</h3>
            <div class="table-responsive">
                <table class="table table-hover" id="tableComites">
                    <thead>
                        <tr>
                            <th>Nombre del Comité</th>
                            <th>Presidente</th>
                            <th>Secretario</th>
                            <th>Tesorero</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>
                                <asp:Label ID="Comite_nombre1" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Presidente_nombre1" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Secretario_nombre1" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Tesorero_nombre1" runat="server" Text="Label"></asp:Label></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Comite_nombre2" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Presidente_nombre2" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Secretario_nombre2" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Tesorero_nombre2" runat="server" Text="Label"></asp:Label></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Comite_nombre3" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Presidente_nombre3" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Secretario_nombre3" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Tesorero_nombre3" runat="server" Text="Label"></asp:Label></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Comite_nombre4" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Presidente_nombre4" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Secretario_nombre4" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Tesorero_nombre4" runat="server" Text="Label"></asp:Label></td>
                        </tr>

                        <tr>
                            <td>
                                <asp:Label ID="Comite_nombre5" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Presidente_nombre5" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Secretario_nombre5" runat="server" Text="Label"></asp:Label></td>
                            <td>
                                <asp:Label ID="Tesorero_nombre5" runat="server" Text="Label"></asp:Label></td>
                        </tr>
                    </tbody>
                </table>
                <span class="pull-right" style="padding-right: 15px; margin-right: 20px;padding-top: 10px;padding-left: 25px; margin-bottom:20px;">
                    
                    </span>
            </div>
        </div>
    </div>
</asp:Content>
