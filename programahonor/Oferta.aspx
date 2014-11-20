<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Estudiantes.Master" CodeBehind="Oferta.aspx.vb" Inherits="programahonor.Oferta" %>
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
                <form role="form" method="post" runat="server" class="form-horizontal">
                      <div class="form-horizontal">
                                    <div class="col-md-11">
                                        <div class="col-md-8 col-md-push-3 ">
                                            <label style="text-align: center">
                                             <h4><strong>Universidad de Puerto Rico en Bayamon
                                                <br />
                                                Oficina de Internados, Practicas e Investigaciones
                                                <br />
                                                Registro de Ofertas</strong></h4>                                             </label>
                                        </div>
                                    </div>
                                   
                                    <%--<div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Fecha:</label>
                                            <asp:TextBox ID="For_Date" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_date" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>--%>
                                    <div class="col-md-5 col-sm-7 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Compañía:</label>
                                            <asp:TextBox ID="For_CompanyName" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_CompanyName" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Salario:</label>
                                            <asp:TextBox ID="For_Salary" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Salary" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left;">Para:</label>
                                            <asp:DropDownList ID="For_Extracurricular" runat="server" DataSourceID="XmlExtracurricular" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Extracurricular" CssClass="label label-warning" ErrorMessage="campo requerido." />
                                            <asp:XmlDataSource ID="XmlExtracurricular" runat="server" DataFile="~/Content/xml/XMLintPrInv.xml"></asp:XmlDataSource>
                                        </div>
                                    </div>
                                    <div class="col-md-5 col-sm-7 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Otros Beneficios:</label>
                                            <asp:TextBox ID="For_OtherBenefits" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_OtherBenefits" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-5 col-sm-7 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Horario:</label>
                                            <asp:TextBox ID="For_Schedule" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Schedule" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                     <div class="col-md-5 col-sm-7 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Requisitos:</label>
                                            <asp:TextBox ID="For_Requirements" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Requirements" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                      </div>
                                    <div class="col-md-5 col-sm-7 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Tareas:</label>
                                            <asp:TextBox ID="For_Tasks" runat="server" CssClass="form-control" TextMode="MultiLine" MaxLength="250"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Tasks" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                   </div>
                                    <div class="col-md-5 col-sm-7 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Contacto:</label>
                                            <asp:TextBox ID="For_ContactName" runat="server"  CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_ContactName" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Posición:</label>
                                            <asp:TextBox ID="For_ContactPosition" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_contactPosition" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Teléfono:</label>
                                            <asp:TextBox ID="For_ContactPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_ContactPhone" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                     <div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Extensión:</label>
                                            <asp:TextBox ID="For_ContactExt" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_ContactExt" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                     <div class="col-md-5 col-sm-7 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Otro:</label>
                                            <asp:TextBox ID="For_ContactOtherPhone" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_ContactOtherPhone" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                   <div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Fax:</label>
                                            <asp:TextBox ID="For_contactFax" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_ContactFax" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                     <div class="col-md-5 col-sm-7 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Dirección Física:</label>
                                            <asp:TextBox ID="For_CompanyPhysicalAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_CompanyPhysicalAddress" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-5 col-sm-7 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Dirección Postal:</label>
                                            <asp:TextBox ID="For_CompanyPostalAddress" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_CompanyPostalAddress" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-5 col-sm-7 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Comentarios:</label>
                                            <asp:TextBox ID="For_Comments" runat="server" CssClass="form-control" TextMode="MultiLine" MaxLength="250"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Comments" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Correo Electrónico:</label>
                                            <asp:TextBox ID="For_CompanyEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_CompanyEmail" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-3 col-sm-4 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Página de Internet:</label>
                                            <asp:TextBox ID="For_CompanyWebPage" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_CompanyWebPage" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>
                                    <div class="col-md-11 col-md-offset-10">  
                                        <asp:Button ID="btnGuardarOferta" runat="server" Text="Guardar" CssClass="btn btn-primary" ToolTip="Guardar Información de Registro de Ofertas" />
                                    </div>
                                </div>
                </form>
         </div>
</asp:Content>
