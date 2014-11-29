Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Public Class Docentes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs) Handles btnGuardar.Click

        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddAsesoresDocentes", cnDB)
        command.CommandType = CommandType.StoredProcedure

        command.Parameters.Add("@AsesorDocente_id", SqlDbType.VarChar).Value = ""
        command.Parameters.Add("@Asedoc_nombre", SqlDbType.VarChar).Value = Asedoc_nombre.Text
        command.Parameters.Add("@Asedoc_Titulo", SqlDbType.VarChar).Value = Asedoc_Titulo.Text
        command.Parameters.Add("@Asedoc_Departamento", SqlDbType.VarChar).Value = Asedoc_Departamento.Text
        command.Parameters.Add("@Asedoc_Email", SqlDbType.VarChar).Value = Asedoc_Email.Text
        command.Parameters.Add("@Asedoc_Descripcion", SqlDbType.VarChar).Value = Asedoc_Descripcion.Text
        command.Parameters.Add("@Asedoc_Status", SqlDbType.VarChar).Value = Asedoc_Status.Text
        command.Parameters.Add("@fecha_creacion", SqlDbType.Date).Value = Date.Today().ToString("D")
        command.Parameters.Add("@usuario_creacion", SqlDbType.VarChar).Value = "Prueba"
        'command.Parameters.Add("@usuario_creacion", SqlDbType.VarChar).Value = Session("usuario").ToString()

        Try
            cnDB.Open()
            command.ExecuteNonQuery()
            cnDB.Close()

            Response.Write("<script>alert('Información Guardada'); </script>")

        Catch ex As Exception

            Response.Write("<script>alert('Información No Guardada'); </script>")

        End Try
    End Sub
End Class