<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Actividades.aspx.vb" Inherits="programahonor.Actividades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet" />

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>


  <style>
  h4 {
    text-align: center;
  }

  p {
    text-align: center;
  }

  </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class = "div_white">
              
          <h1 style= "text-align: center; padding: 5px;">Actividades Estudiantiles</h1>
          <h4 style = "text-align: center">Actividad de Bienvenida de los Estudiantes del Programa de Honor</h4>
          <p style= "text-align: center">30 de septiembre de 2010</p>
          
          <div class= "container-fluid">
            <div id="carousel1" class="carousel slide" data-ride="carousel">
                   <!-- Wrapper for slides -->
                   <div class="carousel-inner" role="listbox">
                     <div class="item active">
                       <img src="Images/honor1.jpg" alt="...">
                       <div class="carousel-caption">
                         
                       </div>
                     </div>
                     <div class="item">
                       <img src="Images/honor2.jpg" alt="...">
                       <div class="carousel-caption">
                         
                       </div>
                     </div>
                     <div class="item">
                       <img src="Images/honor3.jpg" alt="...">
                       <div class="carousel-caption">
                         
                       </div>
                     </div>
                   </div>
                 
                   <!-- Controls -->
                   <a class="left carousel-control" href="#carousel1" role="button" data-slide="prev">
                     <span class="glyphicon glyphicon-chevron-left"></span>
                     <span class="sr-only">Previous</span>
                   </a>
                   <a class="right carousel-control" href="#carousel1" role="button" data-slide="next">
                     <span class="glyphicon glyphicon-chevron-right"></span>
                     <span class="sr-only">Next</span>
                   </a>
                 </div> 
               </div>

                <h4>Encuentro de Estudiantes de Programas de Honor</h4>
                <p>Universidad de Puerto Rico en Cayey<br>
21 de octubre de 2006 </p>
               <div class= "container-fluid">
            <div id="carousel2" class="carousel slide" data-ride="carousel">
                   <!-- Wrapper for slides -->
                   <div class="carousel-inner" role="listbox">
                     <div class="item active">
                       <img src="Images/honor4.JPG" alt="...">
                       <div class="carousel-caption">
                         
                       </div>
                     </div>
                     <div class="item">
                       <img src="Images/honor5.JPG" alt="...">
                       <div class="carousel-caption">
                         
                       </div>
                     </div>
                     <div class="item">
                       <img src="Images/honor6.JPG" alt="...">
                       <div class="carousel-caption">
                         
                       </div>
                     </div>
                   </div>
                 
                   <!-- Controls -->
                   <a class="left carousel-control" href="#carousel2" role="button" data-slide="prev">
                     <span class="glyphicon glyphicon-chevron-left"></span>
                     <span class="sr-only">Previous</span>
                   </a>
                   <a class="right carousel-control" href="#carousel2" role="button" data-slide="next">
                     <span class="glyphicon glyphicon-chevron-right"></span>
                     <span class="sr-only">Next</span>
                   </a>
                 </div> 
               </div>
                <h4>Visita al Observatorio</h4>
               <p>14 de febrero</p> 
               <div class= "container-fluid">
            <div id="carousel3" class="carousel slide" data-ride="carousel">
                   <!-- Wrapper for slides -->
                   <div class="carousel-inner" role="listbox">
                     <div class="item active">
                       <img src="Images/honor7.jpg" alt="...">
                       <div class="carousel-caption">
                         
                       </div>
                     </div>
                     <div class="item">
                       <img src="Images/honor8.jpg" alt="...">
                       <div class="carousel-caption">
                         
                       </div>
                     </div>
                   </div>
                 
                   <!-- Controls -->
                   <a class="left carousel-control" href="#carousel3" role="button" data-slide="prev">
                     <span class="glyphicon glyphicon-chevron-left"></span>
                     <span class="sr-only">Previous</span>
                   </a>
                   <a class="right carousel-control" href="#carousel3" role="button" data-slide="next">
                     <span class="glyphicon glyphicon-chevron-right"></span>
                     <span class="sr-only">Next</span>
                   </a>
                 </div> 
               </div>



        


        </div>

</asp:Content>
