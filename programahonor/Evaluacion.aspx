<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Evaluacion.aspx.vb" Inherits="programahonor.Evaluacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    <!--<img src="http://www.uprb.edu/actividades/UPRB-portal-demo/IMAGES/HEADBANNER/HEADER-BANNER-FW_r2_c2.jpg" class="img-responsive" alt="Responsive image" id = "pic">-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div_white" style="height:100%">
        <form id="form1" method="post" runat="server" Class="form-horizontal">
             <h1 style= "text-align: center; padding: 5px;">Evaluacion </h1>
            <br></br> 
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>Nombre del estudiante </label>
                    <asp:TextBox ID="Eval_NombreEstudiante" runat="server"></asp:TextBox>
                </div>

                <div class="col-md-6">
                    <label># de estudiante </label>
                    <asp:TextBox ID="Eval_NumeroEstudiante" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>Indique la naturaleza de su asociacion con el solicitante</label>
                  
                </div>

                <div class="col-md-6">
                    <asp:DropDownList ID="Eval_AsociacionEst" runat="server" DataSourceID="Eval_AsociacionData" DataTextField="type" DataValueField="id"></asp:DropDownList>
                    <asp:XmlDataSource ID="Eval_AsociacionData" runat="server" DataFile="~/Content/xml/asociacionEstudiante.xml"></asp:XmlDataSource>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_AsociacionEst" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <br></br> 
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>Cuan bien usted conoce al solicitante</label>
                </div>

                <div class="col-md-6">
                    <asp:DropDownList ID="Eval_ConoceEst" runat="server" DataSourceID="Eval_ConoceData" DataTextField="type" DataValueField="id"></asp:DropDownList>
                    <asp:XmlDataSource ID="Eval_ConoceData" runat="server" DataFile="~/Content/xml/xmlConoceBien.xml"></asp:XmlDataSource>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_ConoceEst" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
             <br></br> 
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>Hace cuanto tiempo lo conoce</label>
                </div>

                <div class="col-md-6">
                    <asp:DropDownList ID="Eval_tiempo" runat="server" DataSourceID="Eval_tiempoData" DataTextField="type" DataValueField="id"></asp:DropDownList>
                    <asp:XmlDataSource ID="Eval_tiempoData" runat="server" DataFile="~/Content/xml/XmlConoceTiempo.xml"></asp:XmlDataSource>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_tiempo" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <br></br> 
            <div class ="col-md-12">
            <label>Cual seria su opinion con relacion a que el solicitante aspire a formar parte del Programa de Estudios de Honor&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="Eval_OpinionProfEst" runat="server" CssClass="MultiLineTextBox" Height="80px" MaxLength="600" Width="800px" TextMode="MultiLine"></asp:TextBox><br />
             <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_OpinionProfEst" CssClass="label label warning" ErrorMessage="campo requerido" />
            </div>          
            <div class ="col-md-12">
                <label>Tiene conocimiento de que el solicitante haya estado implicado en alguna accion disciplinaria que pueda afectar su participacion como estudiante</label>
                <asp:DropDownList ID="Eval_FaltaEst" runat="server" DataSourceID="Eval_ConocimientoData" DataTextField="type" DataValueField="id"></asp:DropDownList>
                <asp:XmlDataSource runat="server" ID="Eval_ConocimientoData" DataFile="~/Content/xml/xmlSINO.xml"></asp:XmlDataSource>
               </div>
            <div class ="col-md-12">
                <label> contesto Sí ? Favor de ampliar la información. </label>
                 <asp:TextBox ID="Eval_FaltaEsttxt" runat="server" CssClass="MultiLineTextBox" Height="80px" MaxLength="600" Width="800px" TextMode="MultiLine"></asp:TextBox><br />
                 <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_FaltaEsttxt" CssClass="label label warning" ErrorMessage="campo requerido" />
                 <br></br> 
                 </div>       
            <div class=" col-md-12">
                 <asp:Label Font-Size="16pt" Text="Favor de identificar las características que corresponden al solicitante:" runat="server" />
            </div>
            <br></br> 
            <div class=" col-md-12">
                <div class="col-md-6">
                     <asp:Label Font-Size="14pt" Text="Caracteristicas:" runat="server" />
                    

                </div>
                <div class="col-md-6">
                 <asp:Label Font-Size="14pt" Text="Calificaciones" runat="server" />
                    
                </div>
            </div>
            <br></br> 
            <div class=" col-md-12">          
                <asp:Label Font-Size="14pt" Font-Underline="true" Text="Laborosidad" runat="server" />
              
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>a. Hace bien las tareas.</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Tarea" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_tareaData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_tareaData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Tarea" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>b. Termina los trabajos a tiempo.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Cumplimiento" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_TiempoTrabData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_TiempoTrabData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Cumplimiento" CssClass="label label warning" ErrorMessage="campo requerido" />
                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>c. Utiliza bien el tiempo.</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_UsoTiempo" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_TiempoBienData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_TiempoBienData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Usotiempo" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>d. Es fiel a su horario. </label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Horario" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_HorarioData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_HorarioData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Horario" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>e. Es ordenado(a).</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_OrdenEstudiante" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_OrdenadoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_OrdenadoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_OrdenEstudiante" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>f. Trabaja según los procedimientos.</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Procedimiento" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_ProcedimientoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_ProcedimientoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Procedimiento" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>g. Se ajusta a las normas de la institución.</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_AjustaNormas" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_AjustaNormasData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_AjustaNormasData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_AjustaNormas" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>h. Demuestra calidad en sus trabajos.</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_CalidadTrbajo" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_trabajoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_trabajoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_CalidadTrbajo" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>i. Delega responsabilidades correctamente.</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_DeleganResponsabilidad" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_ResponsabilidadData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_ResponsabilidadData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_DeleganResponsabilidad" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>j. Sabe trabajar bajo presión.</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Habilidad_Presion" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_PresionData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_PresionData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Habilidad_Presion" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>k. Posee habilidad para analizar y resolver problemas.</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Habilidad_Analisis_Resolver" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_habilidadesData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_habilidadesData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Habilidad_Analisis_Resolver" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                  <asp:Label Font-Size="14pt" Font-Underline="true" Text="Madurez" runat="server" />           
            </div>
            <br></br>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>a. Habilidad para enfrentar retos en la vida.</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_EnfrentarRetos" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_EnfrentarData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_EnfrentarData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_EnfrentarRetos" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>b. Tiene dominio propio. </label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_DominioPropio" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_DominioData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_DominioData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_DominioPropio" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>c. Actua con rectitud de intencion. </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Rectitud" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_IntencionData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_IntencionData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Rectitud" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>d. Sabe tomar decisiones. </label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_TomadeDecisiones" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_DecisionesData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_DecisionesData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_TomadeDecisiones" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>e .Es sincera(a). </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Sinceridad" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_SinceroData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_SinceroData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Sinceridad" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>f. Proyecta serenidad. </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_ProySerenidad" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_SerenidadData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_SerenidadData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_ProySerenidad" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>g. Utiliza el sentido común </label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_SentidoComun" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_SentidoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_SentidoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_SentidoComun" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
             <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>h. Utiliza  el buen juicio. </label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="eval_buenJuicio" runat="server" RepeatDirection="Horizontal" DataSourceID="eval_buenJuicioData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="eval_buenJuicioData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_buenJuicio" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                  <asp:Label Font-Size="14pt" Font-Underline="true" Text="Relaciones interpersonales" runat="server" />
                
            </div>
           <br > <br />
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>a. Demuestra habilidad para la comunicación efectiva.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_TrabajoComunicacion" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_TrabajoComunicacionData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_TrabajoComunicacionData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_TrabajoComunicacion" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>b. Demuestra habilidad para la  cooperación.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_habilidadCooperacion" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_habilidadCooperacionData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_habilidadCooperacionData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_habilidadCooperacion" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>c. Demuestra habilidad para el trabajo en equipo.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_habilidadEquipo" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_habilidadEquipoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_habilidadEquipoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_habilidadEquipo" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>d. Facilita el diálogo con sus pares y personas que le rodean.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_FacilitaDialogo" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_DialogoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_DialogoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_FacilitaDialogo" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>e. Es educado y aplica normas básicas de urbanidad. </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_EducacionUrbanidad" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_urbanidadData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_urbanidadData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_EducacionUrbanidad" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>f. Posee buen sentido del humor y es afable con sus compañeros </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_HumorAfabilidad" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_HumorData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_HumorData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_HumorAfabilidad" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label>g. Es capaz de escuchar y aceptar diferentes puntos de vista. </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_EscuchaOpinion" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_VistaData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_VistaData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_EscuchaOpinion" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-6 ">
                    <label> h. Brinda ayuda ante necesidades ajenas.</label>
                </div> 

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_AyudaOtros" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_AjenasData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_AjenasData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_AyudaOtros" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
              <asp:Label Font-Size="14pt" Font-Underline="true" Text="Confianza en si mismo" runat="server" />
                    
                </div>
            <div class=" col-md-12">
                    <div class="col-md-6 ">
                        <label>a. Es capaz de reconocer sus propias fortalezas o debilidades. </label>
                    </div>

                    <div class="col-md-6">
                        <asp:RadioButtonList ID="Eval_FortaDebilidades" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_ReconocerData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                        <asp:XmlDataSource ID="Eval_ReconocerData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_FortaDebilidades" CssClass="label label warning" ErrorMessage="campo requerido" />
                    </div>
                </div>
            <div class=" col-md-12">
                    <div class="col-md-6 ">
                        <label>b. Perseverancia en el logro de sus metas. </label>
                    </div>

                    <div class="col-md-6">
                        <asp:RadioButtonList ID="Eval_PerservanciaLogros" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_PerservanciaData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                        <asp:XmlDataSource ID="Eval_PerservanciaData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_PerservanciaLogros" CssClass="label label warning" ErrorMessage="campo requerido" />
                    </div>
                </div>
            <div class=" col-md-12">
                      <asp:Label Font-Size="14pt" Font-Underline="true" Text="Relaciones interpersonales" runat="server" />
                    
                </div>
            <div class=" col-md-12">
                    <div class="col-md-5 ">
                        <label>a. Se expresa en forma oral y escrita correctamente.</label>
                    </div>

                    <div class="col-md-6">
                        <asp:RadioButtonList ID="Eval_OralEscrita" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_OralData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                        <asp:XmlDataSource ID="Eval_OralData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_OralEscrita" CssClass="label label warning" ErrorMessage="campo requerido" />
                    </div>
                </div>
            <div class ="col-md-12">
                <label> ¿Recomienda usted al solicitante para participar en el Programa de Estudios de Honor? </label>
                <asp:DropDownList ID="Eval_finalRecomienda" runat="server" DataSourceID="Eval_ConocimientoData" DataTextField="type" DataValueField="id"></asp:DropDownList>
                <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/Content/xml/xmlSINO.xml"></asp:XmlDataSource>
                 <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_finalRecomienda" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            <div class="col-md-12">
                <label>Por que ? </label>
                <asp:TextBox ID="Eval_finalRecomiendatxt" runat="server" CssClass="MultiLineTextBox" Height="80px" MaxLength="600" Width="800px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_finalRecomiendatxt" CssClass="label label warning" ErrorMessage="campo requerido" />
            </div>
            <div class="col-md-4 col-md-push-5">
                <asp:Button ID="Eval_button" runat="server" Text="Enviar" />
            </div>
                    
        </form>

  
    </div>  
    
    
</asp:Content>