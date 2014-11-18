<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Estudiantes.Master" CodeBehind="Aplicar.aspx.vb" Inherits="programahonor.Aplicar" %>
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
    <div class="div_white">
       <form role="form" method="post" runat="server" Class="form-horizontal">
            <div class="tabbable">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <asp:Menu ID="Menu1" runat="server" Orientation="horizontal" StaticEnableDefaultPopOutImage="False" CssClass="nav navbar-link" Width="100%">
                            <Items>
                                <asp:MenuItem Text="Estudiante" Value="0"></asp:MenuItem>
                                <asp:MenuItem Text="Ensayo" Value="1"></asp:MenuItem>
                                <asp:MenuItem Text="Evaluadores" Value="2"></asp:MenuItem>
                                <asp:MenuItem Text="Adicional" Value="3"></asp:MenuItem>
                            </Items>
                        </asp:Menu>  <!-- menu listview-->
                    </div>
                    <div class="panel-body">
                        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                            <asp:View ID="Tab1" runat="server">
                                <div class="form-horizontal">
                                    <div class="col-md-11">
                                        <div class="col-md-4 col-md-push-5">
                                            <h4><strong>Información del Estudiante.</strong></h4>
                                        </div>
                                    </div>
                                    <div class="col-md-5 col-sm-7 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Nombres Y Apellidos:</label>
                                            <asp:TextBox ID="StudentName" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="StudentName" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                                <label style="width: 160px; text-align: left">Número Est.</label>
                                            <asp:TextBox ID="StudentNumber" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="StudentNumber" CssClass="label label-warning" ErrorMessage="campo requerido." />
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <div>
                                                <label style="width: 160px; text-align: left">Género:</label>
                                            </div>
                                            <asp:DropDownList ID="Stu_Gender" runat="server" DataSourceID="XmlGenero" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Gender" CssClass="label label-warning" ErrorMessage="campo requerido." />
                                            <asp:XmlDataSource ID="XmlGenero" runat="server" DataFile="~/Content/xml/xmlGender.xml"></asp:XmlDataSource>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Fecha de Nacimiento:</label>
                                            <asp:TextBox ID="Stu_Birthday" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Birthday" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Email Universidad:</label>
                                            <asp:TextBox ID="Stu_Email" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Email" CssClass="label label-warning" ErrorMessage="campo requerido." />
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Teléfono:</label><asp:TextBox ID="Stu_Phone" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Phone" CssClass="label label-warning" ErrorMessage="campo requerido." />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left;">Dirección Residencia:</label><asp:TextBox ID="Stu_Direccion" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_direccion" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left;">Dirección Postal:</label><asp:TextBox ID="Stu_Postal" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Direccion" CssClass="label label-warning" ErrorMessage="campo requerido." />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left;">Departamento:</label>
                                            <asp:DropDownList ID="Stu_Department" runat="server" DataSourceID="XmlDataSource3" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Department" CssClass="label label-warning" ErrorMessage="campo requerido." />
                                            <asp:XmlDataSource ID="XmlDataSource3" runat="server" DataFile="~/Content/xml/xmlDepartment.xml"></asp:XmlDataSource>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left;">Año en Curso:</label>
                                            <asp:DropDownList ID="Stu_Year" runat="server" DataSourceID="XmlDataSource1" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Year" CssClass="label label-warning" ErrorMessage="campo requerido." />
                                            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Content/xml/xmlAño.xml"></asp:XmlDataSource>
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left;">IGS:</label>
                                            <asp:DropDownList ID="Stu_Igs" runat="server" DataSourceID="XmlIGS" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                                            <asp:XmlDataSource ID="XmlIGS" runat="server" DataFile="~/Content/xml/XMLIGS.xml"></asp:XmlDataSource>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Igs" CssClass="label label-warning" ErrorMessage="campo requerido." />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left;">Certificado:</label>
                                            <asp:FileUpload ID="Stu_Certificate" runat="server" CssClass="form-control" />
                                        </div>
                                    </div>
                                    <div class="col-md-1 col-sm-1 col-xs-10">
                                        <div class="form-group">
                                            <asp:label runat="server" ID="lbl_Status" style="width: 160px; text-align: left;" Font-Bold="True">Estado</asp:label>
                                            <asp:TextBox ID="Stu_Status" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-8 col-sm-10 col-xs-12 col-md-offset-1">
                                        <label style="width: 160px; text-align: left">Autorización:</label>
                                        <p style="border: 1px solid #008B8B; text-align: justify; background: whitesmoke; padding: 7px 5px 5px 8px">
                                            <strong>Autorizo la verificación de mi IGS en el departamento de Registro Académico
                                              para efectos del proceso de admisión al Programa de Honor de la Universidad de Puerto Rico Bayamón.
                                            </strong>
                                        </p>
                                        <asp:RadioButtonList ID="Stu_Authorization" runat="server" DataSourceID="XmlSINO" DataTextField="type" DataValueField="id" RepeatDirection="Horizontal"></asp:RadioButtonList>
                                        <asp:XmlDataSource ID="XmlSINO" runat="server" DataFile="~/Content/xml/xmlSINO.xml"></asp:XmlDataSource>
                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Authorization" CssClass="label label-warning" ErrorMessage="campo requerido." />
                                    </div>
                                    <div class="col-md-11 col-md-offset-10">
                                        <asp:Button ID="btnGuardarEstudiante" runat="server" Text="Guardar" CssClass="btn btn-primary" ToolTip="Guardar Información de Estudiante" />
                                    </div>
                                    <div class="col-md-11 col-md-offset-10">
                                        <asp:Button ID="btnActualizarEstudiante" runat="server" Text="GuardarA" CssClass="btn btn-primary" ToolTip="Actualizar Información de Estudiante" />
                                    </div>
                                </div>
                            </asp:View>
                            <!-- estiduante-->
                            <asp:View ID="Tab2" runat="server">
                                <div class="col-md-4 col-md-push-4">
                                    <h4><strong>Ensayo.</strong></h4>
                                </div>
                                <div class="col-md-9 col-sm-5 col-xs-12">
                                    <ul>
                                        <li class="list-group-item">* Redactar un ensayo de máximo 500 caracteres.</li>
                                        <li class="list-group-item">* Cualidades que debe poseer un estudiante universitario de excelencia.</li>
                                        <li class="list-group-item">* Cuales son sus metas de estudio y si esta interesado en llevar a cabo estudios graduados.</li>
                                        <li class="list-group-item">* Como desarrollara su liderato dentro del Programa de Estudios de Honor para alcanzar sus metas de estudio.</li>
                                    </ul>
                                </div>
                                <div class="col-md-9 col-sm-5 col-xs-12">
                                    <div>
                                         <asp:TextBox ID="Stu_Ensayo" runat="server" CssClass="list-group-item" MaxLength="500" TextMode="MultiLine"></asp:TextBox><br />
                                    </div>
                                </div>
                                <div class="col-md-11 col-md-offset-10">
                                    <asp:Button ID="btnGuardarEnsayo" runat="server" Text="Guardar" CssClass="btn btn-primary" ToolTip="Guardar Ensayo" />&nbsp;&nbsp;&nbsp;
                                </div>
                            </asp:View>
                            <!-- ensayo-->
                            <asp:View ID="Tab3" runat="server">
                                <div class="tab-pane active" id="tab3">
                                    <div class="form-horizontal">
                                        <div class="col-md-11 col-md-offset-5">
                                           <h4><strong>Docente Evaluador No. 1.</strong></h4>
                                        </div>
                                        <div class="col-md-3 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Nombre Completo:</label>
                                                <asp:TextBox runat="server" ID="eval_Nombre1" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Nombre1" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Ocupación:</label>
                                                <asp:TextBox runat="server" ID="eval_Ocupacion1" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Ocupacion1" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Lugar de trabajo:</label>
                                                <asp:TextBox runat="server" ID="eval_Trabajo1" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Trabajo1" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                         <div class="col-md-2 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align:left;">Teléfono Personal:</label>
                                                <asp:TextBox runat="server" ID="eval_Telpersonal1" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Telpersonal1" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                         <div class="col-md-2 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align:left;">Teléfono Trabajo:</label>
                                                <asp:TextBox runat="server" ID="eval_Teltrabajo1" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Teltrabajo1" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                         <div class="col-md-2 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align:left;">Correo Electrónico:</label>
                                                <asp:TextBox runat="server" ID="eval_Email1" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Email1" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Evaluador 2-->
                                    <div class="form-horizontal">
                                        <div class="col-md-11 col-md-offset-5">
                                           <h4><strong>Docente Evaluador No. 2.</strong></h4>
                                        </div>
                                        <div class="col-md-3 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align:left;">Nombre Completo:</label>
                                                <asp:TextBox runat="server" ID="eval_Nombre2" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Nombre2" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Ocupación:</label>
                                                <asp:TextBox runat="server" ID="eval_Ocupacion2" CssClass="form-control"></asp:TextBox>
                                                    <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Ocupacion2" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Lugar de trabajo:</label>
                                                <asp:TextBox runat="server" ID="eval_Trabajo2" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Trabajo2" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                         <div class="col-md-2 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Teléfono Personal:</label>
                                                <asp:TextBox runat="server" ID="eval_Telpersonal2" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Telpersonal2" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                         <div class="col-md-2 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Teléfono Trabajo:</label>
                                                <asp:TextBox runat="server" ID="eval_Teltrabajo2" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Teltrabajo2" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                         <div class="col-md-2 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Correo Electrónico:</label>
                                                <asp:TextBox runat="server" ID="eval_Email2" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Email2" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                    </div>
                                    <!--Evaluador 3-->
                                    <div class="form-horizontal">
                                        <div class="col-md-11 col-md-offset-5">
                                            <h4><strong>Docente Evaluador No. 3.</strong></h4>
                                        </div>
                                        <div class="col-md-3 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Nombre Completo:</label>
                                                <asp:TextBox runat="server" ID="eval_Nombre3" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Nombre3" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                        <div class="col-md-3 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Ocupación:</label>
                                                <asp:TextBox runat="server" ID="eval_Ocupacion3" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Ocupacion3" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                        <div class="col-md-5 col-sm-6 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Lugar de trabajo:</label>
                                                <asp:TextBox runat="server" ID="eval_Trabajo3" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Trabajo3" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Teléfono Personal:</label>
                                                <asp:TextBox runat="server" ID="eval_Telpersonal3" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Telpersonal3" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Teléfono Trabajo:</label>
                                                <asp:TextBox runat="server" ID="eval_Teltrabajo3" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Teltrabajo3" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                        <div class="col-md-2 col-sm-4 col-xs-12">
                                            <div class="form-group">
                                                <label style="width: 135px; text-align: left;">Correo Electrónico:</label>
                                                <asp:TextBox runat="server" ID="eval_Email3" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator runat="server" ControlToValidate="eval_Email3" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-10 col-md-offset-1">
                                        <p style="border: 1px solid #008B8B; text-align: justify; background: whitesmoke; padding: 7px 5px 5px 8px">
                                            <strong>Este programa es voluntario, la información brindada es condifencial y de uso exclusivo del programa de Estudio de Honor,
                                            se hará uso de la misma de ser necesario para confirmar la veracidad de la evaluación al estudiante por parte del programa de Estudio de Honor.
                                            </strong>
                                        </p>
                                    </div>
                                    <div class="col-md-1 col-md-offset-9">
                                        <asp:Button ID="btnEvalaudores" runat="server" Text="Guardar" CssClass="btn btn-primary" ToolTip="Guardar Informacion Evaluadores" />
                                    </div>
                                </div>
                                <br />
                            </asp:View>
                            <!-- docentes evaluadores-->
                            <asp:View ID="Tab4" runat="server">
                                <div class="tab-pane active" id="tab4">
                                    <div class="col-md-12">
                                         <h4><strong>Información Adicional.</strong></h4>
                                    </div>
                                    <div class="col-md-6">
                                        <label>En cual de los siguientes comites te interesaria participar?</label>
                                        <asp:CheckBoxList ID="infad_Comites" runat="server" DataSourceID="XmlDcomites" DataTextField="type" DataValueField="id"></asp:CheckBoxList>
                                        <asp:XmlDataSource ID="XmlDcomites" runat="server" DataFile="~/Content/xml/XMLComites.xml"></asp:XmlDataSource>                                   
                                    </div>
                                    <div class="col-md-6">
                                        <label>A que tipo de actividades o eventos le gustaria asistir?</label>
                                        <div class="col-md-12">
                                            <asp:CheckBox ID="infad_Excursiones_edu" runat="server" Text="Excursiones Educativcas" />
                                        </div>
                                        <div class="col-md-4">
                                            <asp:CheckBox ID="infad_Talleres" runat="server" Text="Talleres" Width="120px" />
                                        </div>
                                        <div class="col-md-7">
                                            <asp:TextBox ID="infad_Talleresde" runat="server" CssClass="form-control" Width="350px"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <asp:CheckBox ID="infad_Conferencias" runat="server" Text="Conferencias" Width="120px" />
                                        </div>
                                        <div class="col-md-7">
                                            <asp:TextBox ID="infad_Conferenciasde" runat="server" CssClass="form-control" Width="350px"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                             <asp:CheckBox ID="infad_Convenciones" runat="server" Text="Convenciones" Width="120px" />
                                        </div>
                                        <div class="col-md-7">
                                             <asp:TextBox ID="infad_Convencionesde" runat="server" CssClass="form-control" Width="350px"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                             <asp:CheckBox ID="infad_actividad" runat="server" Text="Actividades" Width="120px" />
                                        </div>
                                        <div class="col-md-7">
                                            <asp:TextBox ID="infad_actividadesde" runat="server" CssClass="form-control" Width="350px"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label>Otro:</label>
                                        </div>
                                        <div class="col-md-7">
                                            <asp:TextBox ID="infad_otro" runat="server" CssClass="form-control" Width="350px"></asp:TextBox>
                                        </div>   
                                    </div>
                                    <div class="col-md-10 col-sm-6 col-xs-12 col-lg-offset-10">
                                         <asp:Button ID="btnGuardarInfoAdicional" runat="server" Text="Guardar" CssClass="btn btn-primary" ToolTip="Guardar Informacion Adicional" />
                                        <asp:Button ID="btnSometer" runat="server" Text="Someter" CssClass="btn btn-primary" />
                                    </div>
                                </div>
                            </asp:View>
                            <!-- informacion adicional-->
                        </asp:MultiView> <!-- multi list view --> 
                    </div>
                </div>
            </div>
        </form>
    </div>
</asp:Content>
