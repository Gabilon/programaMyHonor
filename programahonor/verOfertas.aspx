<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="verOfertas.aspx.vb" Inherits="programahonor.verOfertas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css">
    <link href="Content/stylesheet.css" rel="stylesheet"/>

    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="div_white">
        <h1 style="text-align: center; padding: 5px;">Bienvenidos al Programa de Honor UPRB</h1>
        <div class="container-fluid">
            <div class="table-responsive">
                <div class="table">
                    <form id="form1" runat="server">
                        <asp:PlaceHolder ID="PlaceHolder1" runat="server" />
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
