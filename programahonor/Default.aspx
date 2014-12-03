<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.vb" Inherits="programahonor._Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet"/>

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="div_white">
        <h1 style="text-align: center; padding: 5px;">Bienvenidos al Programa de Honor UPRB</h1>
        <div class="container-fluid">
            <h3>El Programa de Estudios de Honor ofrece una experiencia única a los estudiantes talentosos que desean aprovechar plenamente su educación universitaria.
                <br>
                <br>
                Su objetivo es enriquecer la formación educativa del estudiante dentro de un marco interdisciplinario.</h3>
            <div class="row">
                <div class="col-sm-4 col-md-4">
                    <div class="thumbnail">
                        <img data-src="holder.js/300x300" src="images/img8.jpg" style="min-height: 200px; height: 200px;">
                        <div class="caption">
                            <h3>Información General</h3>
                            <p>Descripción de el programa[Misión, Visión y Metas] y benecicios para el estudiante</p>
                            <p>
                                <a href="infoGeneral.aspx" class="btn btn-primary" role="button">Ver más</a>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 col-md-4">
                    <div class="thumbnail">
                        <img data-src="holder.js/300x300" src="images/img3.jpg" style="min-height: 200px; height: 200px;">
                        <div class="caption">
                            <h3>Aspectos Académicos</h3>
                            <p>El Programa de Estudios de Honor ofrecerá a los estudiantes la oportunidad de un desarrollo académico de excelencia.</p>
                            <p>
                                <a href="aspectosAca.html" class="btn btn-primary" role="button">Ver más</a>
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 col-md-4">
                    <div class="thumbnail">
                        <img data-src="holder.js/300x300" src="images/img2.jpg" style="min-height: 200px; height: 200px;">
                        <div class="caption">
                            <h3>Comités Estudiantes</h3>
                            <p>Agrupar estudiantes que desean activarse o continuar un proyecto de servicio voluntario</p>
                            <p>
                                <a href="comitesEstu.aspx" class="btn btn-primary" role="button">Ver más</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
