Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Public Class ResultadoEvaluaciones
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddEvaluacion", cnDB)
        command.CommandType = CommandType.StoredProcedure
        Dim evalID As String



        Try 'Lectura de datos de estudiante perteneciente al programa de honor

            cnDB.Open()
            Dim reader As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD
            While (reader.Read())


                Result_NumeroEstudiante.Text = reader.GetString(1)
                

            End While
            cnDB.Close()

        Catch ex As Exception
            Response.Write("<script>alert('Imposible Atender su solicitud, De persistir el problema comuniquese el Programa de Honor UPRB'); </script>")
        End Try
       

          
    End Sub

End Class