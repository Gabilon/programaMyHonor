<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="FormularioActividades.aspx.vb" Inherits="programahonor.FormularioActividades" %>

<asp:Content ID="Content3" ContentPlaceHolderID="Head" runat="server">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
        	<!-- Optional theme -->
    <link href="Content/stylesheet.css" rel="stylesheet" />
        <script src="Scripts/jquery-2.1.1.min.js"></script>
        <script src="Scripts/bootstrap.js"></script>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="div_white">
        <div class="panel-body">
            <form role="form" method="post" runat="server" class="form-horizontal">
                <div class="col-md-12">
                    <div class="col-md-4 col-md-push-5">
                        <h4><strong> Creacion de Actividades </strong></h4>
                    </div>
                </div>
                <!--Cominezan textboxes-->
                 
                <div class="col-md-4 col-md">
                    <div class="form-group"> 
                        <label style="width: 160px; text-align: center">Nombre:</label>
                        <asp:TextBox ID="Actividades__Nombre" runat="server" CssClass="form-control" Width="218px"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Actividades__Nombre" CssClass="label label-warning" ErrorMessage="Campo Requerido" />
                    </div>
                </div>
              
                <div class="col-md-4 col-md">
                    <div class="form-group">
                        <label style="width: 160px; text-align: center">Fecha:</label>
                        <asp:TextBox ID="Actividades_Fecha" runat="server" CssClass="form-control" Width="236px"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Actividades_Fecha" CssClass="label label-warning" ErrorMessage="Campo Requerido" />
                    </div>
                </div>
               <div class="col-md-4 col-md">
                    <div class="form-group">
                        <label style="width: 160px; text-align: center">Lugar:</label>
                        <asp:TextBox ID="Actividades_Lugar" runat="server" CssClass="form-control" Width="236px"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Actividades_Lugar" CssClass="label label-warning" ErrorMessage="Campo Requerido" />
                         </div>
                </div>

               <div class="col-md-6 col-md">
                    <div class="form-group">
                        <label style="width: 160px; text-align: center">Descripcion:</label>
                        <asp:TextBox ID="Actividades_Descripcion" runat="server" CssClass="form-control" TextMode="MultiLine" Height="182px" Width="438px"></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Actividades_Descripcion" CssClass="label label-warning" ErrorMessage="Campo Requerido" />
                    </div>
                </div>
                  <div class="col-md-6 col-md">
                <div class="col-md-12">
                    <div class="form-group">
                <label style="width: 160px; text-align: left;">Imagen 1 :</label>
                 <asp:FileUpload ID="Actividades_Imagen1" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Actividades_Imagen1" CssClass="label label-warning" ErrorMessage="Campo Requerido" />
                 </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                <label style="width: 160px; text-align: left;">Imagen 2 :</label>
                 <asp:FileUpload ID="Actividades_Imagen2" runat="server" CssClass="form-control" />
                
                 </div>
                </div>
               <div class="col-md-12">
                    <div class="form-group">
                <label style="width: 160px; text-align: left;">Imagen 3 :</label>
                 <asp:FileUpload ID="Actividades_Imagen3" runat="server" CssClass="form-control" />
                
                 </div>
                </div>
               <div class="col-md-12">
                <div class="form-group">
                     <asp:Button ID="Button" runat="server" Text="Someter" />
                    </div>
                    </div>
                </div>
                 
            </form>
            
        </div>
    </div>


</asp:Content>

