Public Class Contacto
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        If Page.IsValid Then
            lblResult.Text = "Correcto."
            lblResult.ForeColor = Drawing.Color.Green
        Else
            lblResult.Text = "El código ingresado esta incorrecto. Intente de nuevo."
            lblResult.ForeColor = Drawing.Color.Red
        End If

    End Sub
End Class