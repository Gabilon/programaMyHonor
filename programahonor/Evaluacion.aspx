<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Evaluacion.aspx.vb" Inherits="programahonor.Evaluacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
        	<!-- Optional theme -->
    <link href="Content/stylesheet.css" rel="stylesheet" />
        <script src="Scripts/jquery-2.1.1.min.js"></script>
        <script src="Scripts/bootstrap.js"></script>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div_white">
        <form id="form1" runat="server">
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>Indique la naturaleza de su asociacion con el solicitante</label>
                </div>

                <div class="col-md-6">
                    <asp:DropDownList ID="Eval_AsociacionEst" runat="server" DataSourceID="Eval_AsociacionData" DataTextField="type" DataValueField="id"></asp:DropDownList>
                    <asp:XmlDataSource ID="Eval_AsociacionData" runat="server" DataFile="~/Content/xml/asociacionEstudiante.xml"></asp:XmlDataSource>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_AsociacionEst" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>Cuan bien usted conoce al solicitante</label>
                </div>

                <div class="col-md-6">
                    <asp:DropDownList ID="Eval_ConoceEs" runat="server" DataSourceID="Eval_ConoceData" DataTextField="type" DataValueField="id"></asp:DropDownList>
                    <asp:XmlDataSource ID="Eval_ConoceData" runat="server" DataFile="~/Content/xml/xmlConoceBien.xml"></asp:XmlDataSource>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_ConoceEs" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>Hace cuanto tiempo lo conoce</label>
                </div>

                <div class="col-md-6">
                    <asp:DropDownList ID="Eval_tiempo" runat="server" DataSourceID="Eval_tiempoData" DataTextField="type" DataValueField="id"></asp:DropDownList>
                    <asp:XmlDataSource ID="Eval_tiempoData" runat="server" DataFile="~/Content/xml/XmlConoceTiempo.xml"></asp:XmlDataSource>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_tiempo" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>


            <div class ="col-md-12">
            <label>Cual seria su opinion con relacion a que el solicitante aspire a formar parte del Programa de Estudios de Honor&nbsp;&nbsp;&nbsp;&nbsp; </label>
            <asp:TextBox ID="Eval_OpinionProfEst" runat="server" CssClass="MultiLineTextBox" Height="80px" MaxLength="600" Width="800px" TextMode="MultiLine"></asp:TextBox><br />
            </div>
            <div class ="col-md-12">
                <label>Tiene conocimiento de que el solicitante haya estado implicado en alguna accion disciplinaria que pueda afectar su participacion como estudiante</label>
                <asp:DropDownList ID="Eval_FaltaEst" runat="server" DataSourceID="Eval_ConocimientoData" DataTextField="type" DataValueField="id"></asp:DropDownList>
                <asp:XmlDataSource runat="server" ID="Eval_ConocimientoData" DataFile="~/Content/xml/xmlSINO.xml"></asp:XmlDataSource>
                 <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_FaltaEst" CssClass="label label warning" ErrorMessage="campo requerido" />
                <asp:TextBox ID="Eval_FaltaEsttxt" runat="server"></asp:TextBox>
                 </div>
            <div class=" col-md-12">
                <div class="col-md-6">
                    <label>Caracteristicas</label>

                </div>
                <div class="col-md-6">
                    <label>Calificaciones</label>
                </div>
            </div>
            <div class=" col-md-12">
                <label>Laborosidad</label>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>a. Hace bien las tareas</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Tarea" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_tareaData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_tareaData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Tarea" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>b.Termina los trabajos a tiempo.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Cumplimiento" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_TiempoTrabData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_TiempoTrabData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                     <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Cumplimiento" CssClass="label label warning" ErrorMessage="campo requerido" />
                    
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>c.Utiliza bien el tiempo.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_UsoTiempo" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_TiempoBienData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_TiempoBienData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Usotiempo" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>d.Es fiel a su horario. </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Horario" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_HorarioData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_HorarioData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Horario" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>e. Es ordenado(a).</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_OrdenEstudiante" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_OrdenadoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_OrdenadoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_OrdenEstudiante" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>f.	Trabaja según los procedimientos.</label>
                </div>

                <div class="col-md-7">
                    <asp:RadioButtonList ID="Eval_Procedimiento" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_ProcedimientoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_ProcedimientoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Procedimiento" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>g.Se ajusta a las normas de la institución.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_AjustaNormas" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_AjustaNormasData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_AjustaNormasData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_AjustaNormas" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>h.Demuestra calidad en sus trabajos.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_CalidadTrbajo" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_trabajoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_trabajoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_CalidadTrbajo" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>i.Delega responsabilidades correctamente.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_DeleganResponsabilidad" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_ResponsabilidadData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_ResponsabilidadData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_DeleganResponsabilidad" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>j.Sabe trabajar bajo presión.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Habilidad_Presion" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_PresionData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_PresionData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Habilidad_Presion" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>k.Posee habilidad para analizar y resolver problemas.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Habilidad_Analisis_Resolver" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_habilidadesData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_habilidadesData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Habilidad_Analisis_Resolver" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <label>Madurez</label>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>a.	Habilidad para enfrentar retos en la vida.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_EnfrentarRetos" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_EnfrentarData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_EnfrentarData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_EnfrentarRetos" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>b.	Tiene dominio propio </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_DominioPropio" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_DominioData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_DominioData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_DominioPropio" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>c.Actua con rectitud de intencion </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Rectitud" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_IntencionData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_IntencionData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Rectitud" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>d.	Sabe tomar decisiones. </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_TomadeDecisiones" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_DecisionesData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_DecisionesData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_TomadeDecisiones" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>e.Es sincera(a).</ </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_Sinceridad" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_SinceroData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_SinceroData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_Sinceridad" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>f.	Proyecta serenidad.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_ProySerenidad" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_SerenidadData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_SerenidadData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_ProySerenidad" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>g.	Utiliza el sentido común y el buen juicio..</label>
                </div>
                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_SentidoComun" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_SentidoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_SentidoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_SentidoComun" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <label>Relaciones interpersonales</label>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>a.	Demuestra habilidad para la comunicación efectiva, cooperación y trabajo en equipo.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_TrabajoEquipo" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_EquipoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_EquipoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_TrabajoEquipo" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>b.	Facilita el diálogo con sus pares y personas que le rodean.</label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_FacilitaDialogo" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_DialogoData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_DialogoData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_FacilitaDialogo" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>c.	Es educado y aplica normas básicas de urbanidad. </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_EducacionUrbanidad" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_urbanidadData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_urbanidadData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_EducacionUrbanidad" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>d.	Posee buen sentido del humor y es afable con sus compañeros </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_HumorAfabilidad" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_HumorData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_HumorData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_HumorAfabilidad" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>e.Es capaz de escuchar y aceptar diferentes puntos de vista.</ </label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_EscuchaOpinion" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_VistaData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_VistaData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_EscuchaOpinion" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>
                    f.Brinda ayuda ante necesidades ajenas./label>
                </div>

                <div class="col-md-6">
                    <asp:RadioButtonList ID="Eval_AyudaOtros" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_AjenasData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                    <asp:XmlDataSource ID="Eval_AjenasData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_AyudaOtros" CssClass="label label warning" ErrorMessage="campo requerido" />
                </div>
            </div>
            <div class=" col-md-12">
                <div class="col-md-5 ">
                    <label>Confianza en si mismo</label>
                </div>
                <div class=" col-md-12">
                    <div class="col-md-5 ">
                        <label>a.	Es capaz de reconocer sus propias fortalezas o debilidades.</label>
                    </div>

                    <div class="col-md-6">
                        <asp:RadioButtonList ID="Eval_FortaDebilidades" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_ReconocerData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                        <asp:XmlDataSource ID="Eval_ReconocerData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_FortaDebilidades" CssClass="label label warning" ErrorMessage="campo requerido" />
                    </div>
                </div>
                <div class=" col-md-12">
                    <div class="col-md-5 ">
                        <label>b.	Perseverancia en el logro de sus metas.</label>
                    </div>

                    <div class="col-md-6">
                        <asp:RadioButtonList ID="Eval_PerservanciaLogros" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_PerservanciaData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                        <asp:XmlDataSource ID="Eval_PerservanciaData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_PerservanciaLogros" CssClass="label label warning" ErrorMessage="campo requerido" />
                    </div>
                </div>
                <div class=" col-md-12">
                    <label>Relaciones interpersonales</label>
                </div>
                <div class=" col-md-12">
                    <div class="col-md-5 ">
                        <label>a.Se expresa en forma oral y escrita correctamente.</label>
                    </div>

                    <div class="col-md-6">
                        <asp:RadioButtonList ID="Eval_OralEscrita" runat="server" RepeatDirection="Horizontal" DataSourceID="Eval_OralData" DataTextField="type" DataValueField="id"></asp:RadioButtonList>
                        <asp:XmlDataSource ID="Eval_OralData" runat="server" DataFile="~/Content/xml/XMLCalificacion.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Eval_OralEscrita" CssClass="label label warning" ErrorMessage="campo requerido" />
                    </div>
                </div>
                <div class="col-md-12">
                    <asp:Button ID="Eval_button" runat="server" Text="Button" />
                </div>
        </form>

    </div>
    </label>
</asp:Content>