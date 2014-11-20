Imports System.Data.SqlClient

Public Class LogIn
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btn_Ingresar_Click(sender As Object, e As EventArgs) Handles btn_Ingresar.Click
        Dim vuser As String = "a"


        Try
            Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
            Dim cnDB As SqlConnection = New SqlConnection(cadena)
            Dim command As New SqlCommand() 'instanciamiento de la conexion a la BD
            command.Connection = cnDB 'Cocatenar cadena de conexion de la base de datos a la instancia
            command.CommandType = CommandType.StoredProcedure 'Inidcar al command que debera emplear un Store Procedure
            command.CommandText = "SearchStudent" 'Asignacion del StoreProcedure a emplear
            command.Parameters.AddWithValue("@StudentNumber", Usuario.Text) 'parametro para verificar registro del usuario autenticado

            Try 'Lectura de datos de estudiante perteneciente al programa de honor

                cnDB.Open()
                Dim reader As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD
                While (reader.Read())
                    vuser = reader.GetString(1)
                End While
                cnDB.Close()
                Session.Add("usuario", Usuario.Text)
                Response.Redirect("Solicitud.aspx")
            Catch ex As Exception
                Response.Write("<script>alert('Imposible Atender su solicitud, De persistir el problema comuniquese el Programa de Honor UPRB'); </script>")
            End Try
        Catch ex As Exception

            Response.Redirect("Aplicar.aspx")
        End Try

    End Sub

End Class