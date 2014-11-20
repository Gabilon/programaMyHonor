<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Membre.Master" CodeBehind="comitesEstu_Mem.aspx.vb" Inherits="programahonor.comitesEstu_Mem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet"/>

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class = "div_white">
              
                <h1 style= "text-align: center; padding: 5px;">Comités de Estudiantes</h1>

                <div class= "container-fluid" style="padding-bottom: 15px">
                  <ul class="nav nav-pills nav-stacked col-md-2">
                    <li class="active"><a href="#tab_a" data-toggle="pill">Comité de Servicio</a></li>
                    <li><a href="#tab_b" data-toggle="pill">Comité de Actividades Académicas</a></li>
                    <li><a href="#tab_c" data-toggle="pill">Comité de Actividades Pro Fondos</a></li>
                    <li><a href="#tab_d" data-toggle="pill">Comité de Relaciones Públicas</a></li>
                    <li><a href="#tab_e" data-toggle="pill">Comité Pro-Imagen</a></li>
                  </ul>

            <div class="tab-content col-md-10">

              <div class="tab-pane fade in active" id="tab_a">
                <h3>Comité de Servicio</h3>
                <h5><strong>Agrupar estudiantes que desean activarse o continuar un proyecto de servicio voluntario.  Esto incluye:</strong></h5>
                <ol>
                  <li>Coordinar actividades de servicio para el año académico
                    <ul>
                      
                      <li>Tutorías</li>
                      <li>Mentoría</li>
                      <li>Proyectos Especiales</li>
                      <li>Servicio al Programa de Estudios de Honor</li>
                      <li>Otras</li>
                    </ul>
                  </li>
                  <li>Llevar récord de los estudiantes activos en servicio durante el semestre.</li>
                  <li>Rendir un informe a la Coordinadora del Programa de Estudios de Honor al finalizar el año académico</li>
                </ol> 
                   
              </div>

              <div class="tab-pane fade" id="tab_b">
                   <h3>Comité de Actividades Académicas</h3>
                   <ul>
                    <li>Coordinar las actividades académicas que serán ofrecidas durante el año</li>
                    <li>Divulgar y/o promover las actividades del Programa</li>
                    <li>Asistir a las actividades académicas que ofrezca el Programa durante el semestre</li>
                    <li>Fungir como facilitadores en las actividades académicas del Programa. Ejemplo, leer semblanza, moderador, entregar certificados, etc.</li>
                   </ul>
              </div>

              <div class="tab-pane fade" id="tab_c">
                <h3>Comité Pro-Fondos</h3> 
                <ul>
                  <li>Desarrollar estrategias que logren identificar e integrar individuos, grupos y empresas como auspiciadores del Programa de Estudios de Honor.</li>
                  <li>Colaborar con el Consejo Directivo en cuanto al establecimiento de un fondo económico de becas del Programa de Estudios de Honor</li>
                  <li>Planificar actividades para recaudar fondos para el Programa de Estudios de Honor (Venta de Chocolates, etc.)</li>
                </ul> 
              </div>

              <div class="tab-pane fade" id="tab_d"> 
                <h3>Comité de Relaciones Públicas</h3>
                <h5><strong>Divulgar información relacionada al Programa de Estudios de Honor.
Esto incluye los siguientes aspectos:</strong></h5>

                <ul>
                  <li>Reclutamiento de nuevos miembros</li>
                  <li>Diseñar la estrategia que se utilizará para comunicar la información del Programa de Estudios de Honor a las escuelas superiores y/o comunidad universitaria</li>
                  <li>Divulgar y/o promover las actividades del Programa.</li>
                  <li>Crear y/o actualizar el folleto informativo del Programa</li>
                  <li>Creación de un boletín informativo anual que incluya reseñas, entrevistas, actividades y/o logros lcanzados durante el año académico. </li>
                  <li>Colaborar con el Consejo Directivo en el desarrollo del Plan de Trabajo</li>
                </ul>


              </div>
              <div class="tab-pane fade" id="tab_e"> 
                <h3>Comité Pro-Imagen</h3>
                <ul>
                  <li>
Someter a la Coordinadora del Programa el plan para ambientar la sala de reuniones del Programa, decorar el salón y el "bulletin board"</li>
                  <li>Actualizar el "bulletin board" durante el año académico</li>
                  <li>Reunirse con la Coordinadora y la secretaria para discutir estrategias para mejor utilización de las facilidades y decoración de las mismas, etc.</li>
                  <li>Otras</li>
                </ul>
              </div>
            </div>
            </div> 
        </div> 
</asp:Content>
