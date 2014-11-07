<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="prueba.aspx.vb" Inherits="programahonor.prueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <title></title>
    <script src="Scripts/jquery-2.1.1.min.js"></script>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>

</head>

<body>
    <form runat="server">
    <asp:Panel ID="pnlModal" runat="server" role="dialog" CssClass="modal fade">
    <asp:Panel ID="pnlInner" runat="server" CssClass="modal-dialog" >
        <asp:Panel ID="pnlContent" CssClass="modal-content" runat="server">
            <asp:Panel runat="server" class="modal-header">
                <button type="button" class="close" data-dismiss="modal">
                    <span aria-hidden="true">&times;</span><span class="sr-only">Close</span>
                </button>
                <h4 class="modal-title">Bootstrap Modal Dialog in ASP.NET</h4>
            </asp:Panel>
            <asp:panel runat="server" class="modal-body">
               <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et 
                    dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip 
                    ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu 
                    fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt 
                    mollit anim id est laborum.
               </p>
             </asp:panel>
            <asp:panel runat="server" class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </asp:panel>
        </asp:Panel>
    </asp:Panel>
</asp:Panel>
    
        <div style="margin-left: 1000px; margin-top:20%">
            <asp:Button ID="btnShowModal" runat="server" Text="Show Modal" CssClass="btn btn-primary btn-info" data-target="#pnlModal" data-toggle="modal" OnClientClick="javascript:return false;"/>
        </div>
        </form>
</body>

</html>
