Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Public Class Docentes
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim Username As String = Session("usuario").ToString()

        Try 'Verificacion de usuario autenticado para saber si pertenece al progrma

            Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
            Dim cnDB As SqlConnection = New SqlConnection(cadena)
            Dim command As New SqlCommand() 'instanciamiento de la conexion a la BD
            command.Connection = cnDB 'Cocatenar cadena de conexion de la base de datos a la instancia
            command.CommandType = CommandType.StoredProcedure 'Inidcar al command que debera emplear un Store Procedure
            command.CommandText = "LeerInfoRegEstu" 'Asignacion del StoreProcedure a emplear
            command.Parameters.AddWithValue("@StudentNumber", Username) 'parametro para verificar registro del usuario autenticado

            Try 'Lectura de datos de estudiante perteneciente al programa de honor

                cnDB.Open()
                Dim reader As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD
                While (reader.Read())

                    Asedoc_nombre.Text = reader.GetString(0)
                    Asedoc_Titulo.Text = reader.GetString(1)
                    Asedoc_Departamento.Text = reader.GetString(2)
                    Asedoc_Email.Text = reader.GetString(3)
                    Asedoc_Descripcion.Text = reader.GetString(4)
                    Asedoc_Status.Text = reader.GetString(5)

                    btnGuardar.Visible = True

                End While
                cnDB.Close()

            Catch ex As Exception
                Response.Write("<script>alert('Imposible Atender su solicitud, De persistir el problema comuniquese el Programa de Honor UPRB'); </script>")
            End Try
        Catch ex As Exception

            Response.Redirect("Docentes.aspx")
        End Try
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