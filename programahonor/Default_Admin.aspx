<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Default_Admin.aspx.vb" Inherits="programahonor.Default_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet"/>

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <script>

        $('#').click(function (e) {
            e.preventDefault()
            $(this).tab('show')
        })
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div_white" style="margin-top: 15px">
        <ul class="nav nav-tabs" role="tablist" id="myTab">
            <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Solicitudes</a></li>
            <li role="presentation"><a href="#actividades" aria-controls="profile" role="tab" data-toggle="tab">Actividades</a></li>
            <li role="presentation"><a href="#evaluaciones" aria-controls="messages" role="tab" data-toggle="tab">Evaluaciones</a></li>
            <li role="presentation"><a href="#docentes" aria-controls="settings" role="tab" data-toggle="tab">Docentes Asesores</a></li>
            <li role="presentation"><a href="#membrecia" aria-controls="membrecia" role="tab" data-toggle="tab">Membrecías</a></li>
            <li role="presentation"><a href="#comites" aria-controls="comites" role="tab" data-toggle="tab">Comités</a></li>
        </ul>

        <div class="tab-content">
            <div role="tabpanel" class="tab-pane fade in active" id="solicitudes">...</div>
            <div role="tabpanel" class="tab-pane fade" id="actividades">...</div>
            <div role="tabpanel" class="tab-pane fade" id="evaluaciones">...</div>
            <div role="tabpanel" class="tab-pane fade" id="docentes">...</div>
            <div role="tabpanel" class="tab-pane fade" id="membrecias">...</div>
            <div role="tabpanel" class="tab-pane fade" id="comites">...</div>
        </div>

        <script>
            $(function () {
                $('#myTab a:first').tab('show')
            })
        </script>
    </div>
</asp:Content>
