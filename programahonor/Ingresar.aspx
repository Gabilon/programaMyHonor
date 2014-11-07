<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Ingresar.aspx.vb" Inherits="programahonor.Ingresar" %>

<!DOCTYPE html>
<html lang="en">
  <head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ingreso Programa de Honor UPRB</title>
<%--   <link href="Content/bootstrap.min.css" rel="stylesheet" />
        <link href="Content/stylesheet.css" rel="stylesheet" />--%>


       <script type="text/javascript" src='<%= ResolveUrl("~/Scripts/jquery-2.1.1.min.js")%>'></script>
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script type = "text/javascript">
        function OnClose() {
            if (window.opener != null && !window.opener.closed) {
                window.opener.HideModalDiv();
            }
        }
        window.onunload = OnClose;
</script>
</head>
<body>
    <form runat="server" class="form-horizontal" role="form">
        <div class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                        </button>
                        <h4 class="modal-title">Bienvenido Al programa de Honor UPRB</h4>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="usuario" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                            <div class="col-sm-6">
                                <asp:TextBox ID="codigo" runat="server" class="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-2 col-sm-10">
                                <asp:Button ID="btn_iniciarsesion" runat="server" Text="Ingresar" CssClass="btn" />
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   <%-- <asp:Panel ID="pnlModal" runat="server" role="dialog" CssClass="modal fade">
                    <asp:Panel ID="pnlInner" runat="server" CssClass="modal-dialog">
                        <asp:Panel ID="pnlContent" CssClass="modal-content" runat="server">
                            <asp:Panel runat="server" class="modal-header">
                                <button type="button" class="close" data-dismiss="modal">
                                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                                </button>
                                <h4 class="modal-title">Bienvenido Al programa de Honor UPRB</h4>
                            </asp:Panel>
                            <asp:Panel runat="server" class="modal-body">
                                <div class="form-group">
                                    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                                    <div class="col-sm-6">
                                        <!--input type="email"  id="inputEmail3" placeholder="Email"-->
                                        <asp:TextBox ID="user" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                                    <div class="col-sm-6">
                                        <!--input type="password"  id="inputPassword3" placeholder="Contraseña"-->
                                        <asp:TextBox ID="contrasena" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox">
                                                Recordarme
                                            </label>
                                      </div>
                                    </div>
                                    <br />
                                    <div class="form-group">
                                         <div class="col-sm-offset-2 col-sm-10">
                                            <asp:Button ID="btn_iniciarsesion" runat="server" Text="Ingresar" CssClass="btn" />
                                         </div>
                                    </div>
                                </div>
                            </asp:Panel>
                            <asp:Panel runat="server" class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Cerrar</button>
                            </asp:Panel>
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>--%>
    </form>
</body>
</html>
 