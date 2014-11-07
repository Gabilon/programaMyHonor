Public Class Ingresar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_iniciarsesion_Click(sender As Object, e As EventArgs) Handles btn_iniciarsesion.Click
        Try
            Response.Redirect("Aplicar.aspx")
            'Response.Redirect(Request.RawUrl)
        Catch ex As Exception
            MsgBox("No se puede ir a aplicar")
        End Try

        'Try
        '    Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        '    Dim cnDB As SqlConnection = New SqlConnection(cadena)
        '    Dim command As New SqlCommand("select * from logueo where user = )"
        '    Try
        '        cnDB.Open()
        '        Dim reader As SqlDataReader = command.ExecuteReader()
        '        If (user.Text = reader.GetString(0)) && (contrasena.Text = reader.GetString(1)) Then
        '           Response.Redirect("Aplicar.aspx")
        '        End If
        'cnDB.Close()
        ''MsgBox("usuario registrado")

        '    Catch ex As Exception
        '    MsgBox("Don't Open Connection")
        'End Try
        'Catch ex As Exception

        'End Try
    End Sub
End Class