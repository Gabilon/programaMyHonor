﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="AdminDocentes.aspx.vb" Inherits="programahonor.AdminDocentes" %>
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
    <div class="col-md-12 col-sm-12 col-xs-12" style="background-color:whitesmoke">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="AsesorDocente_id" DataSourceID="SqlDataSourceDocentes" EnableModelValidation="True">
                        <Columns>
                            <asp:BoundField DataField="AsesorDocente_id" HeaderText="AsesorDocente_id" ReadOnly="True" SortExpression="AsesorDocente_id" Visible="False"></asp:BoundField>
                            <asp:BoundField DataField="Asedoc_nombre" HeaderText="Nombre Docente" SortExpression="Asedoc_nombre"></asp:BoundField>
                            <asp:BoundField DataField="Asedoc_Titulo" HeaderText="Titulo Docente" SortExpression="Asedoc_Titulo"></asp:BoundField>
                            <asp:BoundField DataField="Asedoc_Departamento" HeaderText="Departamento Docente" SortExpression="Asedoc_Departamento"></asp:BoundField>
                            <asp:BoundField DataField="Asedoc_Email" HeaderText="Email Docente" SortExpression="Asedoc_Email"></asp:BoundField>
                            <asp:BoundField DataField="Asedoc_Descripcion" HeaderText="Descripcion Docente" SortExpression="Asedoc_Descripcion"></asp:BoundField>
                            <asp:BoundField DataField="Asedoc_Status" HeaderText="Estado Docente" SortExpression="Asedoc_Status"></asp:BoundField>
                            <asp:BoundField DataField="fecha_creacion" HeaderText="fecha_creacion" SortExpression="fecha_creacion" Visible="False"></asp:BoundField>
                            <asp:BoundField DataField="usuario_creacion" HeaderText="usuario_creacion" SortExpression="usuario_creacion" Visible="False"></asp:BoundField>
                            <asp:BoundField DataField="fecha_actualizo" HeaderText="fecha_actualizo" SortExpression="fecha_actualizo" Visible="False"></asp:BoundField>
                            <asp:BoundField DataField="usuario_actualizo" HeaderText="usuario_actualizo" SortExpression="usuario_actualizo" Visible="False"></asp:BoundField>
                            <asp:CommandField CancelText="Cancelar" DeleteText="Borrar" EditText="Editar" InsertText="Insertar" NewText="Nuevo" SelectText="Seleccionar" ShowEditButton="True" UpdateText="Actualizar"></asp:CommandField>
                            <asp:CommandField CancelText="Cancelar" DeleteText="Borrar" EditText="Editar" InsertText="Insertar" NewText="Nuevo" SelectText="Seleccionar" ShowDeleteButton="True" UpdateText="Actualizar"></asp:CommandField>
                        </Columns>


                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourceDocentes" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WAPHConnectionString %>" DeleteCommand="DELETE FROM [AsesoresDocentes] WHERE [AsesorDocente_id] = @original_AsesorDocente_id AND [Asedoc_nombre] = @original_Asedoc_nombre AND [Asedoc_Titulo] = @original_Asedoc_Titulo AND [Asedoc_Departamento] = @original_Asedoc_Departamento AND [Asedoc_Email] = @original_Asedoc_Email AND [Asedoc_Descripcion] = @original_Asedoc_Descripcion AND [Asedoc_Status] = @original_Asedoc_Status AND [fecha_creacion] = @original_fecha_creacion AND [usuario_creacion] = @original_usuario_creacion AND (([fecha_actualizo] = @original_fecha_actualizo) OR ([fecha_actualizo] IS NULL AND @original_fecha_actualizo IS NULL)) AND (([usuario_actualizo] = @original_usuario_actualizo) OR ([usuario_actualizo] IS NULL AND @original_usuario_actualizo IS NULL))" InsertCommand="INSERT INTO [AsesoresDocentes] ([AsesorDocente_id], [Asedoc_nombre], [Asedoc_Titulo], [Asedoc_Departamento], [Asedoc_Email], [Asedoc_Descripcion], [Asedoc_Status], [fecha_creacion], [usuario_creacion], [fecha_actualizo], [usuario_actualizo]) VALUES (@AsesorDocente_id, @Asedoc_nombre, @Asedoc_Titulo, @Asedoc_Departamento, @Asedoc_Email, @Asedoc_Descripcion, @Asedoc_Status, @fecha_creacion, @usuario_creacion, @fecha_actualizo, @usuario_actualizo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [AsesoresDocentes]" UpdateCommand="UPDATE [AsesoresDocentes] SET [Asedoc_nombre] = @Asedoc_nombre, [Asedoc_Titulo] = @Asedoc_Titulo, [Asedoc_Departamento] = @Asedoc_Departamento, [Asedoc_Email] = @Asedoc_Email, [Asedoc_Descripcion] = @Asedoc_Descripcion, [Asedoc_Status] = @Asedoc_Status, [fecha_creacion] = @fecha_creacion, [usuario_creacion] = @usuario_creacion, [fecha_actualizo] = @fecha_actualizo, [usuario_actualizo] = @usuario_actualizo WHERE [AsesorDocente_id] = @original_AsesorDocente_id AND [Asedoc_nombre] = @original_Asedoc_nombre AND [Asedoc_Titulo] = @original_Asedoc_Titulo AND [Asedoc_Departamento] = @original_Asedoc_Departamento AND [Asedoc_Email] = @original_Asedoc_Email AND [Asedoc_Descripcion] = @original_Asedoc_Descripcion AND [Asedoc_Status] = @original_Asedoc_Status AND [fecha_creacion] = @original_fecha_creacion AND [usuario_creacion] = @original_usuario_creacion AND (([fecha_actualizo] = @original_fecha_actualizo) OR ([fecha_actualizo] IS NULL AND @original_fecha_actualizo IS NULL)) AND (([usuario_actualizo] = @original_usuario_actualizo) OR ([usuario_actualizo] IS NULL AND @original_usuario_actualizo IS NULL))">
                        <DeleteParameters>
                            <asp:Parameter Name="original_AsesorDocente_id" Type="String" />
                            <asp:Parameter Name="original_Asedoc_nombre" Type="String" />
                            <asp:Parameter Name="original_Asedoc_Titulo" Type="String" />
                            <asp:Parameter Name="original_Asedoc_Departamento" Type="String" />
                            <asp:Parameter Name="original_Asedoc_Email" Type="String" />
                            <asp:Parameter Name="original_Asedoc_Descripcion" Type="String" />
                            <asp:Parameter Name="original_Asedoc_Status" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_fecha_creacion" />
                            <asp:Parameter Name="original_usuario_creacion" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_fecha_actualizo" />
                            <asp:Parameter Name="original_usuario_actualizo" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="AsesorDocente_id" Type="String" />
                            <asp:Parameter Name="Asedoc_nombre" Type="String" />
                            <asp:Parameter Name="Asedoc_Titulo" Type="String" />
                            <asp:Parameter Name="Asedoc_Departamento" Type="String" />
                            <asp:Parameter Name="Asedoc_Email" Type="String" />
                            <asp:Parameter Name="Asedoc_Descripcion" Type="String" />
                            <asp:Parameter Name="Asedoc_Status" Type="String" />
                            <asp:Parameter DbType="Date" Name="fecha_creacion" />
                            <asp:Parameter Name="usuario_creacion" Type="String" />
                            <asp:Parameter DbType="Date" Name="fecha_actualizo" />
                            <asp:Parameter Name="usuario_actualizo" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Asedoc_nombre" Type="String" />
                            <asp:Parameter Name="Asedoc_Titulo" Type="String" />
                            <asp:Parameter Name="Asedoc_Departamento" Type="String" />
                            <asp:Parameter Name="Asedoc_Email" Type="String" />
                            <asp:Parameter Name="Asedoc_Descripcion" Type="String" />
                            <asp:Parameter Name="Asedoc_Status" Type="String" />
                            <asp:Parameter DbType="Date" Name="fecha_creacion" />
                            <asp:Parameter Name="usuario_creacion" Type="String" />
                            <asp:Parameter DbType="Date" Name="fecha_actualizo" />
                            <asp:Parameter Name="usuario_actualizo" Type="String" />
                            <asp:Parameter Name="original_AsesorDocente_id" Type="String" />
                            <asp:Parameter Name="original_Asedoc_nombre" Type="String" />
                            <asp:Parameter Name="original_Asedoc_Titulo" Type="String" />
                            <asp:Parameter Name="original_Asedoc_Departamento" Type="String" />
                            <asp:Parameter Name="original_Asedoc_Email" Type="String" />
                            <asp:Parameter Name="original_Asedoc_Descripcion" Type="String" />
                            <asp:Parameter Name="original_Asedoc_Status" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_fecha_creacion" />
                            <asp:Parameter Name="original_usuario_creacion" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_fecha_actualizo" />
                            <asp:Parameter Name="original_usuario_actualizo" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
                </form>

</asp:Content>
