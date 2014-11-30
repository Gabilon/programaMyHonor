<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Membre.Master" CodeBehind="Contacto_men.aspx.vb" Inherits="programahonor.Contacto_men" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>
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
        <div class="panel-body" style="margin-top:20px;">
            <form role="form" method="post" runat="server" class="form-horizontal">
                <div class="col-md-11">
                    <div class="col-md-4 col-md-push-5">
                        <h4><strong>Contáctenos</strong></h4>
                    </div>
                </div>
                <!--Cominezan textboxes-->
                <div class="col-md-12 col-md-push-4 col-md-pull-4 col-sm-12 col-sm-push-4 col-sm-pull-4 col-xs-12 col-xs-push-4 col-xs-pull-4">
                    <div class="form-group"> 
                        <label style="width: 160px; text-align: center">Nombre:</label>
                        <asp:TextBox ID="Contac_nombre" runat="server" Style="width: 600px;" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Contac_nombre" CssClass="label label-warning" ErrorMessage="Campo Requerido" />
                    </div>
                </div>
                <div class="col-md-12 col-md-push-4 col-md-pull-4 col-sm-12 col-sm-push-4 col-sm-pull-4 col-xs-12 col-xs-push-4 col-xs-pull-4">
                    <div class="form-group">
                        <label style="width: 160px; text-align: center">Email:</label>
                        <asp:TextBox ID="Contac_email" runat="server" Style="width: 600px;" CssClass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Contac_email" CssClass="label label-warning" ErrorMessage="Campo Requerido" />
                    </div>
                </div>
                <div class="col-md-12 col-md-push-4 col-md-pull-4 col-sm-12 col-sm-push-4 col-sm-pull-4 col-xs-12 col-xs-push-4 col-xs-pull-4">
                    <div class="form-group">
                        <label style="width: 160px; text-align: center">Mensaje:</label>
                        <asp:TextBox ID="Contac_mensaje" runat="server" Style="width: 600px;" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Contac_mensaje" CssClass="label label-warning" ErrorMessage="Campo Requerido" />
                    </div>
                </div>
                <!--Widget de Captcha-->
                <div class="col-md-12 col-md-push-4 col-md-pull-4 col-sm-12 col-sm-push-4 col-sm-pull-4 col-xs-12 col-xs-push-4 col-xs-pull-4">
                <asp:Label Visible="true" ID="lblResult" runat="server" />
                <recaptcha:RecaptchaControl ID="recaptcha" runat="server" Theme="red" PublicKey="6LcMevwSAAAAALGzxtjS26iBJnXgI-D-0M1cfWhl" PrivateKey="6LcMevwSAAAAACpYNRaOWVbcHhcYytLqeQURqRto" />
                </div>
                <div class="col-md-12 col-md-push-8 col-md-pull-4 col-sm-12 col-sm-push-8 col-sm-pull-4 col-xs-12 col-xs-push-8 col-xs-pull-4">
                    <asp:Button ID="btnSometer" runat="server" Text="Someter" CssClass="btn btn-primary" ToolTip="Someter datos" />
                </div>
               
            </form>
        </div>
    </div>
</asp:Content>
