<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Default_Admin.aspx.vb" Inherits="programahonor.Default_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet"/>

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div_white">
        <h1 style="text-align: center; padding: 5px;">Administrador</h1>
        <div class="container-fluid">
            <div class="row">
                <a class="btn btn-default" href="#" role="button">Link</a>
                <button class="btn btn-default" type="submit">Button</button>
                <input class="btn btn-default" type="button" value="Input">
                <input class="btn btn-default" type="submit" value="Submit">
            </div>
        </div>
    </div>
</asp:Content>
