<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="AdminAplicar.aspx.vb" Inherits="programahonor.AdminAplicar" %>
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
         <div class="container-fluid">
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentNumber" DataSourceID="SqlDataSourceAplicar">
                    <Columns>
                        <asp:BoundField DataField="StudentName" HeaderText="Nombre" SortExpression="StudentName">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="StudentNumber" HeaderText="No. Estudiante" ReadOnly="True" SortExpression="StudentNumber">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Stu_Email" HeaderText="Email" SortExpression="Stu_Email">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Stu_Phone" HeaderText="Telefonó" SortExpression="Stu_Phone" />
                        <asp:BoundField DataField="Stu_Direccion" HeaderText="Dirección" SortExpression="Stu_Direccion">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Stu_Birthday" DataFormatString="{0:d}" HeaderText="Cumpleaños" SortExpression="Stu_Birthday">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Stu_Certificate" HeaderText="Certificado" SortExpression="Stu_Certificate">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Stu_Authorization" HeaderText="Autorización" SortExpression="Stu_Authorization">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Stu_Ensayo" HeaderText="Ensayo" SortExpression="Stu_Ensayo">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Stu_Igs" HeaderText="GPA" SortExpression="Stu_Igs">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Stu_Department" HeaderText="Departamento" SortExpression="Stu_Department">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Stu_Year" HeaderText="Graduación" SortExpression="Stu_Year">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Stu_Status" HeaderText="Status" SortExpression="Stu_Status">
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:CommandField HeaderText="Seleccionar" ShowSelectButton="True">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:CommandField>
                        <asp:CommandField CancelText="Cancelar" DeleteText="Borrar" EditText="Editar" ShowEditButton="True">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:CommandField>
                        <asp:HyperLinkField HeaderText="Ver Evaluacion" DataNavigateUrlFormatString="~/ResultadoEvaluaciones.aspx?value=StudentNumber" Text="ir" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceAplicar" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WAPHConnectionString %>" DeleteCommand="DELETE FROM [Students] WHERE [StudentNumber] = @original_StudentNumber AND [StudentName] = @original_StudentName AND [Stu_Email] = @original_Stu_Email AND [Stu_Phone] = @original_Stu_Phone AND [Stu_Direccion] = @original_Stu_Direccion AND [Stu_Birthday] = @original_Stu_Birthday AND (([Stu_Certificate] = @original_Stu_Certificate) OR ([Stu_Certificate] IS NULL AND @original_Stu_Certificate IS NULL)) AND [Stu_Authorization] = @original_Stu_Authorization AND (([Stu_Ensayo] = @original_Stu_Ensayo) OR ([Stu_Ensayo] IS NULL AND @original_Stu_Ensayo IS NULL)) AND [Stu_Igs] = @original_Stu_Igs AND [Stu_Department] = @original_Stu_Department AND [Stu_Year] = @original_Stu_Year AND [Stu_Status] = @original_Stu_Status" InsertCommand="INSERT INTO [Students] ([StudentName], [StudentNumber], [Stu_Email], [Stu_Phone], [Stu_Direccion], [Stu_Birthday], [Stu_Certificate], [Stu_Authorization], [Stu_Ensayo], [Stu_Igs], [Stu_Department], [Stu_Year], [Stu_Status]) VALUES (@StudentName, @StudentNumber, @Stu_Email, @Stu_Phone, @Stu_Direccion, @Stu_Birthday, @Stu_Certificate, @Stu_Authorization, @Stu_Ensayo, @Stu_Igs, @Stu_Department, @Stu_Year, @Stu_Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [StudentName], [StudentNumber], [Stu_Email], [Stu_Phone], [Stu_Direccion], [Stu_Birthday], [Stu_Certificate], [Stu_Authorization], [Stu_Ensayo], [Stu_Igs], [Stu_Department], [Stu_Year], [Stu_Status] FROM [Students]" UpdateCommand="UPDATE [Students] SET [StudentName] = @StudentName, [Stu_Email] = @Stu_Email, [Stu_Phone] = @Stu_Phone, [Stu_Direccion] = @Stu_Direccion, [Stu_Birthday] = @Stu_Birthday, [Stu_Certificate] = @Stu_Certificate, [Stu_Authorization] = @Stu_Authorization, [Stu_Ensayo] = @Stu_Ensayo, [Stu_Igs] = @Stu_Igs, [Stu_Department] = @Stu_Department, [Stu_Year] = @Stu_Year, [Stu_Status] = @Stu_Status WHERE [StudentNumber] = @original_StudentNumber AND [StudentName] = @original_StudentName AND [Stu_Email] = @original_Stu_Email AND [Stu_Phone] = @original_Stu_Phone AND [Stu_Direccion] = @original_Stu_Direccion AND [Stu_Birthday] = @original_Stu_Birthday AND (([Stu_Certificate] = @original_Stu_Certificate) OR ([Stu_Certificate] IS NULL AND @original_Stu_Certificate IS NULL)) AND [Stu_Authorization] = @original_Stu_Authorization AND (([Stu_Ensayo] = @original_Stu_Ensayo) OR ([Stu_Ensayo] IS NULL AND @original_Stu_Ensayo IS NULL)) AND [Stu_Igs] = @original_Stu_Igs AND [Stu_Department] = @original_Stu_Department AND [Stu_Year] = @original_Stu_Year AND [Stu_Status] = @original_Stu_Status">
                    <DeleteParameters>
                        <asp:Parameter Name="original_StudentNumber" Type="String" />
                        <asp:Parameter Name="original_StudentName" Type="String" />
                        <asp:Parameter Name="original_Stu_Email" Type="String" />
                        <asp:Parameter Name="original_Stu_Phone" Type="String" />
                        <asp:Parameter Name="original_Stu_Direccion" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Stu_Birthday" />
                        <asp:Parameter Name="original_Stu_Certificate" Type="String" />
                        <asp:Parameter Name="original_Stu_Authorization" Type="String" />
                        <asp:Parameter Name="original_Stu_Ensayo" Type="String" />
                        <asp:Parameter Name="original_Stu_Igs" Type="String" />
                        <asp:Parameter Name="original_Stu_Department" Type="String" />
                        <asp:Parameter Name="original_Stu_Year" Type="String" />
                        <asp:Parameter Name="original_Stu_Status" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="StudentName" Type="String" />
                        <asp:Parameter Name="StudentNumber" Type="String" />
                        <asp:Parameter Name="Stu_Email" Type="String" />
                        <asp:Parameter Name="Stu_Phone" Type="String" />
                        <asp:Parameter Name="Stu_Direccion" Type="String" />
                        <asp:Parameter DbType="Date" Name="Stu_Birthday" />
                        <asp:Parameter Name="Stu_Certificate" Type="String" />
                        <asp:Parameter Name="Stu_Authorization" Type="String" />
                        <asp:Parameter Name="Stu_Ensayo" Type="String" />
                        <asp:Parameter Name="Stu_Igs" Type="String" />
                        <asp:Parameter Name="Stu_Department" Type="String" />
                        <asp:Parameter Name="Stu_Year" Type="String" />
                        <asp:Parameter Name="Stu_Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="StudentName" Type="String" />
                        <asp:Parameter Name="Stu_Email" Type="String" />
                        <asp:Parameter Name="Stu_Phone" Type="String" />
                        <asp:Parameter Name="Stu_Direccion" Type="String" />
                        <asp:Parameter DbType="Date" Name="Stu_Birthday" />
                        <asp:Parameter Name="Stu_Certificate" Type="String" />
                        <asp:Parameter Name="Stu_Authorization" Type="String" />
                        <asp:Parameter Name="Stu_Ensayo" Type="String" />
                        <asp:Parameter Name="Stu_Igs" Type="String" />
                        <asp:Parameter Name="Stu_Department" Type="String" />
                        <asp:Parameter Name="Stu_Year" Type="String" />
                        <asp:Parameter Name="Stu_Status" Type="String" />
                        <asp:Parameter Name="original_StudentNumber" Type="String" />
                        <asp:Parameter Name="original_StudentName" Type="String" />
                        <asp:Parameter Name="original_Stu_Email" Type="String" />
                        <asp:Parameter Name="original_Stu_Phone" Type="String" />
                        <asp:Parameter Name="original_Stu_Direccion" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_Stu_Birthday" />
                        <asp:Parameter Name="original_Stu_Certificate" Type="String" />
                        <asp:Parameter Name="original_Stu_Authorization" Type="String" />
                        <asp:Parameter Name="original_Stu_Ensayo" Type="String" />
                        <asp:Parameter Name="original_Stu_Igs" Type="String" />
                        <asp:Parameter Name="original_Stu_Department" Type="String" />
                        <asp:Parameter Name="original_Stu_Year" Type="String" />
                        <asp:Parameter Name="original_Stu_Status" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </form>
        </div>
             </div>
     </div>
</asp:Content>
