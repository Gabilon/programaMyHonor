<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Admin.Master" CodeBehind="Oferta.aspx.vb" Inherits="programahonor.Oferta" %>

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
        <div class="panel-body" style="margin-top: 20px;">
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
                    <div class="col-md-1 col-md-offset-10" style="margin-bottom: 20px">
                        <asp:Button ID="btnGuardarOferta" runat="server" Text="Guardar" CssClass="btn btn-primary" ToolTip="Guardar Información de Registro de Ofertas" />
                    </div>
                    <div class="col-md-1 col-md-offset-10">
                        <asp:Button ID="btnActualizarOferta" runat="server" Text="Update" CssClass="btn btn-primary" ToolTip="Actualizar Información de de Registro de Ofertas" />
                    </div>
                </div>
                <div><br /></div>
                <%--  style="background-color:whitesmoke" 
<<<<<<< HEAD
                    cssClass="col-md-11 form-control"
                    Class="col-md-8 col col-md-push-0 col-md-pull-0"  --%>
                <%--<RowStyle BackColor="WhiteSmoke" ForeColor="Black" />--%>
                <%--<dentro de los Bound FIleds --- ControlStyle BackColor="#F5F5F5" ForeColor="Black" />
                                <FooterStyle BackColor="#F5F5F5" ForeColor="Black" />
                                <HeaderStyle BackColor="#F5F5F5" Font-Bold="True" ForeColor="Black" />
                                <ItemStyle BackColor="White" ForeColor="Blue" />--%>
                <div>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="oferta_id" DataSourceID="OfertaSqlDataSource" HorizontalAlign="Justify" AllowPaging="True" BackColor="White">
                        <Columns>
                            <asp:BoundField DataField="ofr_Tasks" HeaderText="oferta_id" ReadOnly="True" SortExpression="oferta_id" Visible="False" />
                            <asp:BoundField DataField="ofr_CompanyName" HeaderText=" Compañía" SortExpression="ofr_CompanyName" />
                            <asp:BoundField DataField="ofr_Salary" HeaderText="ofr_Salary" SortExpression="ofr_Salary" Visible="False" />
                            <asp:BoundField DataField="ofr_Extracurricular" HeaderText="ofr_Extracurricular" SortExpression="ofr_Extracurricular" Visible="False" />
                            <asp:BoundField DataField="ofr_OtherBenefits" HeaderText="   Beneficios" SortExpression="ofr_OtherBenefits" />
                            <asp:BoundField DataField="ofr_Schedule" HeaderText="ofr_Schedule" SortExpression="ofr_Schedule" Visible="False" />
                            <asp:BoundField DataField="ofr_Requirements" HeaderText="ofr_Requirements" SortExpression="ofr_Requirements" Visible="False" />
                            <asp:BoundField DataField="ofr_Tasks" HeaderText="       Tareas" SortExpression="ofr_Tasks" />
                            <asp:BoundField DataField="ofr_ContactName" HeaderText="Contacto" SortExpression="ofr_ContactName" />
                            <asp:BoundField DataField="ofr_ContactPosition" HeaderText="Poscición" SortExpression="ofr_ContactPosition" />
                            <asp:BoundField DataField="ofr_ContactExt" HeaderText="ofr_ContactExt" SortExpression="ofr_ContactExt" Visible="False" />
                            <asp:BoundField DataField="ofr_ContactOtherPhone" HeaderText="Telefono" SortExpression="ofr_ContactOtherPhone" />
                            <asp:BoundField DataField="ofr_ContactFax" HeaderText="ofr_ContactFax" SortExpression="ofr_ContactFax" Visible="False" />
                            <asp:BoundField DataField="ofr_CompanyPhysicalAddress" HeaderText="Dirección Física" SortExpression="ofr_CompanyPhysicalAddress" />
                            <asp:BoundField DataField="ofr_CompanyPostalAddress" HeaderText="ofr_CompanyPostalAddress" SortExpression="ofr_CompanyPostalAddress" Visible="False" />
                            <asp:BoundField DataField="ofr_Comments" HeaderText="ofr_Comments" SortExpression="ofr_Comments" Visible="False" />
                            <asp:BoundField DataField="ofr_CompanyEmail" HeaderText="ofr_CompanyEmail" SortExpression="ofr_CompanyEmail" Visible="False" />
                            <asp:BoundField DataField="ofr_CompanyWebPage" HeaderText="ofr_CompanyWebPage" SortExpression="ofr_CompanyWebPage" Visible="False" />
                            <asp:CommandField ShowEditButton="True">
                                <HeaderStyle BorderStyle="None" BackColor="#F5F5F5" />
                                <ItemStyle BackColor="#F5F5F5" />
                            </asp:CommandField>
                            <asp:CommandField ShowDeleteButton="True">
                                <HeaderStyle BorderStyle="None" BackColor="#F5F5F5" />
                                <ItemStyle BackColor="#F5F5F5" />             
                            </asp:CommandField>
                        </Columns>
                        <HeaderStyle BackColor="#F5F5F5" Font-Size="Larger" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" HorizontalAlign="Center" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="OfertaSqlDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:WAPHConnectionString %>" DeleteCommand="DELETE FROM [Oferta] WHERE [oferta_id] = @original_oferta_id AND [ofr_CompanyName] = @original_ofr_CompanyName AND [ofr_Salary] = @original_ofr_Salary AND [ofr_Extracurricular] = @original_ofr_Extracurricular AND (([ofr_OtherBenefits] = @original_ofr_OtherBenefits) OR ([ofr_OtherBenefits] IS NULL AND @original_ofr_OtherBenefits IS NULL)) AND (([ofr_Schedule] = @original_ofr_Schedule) OR ([ofr_Schedule] IS NULL AND @original_ofr_Schedule IS NULL)) AND [ofr_Requirements] = @original_ofr_Requirements AND [ofr_Tasks] = @original_ofr_Tasks AND [ofr_ContactName] = @original_ofr_ContactName AND [ofr_ContactPosition] = @original_ofr_ContactPosition AND [ofr_ContactExt] = @original_ofr_ContactExt AND (([ofr_ContactOtherPhone] = @original_ofr_ContactOtherPhone) OR ([ofr_ContactOtherPhone] IS NULL AND @original_ofr_ContactOtherPhone IS NULL)) AND (([ofr_ContactFax] = @original_ofr_ContactFax) OR ([ofr_ContactFax] IS NULL AND @original_ofr_ContactFax IS NULL)) AND [ofr_CompanyPhysicalAddress] = @original_ofr_CompanyPhysicalAddress AND (([ofr_CompanyPostalAddress] = @original_ofr_CompanyPostalAddress) OR ([ofr_CompanyPostalAddress] IS NULL AND @original_ofr_CompanyPostalAddress IS NULL)) AND (([ofr_Comments] = @original_ofr_Comments) OR ([ofr_Comments] IS NULL AND @original_ofr_Comments IS NULL)) AND [ofr_CompanyEmail] = @original_ofr_CompanyEmail AND [ofr_CompanyWebPage] = @original_ofr_CompanyWebPage" InsertCommand="INSERT INTO [Oferta] ([oferta_id], [ofr_CompanyName], [ofr_Salary], [ofr_Extracurricular], [ofr_OtherBenefits], [ofr_Schedule], [ofr_Requirements], [ofr_Tasks], [ofr_ContactName], [ofr_ContactPosition], [ofr_ContactExt], [ofr_ContactOtherPhone], [ofr_ContactFax], [ofr_CompanyPhysicalAddress], [ofr_CompanyPostalAddress], [ofr_Comments], [ofr_CompanyEmail], [ofr_CompanyWebPage]) VALUES (@oferta_id, @ofr_CompanyName, @ofr_Salary, @ofr_Extracurricular, @ofr_OtherBenefits, @ofr_Schedule, @ofr_Requirements, @ofr_Tasks, @ofr_ContactName, @ofr_ContactPosition, @ofr_ContactExt, @ofr_ContactOtherPhone, @ofr_ContactFax, @ofr_CompanyPhysicalAddress, @ofr_CompanyPostalAddress, @ofr_Comments, @ofr_CompanyEmail, @ofr_CompanyWebPage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [oferta_id], [ofr_CompanyName], [ofr_Salary], [ofr_Extracurricular], [ofr_OtherBenefits], [ofr_Schedule], [ofr_Requirements], [ofr_Tasks], [ofr_ContactName], [ofr_ContactPosition], [ofr_ContactExt], [ofr_ContactOtherPhone], [ofr_ContactFax], [ofr_CompanyPhysicalAddress], [ofr_CompanyPostalAddress], [ofr_Comments], [ofr_CompanyEmail], [ofr_CompanyWebPage] FROM [Oferta] ORDER BY [fecha_creacion], [ofr_CompanyName]" UpdateCommand="UPDATE [Oferta] SET [ofr_CompanyName] = @ofr_CompanyName, [ofr_Salary] = @ofr_Salary, [ofr_Extracurricular] = @ofr_Extracurricular, [ofr_OtherBenefits] = @ofr_OtherBenefits, [ofr_Schedule] = @ofr_Schedule, [ofr_Requirements] = @ofr_Requirements, [ofr_Tasks] = @ofr_Tasks, [ofr_ContactName] = @ofr_ContactName, [ofr_ContactPosition] = @ofr_ContactPosition, [ofr_ContactExt] = @ofr_ContactExt, [ofr_ContactOtherPhone] = @ofr_ContactOtherPhone, [ofr_ContactFax] = @ofr_ContactFax, [ofr_CompanyPhysicalAddress] = @ofr_CompanyPhysicalAddress, [ofr_CompanyPostalAddress] = @ofr_CompanyPostalAddress, [ofr_Comments] = @ofr_Comments, [ofr_CompanyEmail] = @ofr_CompanyEmail, [ofr_CompanyWebPage] = @ofr_CompanyWebPage WHERE [oferta_id] = @original_oferta_id AND [ofr_CompanyName] = @original_ofr_CompanyName AND [ofr_Salary] = @original_ofr_Salary AND [ofr_Extracurricular] = @original_ofr_Extracurricular AND (([ofr_OtherBenefits] = @original_ofr_OtherBenefits) OR ([ofr_OtherBenefits] IS NULL AND @original_ofr_OtherBenefits IS NULL)) AND (([ofr_Schedule] = @original_ofr_Schedule) OR ([ofr_Schedule] IS NULL AND @original_ofr_Schedule IS NULL)) AND [ofr_Requirements] = @original_ofr_Requirements AND [ofr_Tasks] = @original_ofr_Tasks AND [ofr_ContactName] = @original_ofr_ContactName AND [ofr_ContactPosition] = @original_ofr_ContactPosition AND [ofr_ContactExt] = @original_ofr_ContactExt AND (([ofr_ContactOtherPhone] = @original_ofr_ContactOtherPhone) OR ([ofr_ContactOtherPhone] IS NULL AND @original_ofr_ContactOtherPhone IS NULL)) AND (([ofr_ContactFax] = @original_ofr_ContactFax) OR ([ofr_ContactFax] IS NULL AND @original_ofr_ContactFax IS NULL)) AND [ofr_CompanyPhysicalAddress] = @original_ofr_CompanyPhysicalAddress AND (([ofr_CompanyPostalAddress] = @original_ofr_CompanyPostalAddress) OR ([ofr_CompanyPostalAddress] IS NULL AND @original_ofr_CompanyPostalAddress IS NULL)) AND (([ofr_Comments] = @original_ofr_Comments) OR ([ofr_Comments] IS NULL AND @original_ofr_Comments IS NULL)) AND [ofr_CompanyEmail] = @original_ofr_CompanyEmail AND [ofr_CompanyWebPage] = @original_ofr_CompanyWebPage">
                        <DeleteParameters>
                            <asp:Parameter Name="original_oferta_id" Type="Object" />
                            <asp:Parameter Name="original_ofr_CompanyName" Type="String" />
                            <asp:Parameter Name="original_ofr_Salary" Type="String" />
                            <asp:Parameter Name="original_ofr_Extracurricular" Type="String" />
                            <asp:Parameter Name="original_ofr_OtherBenefits" Type="String" />
                            <asp:Parameter Name="original_ofr_Schedule" Type="String" />
                            <asp:Parameter Name="original_ofr_Requirements" Type="String" />
                            <asp:Parameter Name="original_ofr_Tasks" Type="String" />
                            <asp:Parameter Name="original_ofr_ContactName" Type="String" />
                            <asp:Parameter Name="original_ofr_ContactPosition" Type="String" />
                            <asp:Parameter Name="original_ofr_ContactExt" Type="String" />
                            <asp:Parameter Name="original_ofr_ContactOtherPhone" Type="String" />
                            <asp:Parameter Name="original_ofr_ContactFax" Type="String" />
                            <asp:Parameter Name="original_ofr_CompanyPhysicalAddress" Type="String" />
                            <asp:Parameter Name="original_ofr_CompanyPostalAddress" Type="String" />
                            <asp:Parameter Name="original_ofr_Comments" Type="String" />
                            <asp:Parameter Name="original_ofr_CompanyEmail" Type="String" />
                            <asp:Parameter Name="original_ofr_CompanyWebPage" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="oferta_id" Type="Object" />
                            <asp:Parameter Name="ofr_CompanyName" Type="String" />
                            <asp:Parameter Name="ofr_Salary" Type="String" />
                            <asp:Parameter Name="ofr_Extracurricular" Type="String" />
                            <asp:Parameter Name="ofr_OtherBenefits" Type="String" />
                            <asp:Parameter Name="ofr_Schedule" Type="String" />
                            <asp:Parameter Name="ofr_Requirements" Type="String" />
                            <asp:Parameter Name="ofr_Tasks" Type="String" />
                            <asp:Parameter Name="ofr_ContactName" Type="String" />
                            <asp:Parameter Name="ofr_ContactPosition" Type="String" />
                            <asp:Parameter Name="ofr_ContactExt" Type="String" />
                            <asp:Parameter Name="ofr_ContactOtherPhone" Type="String" />
                            <asp:Parameter Name="ofr_ContactFax" Type="String" />
                            <asp:Parameter Name="ofr_CompanyPhysicalAddress" Type="String" />
                            <asp:Parameter Name="ofr_CompanyPostalAddress" Type="String" />
                            <asp:Parameter Name="ofr_Comments" Type="String" />
                            <asp:Parameter Name="ofr_CompanyEmail" Type="String" />
                            <asp:Parameter Name="ofr_CompanyWebPage" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ofr_CompanyName" Type="String" />
                            <asp:Parameter Name="ofr_Salary" Type="String" />
                            <asp:Parameter Name="ofr_Extracurricular" Type="String" />
                            <asp:Parameter Name="ofr_OtherBenefits" Type="String" />
                            <asp:Parameter Name="ofr_Schedule" Type="String" />
                            <asp:Parameter Name="ofr_Requirements" Type="String" />
                            <asp:Parameter Name="ofr_Tasks" Type="String" />
                            <asp:Parameter Name="ofr_ContactName" Type="String" />
                            <asp:Parameter Name="ofr_ContactPosition" Type="String" />
                            <asp:Parameter Name="ofr_ContactExt" Type="String" />
                            <asp:Parameter Name="ofr_ContactOtherPhone" Type="String" />
                            <asp:Parameter Name="ofr_ContactFax" Type="String" />
                            <asp:Parameter Name="ofr_CompanyPhysicalAddress" Type="String" />
                            <asp:Parameter Name="ofr_CompanyPostalAddress" Type="String" />
                            <asp:Parameter Name="ofr_Comments" Type="String" />
                            <asp:Parameter Name="ofr_CompanyEmail" Type="String" />
                            <asp:Parameter Name="ofr_CompanyWebPage" Type="String" />
                            <asp:Parameter Name="original_oferta_id" Type="Object" />
                            <asp:Parameter Name="original_ofr_CompanyName" Type="String" />
                            <asp:Parameter Name="original_ofr_Salary" Type="String" />
                            <asp:Parameter Name="original_ofr_Extracurricular" Type="String" />
                            <asp:Parameter Name="original_ofr_OtherBenefits" Type="String" />
                            <asp:Parameter Name="original_ofr_Schedule" Type="String" />
                            <asp:Parameter Name="original_ofr_Requirements" Type="String" />
                            <asp:Parameter Name="original_ofr_Tasks" Type="String" />
                            <asp:Parameter Name="original_ofr_ContactName" Type="String" />
                            <asp:Parameter Name="original_ofr_ContactPosition" Type="String" />
                            <asp:Parameter Name="original_ofr_ContactExt" Type="String" />
                            <asp:Parameter Name="original_ofr_ContactOtherPhone" Type="String" />
                            <asp:Parameter Name="original_ofr_ContactFax" Type="String" />
                            <asp:Parameter Name="original_ofr_CompanyPhysicalAddress" Type="String" />
                            <asp:Parameter Name="original_ofr_CompanyPostalAddress" Type="String" />
                            <asp:Parameter Name="original_ofr_Comments" Type="String" />
                            <asp:Parameter Name="original_ofr_CompanyEmail" Type="String" />
                            <asp:Parameter Name="original_ofr_CompanyWebPage" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </form>
        </div>
    </div>
</asp:Content>
