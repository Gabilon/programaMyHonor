<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Membre.Master" CodeBehind="Solicitud.aspx.vb" Inherits="programahonor.Solicitud" %>

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
    <script src="Scripts/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div_white">
        <div class="panel-body">
            <div class="panel-heading">
                 <div class="col-md-11">
                        <div class="col-md-8 col-md-push-3 ">
                            <label style="text-align: center">
                                <strong>Universidad de Puerto Rico en Bayamon
                                <br />
                                    Oficina de Internados, Practicas e Investigaciones
                                <br />
                                    Solicitud
                                </strong>

                            </label>
                        </div>
                    </div>
            </div>
            <form role="form" method="post" runat="server" class="form-horizontal">
                <div class="form-horizontal">
                   
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
                            <asp:DropDownList ID="Stu_Department" runat="server" DataSourceID="XmlDepartment" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Department" CssClass="label label-warning" ErrorMessage="campo requerido." />
                            <asp:XmlDataSource ID="XmlDepartment" runat="server" DataFile="~/Content/xml/xmlDepartment.xml"></asp:XmlDataSource>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-7 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Especialidad:</label>
                            <asp:TextBox ID="Sol_Specialty" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Sol_Specialty" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left;">Año en Curso:</label>
                            <asp:DropDownList ID="Stu_Year" runat="server" DataSourceID="XmlYear" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Year" CssClass="label label-warning" ErrorMessage="campo requerido." />
                            <asp:XmlDataSource ID="XmlYear" runat="server" DataFile="~/Content/xml/xmlAño.xml"></asp:XmlDataSource>
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-2 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left;">Graduación:</label>
                            <asp:DropDownList ID="Sol_GraduationDate" runat="server" DataSourceID="XmlGraduationDate" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Stu_Year" CssClass="label label-warning" ErrorMessage="campo requerido." />
                            <asp:XmlDataSource ID="XmlGraduationDate" runat="server" DataFile="~/Content/xml/XMLAñoGraduacion.xml"></asp:XmlDataSource>
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

                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left;">Transportación:</label>
                            <asp:DropDownList ID="Sol_Transportation" runat="server" DataSourceID="XmlTransportacion" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                            <asp:XmlDataSource ID="XmlTransportacion" runat="server" DataFile="~/Content/xml/XMLTransportacion.xml"></asp:XmlDataSource>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Sol_Transportation" CssClass="label label-warning" ErrorMessage="campo requerido." />
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left;">Licencia:</label>
                            <asp:DropDownList ID="Sol_License" runat="server" DataSourceID="XmlLicencia" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                            <asp:XmlDataSource ID="XmlLicencia" runat="server" DataFile="~/Content/xml/XMLLicencia.xml"></asp:XmlDataSource>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Sol_License" CssClass="label label-warning" ErrorMessage="campo requerido." />
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-3 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left;">Inglés:</label>
                            <asp:DropDownList ID="Sol_English" runat="server" DataSourceID="XmlIngles" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                            <asp:XmlDataSource ID="XmlIngles" runat="server" DataFile="~/Content/xml/XMLIngles.xml"></asp:XmlDataSource>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Sol_English" CssClass="label label-warning" ErrorMessage="campo requerido." />
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-5 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left;">Resumé:</label>
                            <asp:FileUpload ID="Sol_Resume" runat="server" CssClass="form-control" />
                           <%--  <label style="width: 160px; text-align: left;">Resumé:</label>
                            <asp:FileUpload ID="Sol_Resume" runat="server" CssClass="form-control" />
                             <asp:Button ID="btnUpload" runat="server" Text="Upload" 
                                OnClientClick = "return ValidateFile()"  OnClick="btnUpload_Click"  />
                             <asp:Label ID="Label1" runat="server" Text="" /> --%>
                        </div>
                    </div>
                    <div class="col-md-12 col-sm-3 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left;">Intereso:</label>
                            <asp:CheckBoxList ID="Sol_Interest" runat="server" DataSourceID="XmlInterest" DataTextField="type" DataValueField="id">
                                <%--<asp:ListItem Value="Sol_SummerIntens">Internado de Verano</asp:ListItem>
                                            <asp:ListItem Value="Sol_semesterInterns">Internado de Semestre</asp:ListItem>
                                            <asp:ListItem Value="Sol_practice">Práctica</asp:ListItem>
                                            <asp:ListItem Value="Sol_investigation">Investigación</asp:ListItem>--%>
                            </asp:CheckBoxList>
                            <asp:XmlDataSource ID="XmlInterest" runat="server" DataFile="~/Content/xml/XMLInteres.xml"></asp:XmlDataSource>
                        </div>
                    </div>

                    <div class="col-md-12 col-sm-3 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left;">Disponibilidad:</label>
                            <asp:CheckBoxList ID="Sol_Availability" runat="server" DataSourceID="XmlDisponibilidad" DataTextField="type" DataValueField="id">
                            </asp:CheckBoxList>
                            <asp:XmlDataSource ID="XmlDisponibilidad" runat="server" DataFile="~/Content/xml/XMLDisponibilidad.xml"></asp:XmlDataSource>
                        </div>
                    </div>

                    <%--<div class="col-md-1 col-sm-1 col-xs-10">
                                        <div class="form-group">
                                            <asp:label runat="server" ID="lbl_Status" style="width: 160px; text-align: left;" Font-Bold="True">Estado</asp:label>
                                            <asp:TextBox ID="Stu_Status" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>--%>
                    <div class="col-md-11 col-md-offset-10">
                        <asp:Button ID="btnGuardarSolicitud" runat="server" Text="Guardar" CssClass="btn btn-primary" ToolTip="Guardar Información de Internado" />
                    </div>
                    <div class="col-md-11 col-md-offset-10">
                        <asp:Button ID="btnActualizarSolicitud" runat="server" Text="Update" CssClass="btn btn-primary" ToolTip="Actualizar Información de Internado" />
                    </div>
                    <%--  <div class="col-md-12">

                </div>--%>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
