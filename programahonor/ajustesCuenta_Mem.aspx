<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Membre.Master" CodeBehind="ajustesCuenta_Mem.aspx.vb" Inherits="programahonor.ajustesCuenta_Mem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet"/>

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div_white">
        <div class="container-fluid" style="margin-top: 20px">
            <div class="panel panel-info" style="margin-top: 10px;">
                <div class="panel-heading"><h4>Gabriel Bermúdez - 841110690</h4></div>
  <div class="panel-body"style="background-color:#FFFFFF;">
            <div class="row">
                <div class="col-md-1" style="padding-right: 15px; margin-right: 20px;">
                    <img alt="User Pic" src="https://lh5.googleusercontent.com/-b0-k99FZlyE/AAAAAAAAAAI/AAAAAAAAAAA/eu7opA4byxI/photo.jpg?sz=100" class="img-circle">
                </div>
                <div class="col-md-6">
                    <table class="table table-condensed">

                        <thead>
                        </thead>

                        <tbody>
                            <tr>
                                <td>Departamento:</td>
                                <td>Ciencias de Computo</td>
                            </tr>

                            <tr>
                                <td>Fecha de Ingresión:</td>
                                <td>12/1/2014</td>
                            </tr>

                            <tr>
                                <td>Dirreción Postal:</td>
                                <td>PO BOX 367478</td>
                            </tr>
                            <tr>
                                <td>Pueblo:</td>
                                <td>San Juan 00936</td>
                            </tr>
                            <tr>
                                <td>Email:</td>
                                <td>gabrielandres2011@hotmail.com</td>
                            </tr>
                            <tr>
                                <td>Número de Telefono:</td>
                                <td>7874687112</td>
                            </tr>
                           
                        </tbody>
                    </table>
                    <span class="pull-right" style="padding-right: 15px; margin-right: 20px;padding-top: 10px;padding-left: 25px;">
                        <asp:Button ID="Editar_Btn" runat="server" Text="Editar" />
                        <asp:Button ID="Guardar_Btn" runat="server" Text="Guardar" />
                    </span>
                    </div>
                </div>
                </div>
            </div>  
        </div>
    </div>
</asp:Content>
