<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminSolicitud.aspx.vb" Inherits="programahonor.AdminSolicitud" %>

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
                                Solicitud</strong>
                        </label>
                    </div>
                </div>
            </div>
            <form role="form" method="post" runat="server" class="form-horizontal">
                <div class="form-horizontal">
                    <div>
                        <asp:GridView ID="dgvAdminSolicitud" runat="server" AutoGenerateColumns="False" DataKeyNames="solicitud_id" DataSourceID="AdminSolicitudSqlDataSource">
                            <Columns>
                                <asp:BoundField DataField="solicitud_id" HeaderText="ID Estudiante" ReadOnly="True" SortExpression="solicitud_id" Visible="False" />
                                <asp:BoundField DataField="Sol_Specialty" HeaderText="Concentración" SortExpression="Sol_Specialty" />
                                <asp:BoundField DataField="Sol_GraduationDate" HeaderText="Fecha Graduación" SortExpression="Sol_GraduationDate" />
                                <asp:BoundField DataField="Sol_Transportation" HeaderText="Transportación" SortExpression="Sol_Transportation" />
                                <asp:BoundField DataField="Sol_License" HeaderText="Licencia" SortExpression="Sol_License" />
                                <asp:BoundField DataField="Sol_English" HeaderText="Inglés" SortExpression="Sol_English" />
                                <asp:BoundField DataField="Sol_Interest" HeaderText="Interés" SortExpression="Sol_Interest" />
                                <asp:BoundField DataField="Sol_Availability" HeaderText="Disponibilidad" SortExpression="Sol_Availability" />
                                <asp:BoundField DataField="Sol_Resume" HeaderText="Resumé" SortExpression="Sol_Resume" />
                                <asp:CommandField CancelText="Cancelar" DeleteText="Borrar" EditText="Editar" HeaderText="Opciones" ShowEditButton="True"></asp:CommandField>
                            </Columns>
                            <HeaderStyle BackColor="#F5F5F5" HorizontalAlign="Center" VerticalAlign="Middle" />
                            <RowStyle BackColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="AdminSolicitudSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:WAPHConnectionString %>" SelectCommand="SELECT [solicitud_id], [Sol_Specialty], [Sol_GraduationDate], [Sol_Transportation], [Sol_License], [Sol_English], [Sol_Interest], [Sol_Availability], [Sol_Resume] FROM [Solicitud] ORDER BY [solicitud_id], [Sol_GraduationDate] DESC"></asp:SqlDataSource>
                    </div>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
