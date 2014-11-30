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
                 
            <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Actividad_Id" DataSourceID="SqlDataActividades">
            <Columns>
                <asp:BoundField DataField="Actividad_Id" HeaderText="Actividad_Id" ReadOnly="True" SortExpression="Actividad_Id" Visible="False" />
                <asp:BoundField DataField="Act_Nombre" HeaderText="Act_Nombre" SortExpression="Act_Nombre" />
                <asp:BoundField DataField="Act_Fecha" HeaderText="Act_Fecha" SortExpression="Act_Fecha" />
                <asp:BoundField DataField="Act_Lugar" HeaderText="Act_Lugar" SortExpression="Act_Lugar" />
                <asp:BoundField DataField="Act_Descripcion" HeaderText="Act_Descripcion" SortExpression="Act_Descripcion" />
                <asp:BoundField DataField="Act_Imagen1" HeaderText="Act_Imagen1" SortExpression="Act_Imagen1" />
                <asp:BoundField DataField="Act_Imagen2" HeaderText="Act_Imagen2" SortExpression="Act_Imagen2" />
                <asp:BoundField DataField="Act_Imagen3" HeaderText="Act_Imagen3" SortExpression="Act_Imagen3" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataActividades" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WAPHConnectionString %>" DeleteCommand="DELETE FROM [Actividades] WHERE [Actividad_Id] = @original_Actividad_Id AND [Act_Nombre] = @original_Act_Nombre AND [Act_Fecha] = @original_Act_Fecha AND [Act_Lugar] = @original_Act_Lugar AND [Act_Descripcion] = @original_Act_Descripcion AND [Act_Imagen1] = @original_Act_Imagen1 AND (([Act_Imagen2] = @original_Act_Imagen2) OR ([Act_Imagen2] IS NULL AND @original_Act_Imagen2 IS NULL)) AND (([Act_Imagen3] = @original_Act_Imagen3) OR ([Act_Imagen3] IS NULL AND @original_Act_Imagen3 IS NULL))" InsertCommand="INSERT INTO [Actividades] ([Actividad_Id], [Act_Nombre], [Act_Fecha], [Act_Lugar], [Act_Descripcion], [Act_Imagen1], [Act_Imagen2], [Act_Imagen3]) VALUES (@Actividad_Id, @Act_Nombre, @Act_Fecha, @Act_Lugar, @Act_Descripcion, @Act_Imagen1, @Act_Imagen2, @Act_Imagen3)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Actividades]" UpdateCommand="UPDATE [Actividades] SET [Act_Nombre] = @Act_Nombre, [Act_Fecha] = @Act_Fecha, [Act_Lugar] = @Act_Lugar, [Act_Descripcion] = @Act_Descripcion, [Act_Imagen1] = @Act_Imagen1, [Act_Imagen2] = @Act_Imagen2, [Act_Imagen3] = @Act_Imagen3 WHERE [Actividad_Id] = @original_Actividad_Id AND [Act_Nombre] = @original_Act_Nombre AND [Act_Fecha] = @original_Act_Fecha AND [Act_Lugar] = @original_Act_Lugar AND [Act_Descripcion] = @original_Act_Descripcion AND [Act_Imagen1] = @original_Act_Imagen1 AND (([Act_Imagen2] = @original_Act_Imagen2) OR ([Act_Imagen2] IS NULL AND @original_Act_Imagen2 IS NULL)) AND (([Act_Imagen3] = @original_Act_Imagen3) OR ([Act_Imagen3] IS NULL AND @original_Act_Imagen3 IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Actividad_Id" Type="String" />
                        <asp:Parameter Name="original_Act_Nombre" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Act_Fecha" />
                        <asp:Parameter Name="original_Act_Lugar" Type="String" />
                        <asp:Parameter Name="original_Act_Descripcion" Type="String" />
                        <asp:Parameter Name="original_Act_Imagen1" Type="String" />
                        <asp:Parameter Name="original_Act_Imagen2" Type="String" />
                        <asp:Parameter Name="original_Act_Imagen3" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Actividad_Id" Type="String" />
                        <asp:Parameter Name="Act_Nombre" Type="String" />
                        <asp:Parameter DbType="Date" Name="Act_Fecha" />
                        <asp:Parameter Name="Act_Lugar" Type="String" />
                        <asp:Parameter Name="Act_Descripcion" Type="String" />
                        <asp:Parameter Name="Act_Imagen1" Type="String" />
                        <asp:Parameter Name="Act_Imagen2" Type="String" />
                        <asp:Parameter Name="Act_Imagen3" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Act_Nombre" Type="String" />
                        <asp:Parameter DbType="Date" Name="Act_Fecha" />
                        <asp:Parameter Name="Act_Lugar" Type="String" />
                        <asp:Parameter Name="Act_Descripcion" Type="String" />
                        <asp:Parameter Name="Act_Imagen1" Type="String" />
                        <asp:Parameter Name="Act_Imagen2" Type="String" />
                        <asp:Parameter Name="Act_Imagen3" Type="String" />
                        <asp:Parameter Name="original_Actividad_Id" Type="String" />
                        <asp:Parameter Name="original_Act_Nombre" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Act_Fecha" />
                        <asp:Parameter Name="original_Act_Lugar" Type="String" />
                        <asp:Parameter Name="original_Act_Descripcion" Type="String" />
                        <asp:Parameter Name="original_Act_Imagen1" Type="String" />
                        <asp:Parameter Name="original_Act_Imagen2" Type="String" />
                        <asp:Parameter Name="original_Act_Imagen3" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
    </div>
                 
            </form>
        </div>
         
    </div>
   

</asp:Content>

