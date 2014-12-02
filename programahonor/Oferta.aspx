<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Membre.Master" CodeBehind="Oferta.aspx.vb" Inherits="programahonor.Oferta" %>

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
                                Registro de Ofertas</strong>
                        </label>
                    </div>
                </div>
            </div>
            <form role="form" method="post" runat="server" class="form-horizontal">
                <div class="form-horizontal">


                    <%--<div class="col-md-2 col-sm-3 col-xs-12">
                                        <div class="form-group">
                                            <label style="width: 160px; text-align: left">Fecha:</label>
                                            <asp:TextBox ID="For_Date" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_date" CssClass="label label-warning" ErrorMessage="campo requerido" />
                                        </div>
                                    </div>--%>
                    <div class="col-md-5 col-sm-7 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Compañía:</label>
                            <asp:TextBox ID="For_CompanyName" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_CompanyName" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Salario:</label>
                            <asp:TextBox ID="For_Salary" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Salary" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left;">Para:</label>
                            <asp:DropDownList ID="For_Extracurricular" runat="server" DataSourceID="XmlExtracurricular" DataTextField="type" DataValueField="id" CssClass="form-control"></asp:DropDownList>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Extracurricular" CssClass="label label-warning" ErrorMessage="campo requerido." />
                            <asp:XmlDataSource ID="XmlExtracurricular" runat="server" DataFile="~/Content/xml/XMLintPrInv.xml"></asp:XmlDataSource>
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-7 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Otros Beneficios:</label>
                            <asp:TextBox ID="For_OtherBenefits" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_OtherBenefits" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-7 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Horario:</label>
                            <asp:TextBox ID="For_Schedule" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Schedule" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-7 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Requisitos:</label>
                            <asp:TextBox ID="For_Requirements" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Requirements" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-7 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Tareas:</label>
                            <asp:TextBox ID="For_Tasks" runat="server" CssClass="form-control" TextMode="MultiLine" MaxLength="250"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Tasks" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-7 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Contacto:</label>
                            <asp:TextBox ID="For_ContactName" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_ContactName" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Posición:</label>
                            <asp:TextBox ID="For_ContactPosition" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_contactPosition" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Teléfono:</label>
                            <asp:TextBox ID="For_ContactPhone" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_ContactPhone" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Extensión:</label>
                            <asp:TextBox ID="For_ContactExt" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_ContactExt" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-7 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Otro:</label>
                            <asp:TextBox ID="For_ContactOtherPhone" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_ContactOtherPhone" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-2 col-sm-3 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Fax:</label>
                            <asp:TextBox ID="For_contactFax" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_ContactFax" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-7 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Dirección Física:</label>
                            <asp:TextBox ID="For_CompanyPhysicalAddress" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_CompanyPhysicalAddress" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-7 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Dirección Postal:</label>
                            <asp:TextBox ID="For_CompanyPostalAddress" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_CompanyPostalAddress" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-5 col-sm-7 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Comentarios:</label>
                            <asp:TextBox ID="For_Comments" runat="server" CssClass="form-control" TextMode="MultiLine" MaxLength="250"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_Comments" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Correo Electrónico:</label>
                            <asp:TextBox ID="For_CompanyEmail" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_CompanyEmail" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 col-xs-12">
                        <div class="form-group">
                            <label style="width: 160px; text-align: left">Página de Internet:</label>
                            <asp:TextBox ID="For_CompanyWebPage" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="For_CompanyWebPage" CssClass="label label-warning" ErrorMessage="campo requerido" />
                        </div>
                    </div>
                    <div class="col-md-1 col-md-offset-11">
                        <asp:Button ID="btnGuardarOferta" runat="server" Text="Guardar" CssClass="btn btn-primary" ToolTip="Guardar Información de Registro de Ofertas" />
                    </div>
                    <div class="col-md-1 col-md-offset-11">
                        <asp:Button ID="btnActualizarOferta" runat="server" Text="Update" CssClass="btn btn-primary" ToolTip="Actualizar Información de de Registro de Ofertas" />
                    </div>
                </div>
                <%--  style="background-color:whitesmoke" 
                    cssClass="col-md-11 form-control"  --%>
                <div>
                    <asp:GridView ID="dgvOferta" runat="server" DataSourceID="OfertaSqlDataSource" AutoGenerateColumns="False" DataKeyNames="oferta_id" AllowPaging="True" HorizontalAlign="Center" BackColor="White" ForeColor="Black">
                        <%--<RowStyle BackColor="WhiteSmoke" ForeColor="Black" />--%>
                        <Columns>
                            <asp:BoundField DataField="oferta_id" HeaderText="ID" ReadOnly="True" SortExpression="oferta_id" Visible="False">
                                <ControlStyle BackColor="#F5F5F5" ForeColor="Black" />
                                <FooterStyle BackColor="#F5F5F5" ForeColor="Black" />
                                <HeaderStyle BackColor="#F5F5F5" Font-Bold="True" ForeColor="Black" CssClass="table table-hover table-bordered" />
                                <ItemStyle BackColor="White" ForeColor="Blue" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_CompanyName" HeaderText="Nombre Compañía" SortExpression="ofr_CompanyName">
                            <ControlStyle CssClass="&lt;HeaderStyle CssClass=&quot;table table-hover table-bordered&quot; /&gt;" />
                            <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_Salary" HeaderText="Salario" SortExpression="ofr_Salary">
                            <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_Extracurricular" HeaderText="Extracurricular" SortExpression="ofr_Extracurricular">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_OtherBenefits" HeaderText="Otros Beneficios" SortExpression="ofr_OtherBenefits" Visible="False">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_Schedule" HeaderText="Horario" SortExpression="ofr_Schedule">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_Requirements" HeaderText="Requisitos" SortExpression="ofr_Requirements">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_Tasks" HeaderText="Tareas" SortExpression="ofr_Tasks">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_ContactName" HeaderText="Contacto" SortExpression="ofr_ContactName">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_ContactPosition" HeaderText="Posición" SortExpression="ofr_ContactPosition">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_ContactOtherPhone" HeaderText="Teléfono" SortExpression="ofr_ContactOtherPhone">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_ContactExt" HeaderText="Ext." SortExpression="ofr_ContactExt" Visible="False">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_ContactFax" HeaderText="Fax" SortExpression="ofr_ContactFax" Visible="False">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_CompanyPhysicalAddress" HeaderText="Dirección Física" SortExpression="ofr_CompanyPhysicalAddress">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_CompanyPostalAddress" HeaderText="Dirección Postal" SortExpression="ofr_CompanyPostalAddress">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_Comments" HeaderText="Comentarios" SortExpression="ofr_Comments">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_CompanyEmail" HeaderText="Email" SortExpression="ofr_CompanyEmail">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ofr_CompanyWebPage" HeaderText="Pagina Internet" SortExpression="ofr_CompanyWebPage" Visible="False">
                                <HeaderStyle CssClass="table table-hover table-bordered" />
                            </asp:BoundField>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" CancelText="Cancelar" DeleteText="Borrar" EditText="Editar" HeaderText="Opciones">
                                <ControlStyle BackColor="#F5F5F5" ForeColor="Black" />
                                <FooterStyle BackColor="#F5F5F5" />
                                <HeaderStyle BackColor="#F5F5F5" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <ItemStyle BackColor="WhiteSmoke" ForeColor="Blue" HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:CommandField>
                        </Columns>
                        <%--<FooterStyle BackColor="WhiteSmoke" ForeColor="Black" /> 
                        <PagerStyle BackColor="WhiteSmoke" ForeColor="Black" HorizontalAlign="Center" /> 
                        <SelectedRowStyle BackColor="WhiteSmoke" Font-Bold="True" ForeColor="Black" /> 
                        <HeaderStyle BackColor="WhiteSmoke" Font-Bold="True" ForeColor="Black" /> --%>
                        <EditRowStyle BackColor="White" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <HeaderStyle BackColor="WhiteSmoke" ForeColor="Black" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="OfertaSqlDataSource" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:WAPHConnectionString %>'
                        DeleteCommand="DELETE FROM [Oferta] WHERE [oferta_id] = @original_oferta_id AND [ofr_CompanyName] = @original_ofr_CompanyName AND [ofr_Salary] = @original_ofr_Salary AND [ofr_Extracurricular] = @original_ofr_Extracurricular AND (([ofr_OtherBenefits] = @original_ofr_OtherBenefits) OR ([ofr_OtherBenefits] IS NULL AND @original_ofr_OtherBenefits IS NULL)) AND (([ofr_Schedule] = @original_ofr_Schedule) OR ([ofr_Schedule] IS NULL AND @original_ofr_Schedule IS NULL)) AND [ofr_Requirements] = @original_ofr_Requirements AND [ofr_Tasks] = @original_ofr_Tasks AND [ofr_ContactName] = @original_ofr_ContactName AND [ofr_ContactPosition] = @original_ofr_ContactPosition AND [ofr_ContactExt] = @original_ofr_ContactExt AND (([ofr_ContactOtherPhone] = @original_ofr_ContactOtherPhone) OR ([ofr_ContactOtherPhone] IS NULL AND @original_ofr_ContactOtherPhone IS NULL)) AND (([ofr_ContactFax] = @original_ofr_ContactFax) OR ([ofr_ContactFax] IS NULL AND @original_ofr_ContactFax IS NULL)) AND [ofr_CompanyPhysicalAddress] = @original_ofr_CompanyPhysicalAddress AND (([ofr_CompanyPostalAddress] = @original_ofr_CompanyPostalAddress) OR ([ofr_CompanyPostalAddress] IS NULL AND @original_ofr_CompanyPostalAddress IS NULL)) AND (([ofr_Comments] = @original_ofr_Comments) OR ([ofr_Comments] IS NULL AND @original_ofr_Comments IS NULL)) AND [ofr_CompanyEmail] = @original_ofr_CompanyEmail AND [ofr_CompanyWebPage] = @original_ofr_CompanyWebPage" InsertCommand="INSERT INTO [Oferta] ([oferta_id], [ofr_CompanyName], [ofr_Salary], [ofr_Extracurricular], [ofr_OtherBenefits], [ofr_Schedule], [ofr_Requirements], [ofr_Tasks], [ofr_ContactName], [ofr_ContactPosition], [ofr_ContactExt], [ofr_ContactOtherPhone], [ofr_ContactFax], [ofr_CompanyPhysicalAddress], [ofr_CompanyPostalAddress], [ofr_Comments], [ofr_CompanyEmail], [ofr_CompanyWebPage]) VALUES (@oferta_id, @ofr_CompanyName, @ofr_Salary, @ofr_Extracurricular, @ofr_OtherBenefits, @ofr_Schedule, @ofr_Requirements, @ofr_Tasks, @ofr_ContactName, @ofr_ContactPosition, @ofr_ContactExt, @ofr_ContactOtherPhone, @ofr_ContactFax, @ofr_CompanyPhysicalAddress, @ofr_CompanyPostalAddress, @ofr_Comments, @ofr_CompanyEmail, @ofr_CompanyWebPage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [oferta_id], [ofr_CompanyName], [ofr_Salary], [ofr_Extracurricular], [ofr_OtherBenefits], [ofr_Schedule], [ofr_Requirements], [ofr_Tasks], [ofr_ContactName], [ofr_ContactPosition], [ofr_ContactExt], [ofr_ContactOtherPhone], [ofr_ContactFax], [ofr_CompanyPhysicalAddress], [ofr_CompanyPostalAddress], [ofr_Comments], [ofr_CompanyEmail], [ofr_CompanyWebPage] FROM [Oferta] ORDER BY [fecha_creacion], [ofr_CompanyName]" UpdateCommand="UPDATE [Oferta] SET [ofr_CompanyName] = @ofr_CompanyName, [ofr_Salary] = @ofr_Salary, [ofr_Extracurricular] = @ofr_Extracurricular, [ofr_OtherBenefits] = @ofr_OtherBenefits, [ofr_Schedule] = @ofr_Schedule, [ofr_Requirements] = @ofr_Requirements, [ofr_Tasks] = @ofr_Tasks, [ofr_ContactName] = @ofr_ContactName, [ofr_ContactPosition] = @ofr_ContactPosition, [ofr_ContactExt] = @ofr_ContactExt, [ofr_ContactOtherPhone] = @ofr_ContactOtherPhone, [ofr_ContactFax] = @ofr_ContactFax, [ofr_CompanyPhysicalAddress] = @ofr_CompanyPhysicalAddress, [ofr_CompanyPostalAddress] = @ofr_CompanyPostalAddress, [ofr_Comments] = @ofr_Comments, [ofr_CompanyEmail] = @ofr_CompanyEmail, [ofr_CompanyWebPage] = @ofr_CompanyWebPage WHERE [oferta_id] = @original_oferta_id AND [ofr_CompanyName] = @original_ofr_CompanyName AND [ofr_Salary] = @original_ofr_Salary AND [ofr_Extracurricular] = @original_ofr_Extracurricular AND (([ofr_OtherBenefits] = @original_ofr_OtherBenefits) OR ([ofr_OtherBenefits] IS NULL AND @original_ofr_OtherBenefits IS NULL)) AND (([ofr_Schedule] = @original_ofr_Schedule) OR ([ofr_Schedule] IS NULL AND @original_ofr_Schedule IS NULL)) AND [ofr_Requirements] = @original_ofr_Requirements AND [ofr_Tasks] = @original_ofr_Tasks AND [ofr_ContactName] = @original_ofr_ContactName AND [ofr_ContactPosition] = @original_ofr_ContactPosition AND [ofr_ContactExt] = @original_ofr_ContactExt AND (([ofr_ContactOtherPhone] = @original_ofr_ContactOtherPhone) OR ([ofr_ContactOtherPhone] IS NULL AND @original_ofr_ContactOtherPhone IS NULL)) AND (([ofr_ContactFax] = @original_ofr_ContactFax) OR ([ofr_ContactFax] IS NULL AND @original_ofr_ContactFax IS NULL)) AND [ofr_CompanyPhysicalAddress] = @original_ofr_CompanyPhysicalAddress AND (([ofr_CompanyPostalAddress] = @original_ofr_CompanyPostalAddress) OR ([ofr_CompanyPostalAddress] IS NULL AND @original_ofr_CompanyPostalAddress IS NULL)) AND (([ofr_Comments] = @original_ofr_Comments) OR ([ofr_Comments] IS NULL AND @original_ofr_Comments IS NULL)) AND [ofr_CompanyEmail] = @original_ofr_CompanyEmail AND [ofr_CompanyWebPage] = @original_ofr_CompanyWebPage">
                        <DeleteParameters>
                            <asp:Parameter Name="original_oferta_id" Type="Object"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_CompanyName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Salary" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Extracurricular" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_OtherBenefits" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Schedule" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Requirements" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Tasks" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_ContactName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_ContactPosition" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_ContactExt" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_ContactOtherPhone" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_ContactFax" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_CompanyPhysicalAddress" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_CompanyPostalAddress" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Comments" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_CompanyEmail" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_CompanyWebPage" Type="String"></asp:Parameter>
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="oferta_id" Type="Object"></asp:Parameter>
                            <asp:Parameter Name="ofr_CompanyName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Salary" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Extracurricular" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_OtherBenefits" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Schedule" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Requirements" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Tasks" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_ContactName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_ContactPosition" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_ContactExt" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_ContactOtherPhone" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_ContactFax" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_CompanyPhysicalAddress" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_CompanyPostalAddress" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Comments" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_CompanyEmail" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_CompanyWebPage" Type="String"></asp:Parameter>
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ofr_CompanyName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Salary" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Extracurricular" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_OtherBenefits" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Schedule" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Requirements" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Tasks" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_ContactName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_ContactPosition" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_ContactExt" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_ContactOtherPhone" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_ContactFax" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_CompanyPhysicalAddress" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_CompanyPostalAddress" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_Comments" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_CompanyEmail" Type="String"></asp:Parameter>
                            <asp:Parameter Name="ofr_CompanyWebPage" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_oferta_id" Type="Object"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_CompanyName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Salary" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Extracurricular" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_OtherBenefits" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Schedule" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Requirements" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Tasks" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_ContactName" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_ContactPosition" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_ContactExt" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_ContactOtherPhone" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_ContactFax" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_CompanyPhysicalAddress" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_CompanyPostalAddress" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_Comments" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_CompanyEmail" Type="String"></asp:Parameter>
                            <asp:Parameter Name="original_ofr_CompanyWebPage" Type="String"></asp:Parameter>
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
