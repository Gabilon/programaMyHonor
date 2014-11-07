<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Registro.aspx.vb" Inherits="programahonor.Registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/themes/starter-template.css" rel="stylesheet" />
    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
    <link href="Content/themes/StyleMenu.css" rel="stylesheet" />
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <form role="form" method="post" runat="server">
            <div class="form-group">
                <div class="row">
                    <div class="col-sm-6">
                        <label>Email:</label>
                        <asp:TextBox Cssclass="form-control" ID="Stu_User" placeholder="E-mail" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="Stu_User" runat="server" CssClass="field-validation-error" ErrorMessage="campo requerido" ></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-sm-6">
                        <label>Contraseña:</label>
                        <asp:TextBox ID="Stu_Password" runat="server" TextMode="Password" Cssclass="form-control"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="Stu_Password" runat="server" CssClass="field-validation-error" ErrorMessage="campo requerido"></asp:RequiredFieldValidator>
                    </div>
                    <div class="col-sm-6">
                        <label>Confirmar Contraseña:</label>
                        <asp:TextBox ID="Stu_Password_confirm" runat="server" TextMode="Password" Cssclass="form-control" placeholder="Retype Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ControlToValidate="Stu_Password_confirm" runat="server" CssClass="field-validation-error" ErrorMessage="campo requerido"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <asp:Button ID="btnSubmit" runat="server" Text="Registrar" Cssclass="btn btn-primary" />
            </div>
        </form>
    </div>
</asp:Content>
