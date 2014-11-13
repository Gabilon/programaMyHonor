<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="LogIn.aspx.vb" Inherits="programahonor.LogIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet"/>

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="div_white">
        <h1 style="text-align: center; padding: 5px;">Bienvenidos al Programa de Honor UPRB</h1>
        <div class ="container-fluid" style="padding-bottom: 15px; margin-left: 60px">
            <div class="row">
                <div class="col-md-4" style="border-right: 1px solid #333">
                    <form role="form">
                        <div class="form-group">
                            <label for="exampleInputEmail1">Email address</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Correo Electrónico">
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña">
                        </div>
                        <button type="submit" class="btn btn-default">Submit</button><br>
                    </form>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
