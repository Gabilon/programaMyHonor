<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Docentes.aspx.vb" Inherits="programahonor.Docentes" %>
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
            <form role="form" method="post" runat="server" Class="form-horizontal">
                <div class="col-md-11">
                    <div class="col-md-4 col-md-push-5">
                        <h4><strong>Información del Estudiante</strong></h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 col-xs-12">
                    <div class="form-group">
                        <label style="width: 160px; text-align: left">Nombre:</label>
                        <asp:TextBox ID="Asedoc_nombre" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Asedoc_nombre" CssClass="label label-warning" ErrorMessage="campo requerido" />
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 col-xs-12">
                    <div class="form-group">
                        <label style="width: 160px; text-align: left">Título:</label>
                        <asp:TextBox ID="Asedoc_Titulo" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Asedoc_Titulo" CssClass="label label-warning" ErrorMessage="campo requerido" />
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 col-xs-12">
                    <div class="form-group">
                        <label style="width: 160px; text-align: left;">Departamento:</label>
                        <asp:DropDownList ID="Asedoc_Departamento" runat="server" DataSourceID="XmlDepartamentos" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                        <asp:XmlDataSource ID="XmlDepartamentos" runat="server" DataFile="~/Content/xml/xmlDepartment.xml"></asp:XmlDataSource>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Asedoc_Departamento" CssClass="label label-warning" ErrorMessage="campo requerido." />
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 col-xs-12">
                    <div class="form-group">
                        <label style="width: 160px; text-align: left">Email:</label>
                        <asp:TextBox ID="Asedoc_Email" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Asedoc_Email" CssClass="label label-warning" ErrorMessage="campo requerido" />
                    </div>
                </div>
                <div class="col-md-4 col-sm-5 col-xs-12">
                    <div class="form-group">
                        <label style="width: 160px; text-align: left">Descripción:</label>
                        <asp:TextBox ID="Asedoc_Descripcion" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Asedoc_Descripcion" CssClass="label label-warning" ErrorMessage="campo requerido" />
                    </div>
                </div>
                <div class="col-md-4 col-sm-5 col-xs-12">
                    <div class="form-group">
                        <label style="width: 160px; text-align: left">Status:</label>
                        <asp:TextBox ID="Asedoc_Status" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Asedoc_Status" CssClass="label label-warning" ErrorMessage="campo requerido" />
                    </div>
                </div>

            </form>
        </div>
    </div>
</asp:Content>