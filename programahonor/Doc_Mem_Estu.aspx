<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Estudiantes.Master" CodeBehind="Doc_Mem_Estu.aspx.vb" Inherits="programahonor.Doc_Mem_Estu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet"/>

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
                            <th>Contácto</th>
                            <th>Facultad</th>
                        </tr>
                    </thead>

                    <tbody>
                        <tr>
                            <td>Omar Díaz</td>
                            <td>omar.diaz4@upr.edu</td>
                            <td>Ciencias de Computadoras</td>
                        </tr>

                        <tr>
                            <td>Nelliud Torres</td>
                            <td>nelliud.torres@upr.edu</td>
                            <td>Ciencias de Computadoras</td>
                        </tr>

                        <tr>
                            <td>Antonio Huertas</td>
                            <td>antonio.huertas@upr.edu</td>
                            <td>Ciencias de Computadoras</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <h3>Comités de Estudiantes</h3>
            <div class="table-responsive">
                <table class="table table-hover">
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
                            <td>Servicio</td>
                            <td>José Alvarez</td>
                            <td>Ricardo Nuñez</td>
                            <td>Emanuel Correa</td>
                        </tr>

                        <tr>
                            <td>Actividades Académicas</td>
                            <td>Carlos Vázquez</td>
                            <td>Luis Valcourt</td>
                            <td>José Padilla</td>
                        </tr>

                        <tr>
                            <td>Actividades Pro Fondos</td>
                            <td>Gabriel Monsalve</td>
                            <td>Luis Flores</td>
                            <td>Paola Pagán</td>
                        </tr>

                        <tr>
                            <td>Relaciones Públicas</td>
                            <td>Carlos Cabán</td>
                            <td>Omar Díaz</td>
                            <td>Gabriel Bermúdez</td>
                        </tr>

                        <tr>
                            <td>Pro Imagen</td>
                            <td>Stephanie López</td>
                            <td>Victor Marcial</td>
                            <td>Emmanuel Luciano</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
