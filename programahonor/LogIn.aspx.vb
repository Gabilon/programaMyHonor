Public Class LogIn
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_Ingresar_Click(sender As Object, e As EventArgs) Handles btn_Ingresar.Click
        Session.Add("usuario", Usuario.Text)
        Response.Redirect("Aplicar.aspx")
    End Sub
End Class