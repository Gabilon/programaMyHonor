Imports System.Data.SqlClient

Public Class Doc_Mem
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            'Dim Username As String = Session("usuario").ToString()

            Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
            Dim cnDB As SqlConnection = New SqlConnection(cadena)
            Dim command As New SqlCommand() 'instanciamiento de la conexion a la BD
            command.Connection = cnDB 'Cocatenar cadena de conexion de la base de datos a la instancia
            command.CommandType = CommandType.StoredProcedure 'Inidcar al command que debera emplear un Store Procedure
            command.CommandText = "LeerDocentes" 'Asignacion del StoreProcedure a emplear


            ''Lectura de datos de estudiante perteneciente al programa de honor
            Dim number As Integer
            Try
                cnDB.Open()
                Dim reader As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD
                Dim contar As Integer = command.Parameters.Count
                While (reader.Read())
                    For number = 0 To 2

                        If (number > 2) Then ''prueba de commit
                            Exit For
                        End If


                        If (number = "0") Then
                            Asedoc_nombre.Text = reader.GetString(1)
                            Asedoc_Titulo.Text = reader.GetString(2)
                            Asedoc_Departamento.Text = reader.GetString(3)
                            Asedoc_email.Text = reader.GetString(4)
                            Asedoc_Descripcion.Text = reader.GetString(5)
                            Asedoc_Status.Text = reader.GetString(6)
                        End If


                        If (number = "1") Then
                            Asedoc_nombre.Text = reader.GetString(1)
                            Asedoc_Titulo.Text = reader.GetString(2)
                            Asedoc_Departamento.Text = reader.GetString(3)
                            Asedoc_email.Text = reader.GetString(4)
                            Asedoc_Descripcion.Text = reader.GetString(5)
                            Asedoc_Status.Text = reader.GetString(6)
                        End If

                        If (number = "2") Then
                            Asedoc_nombre.Text = reader.GetString(1)
                            Asedoc_Titulo.Text = reader.GetString(2)
                            Asedoc_Departamento.Text = reader.GetString(3)
                            Asedoc_email.Text = reader.GetString(4)
                            Asedoc_Descripcion.Text = reader.GetString(5)
                            Asedoc_Status.Text = reader.GetString(6)
                        End If



                    Next number

                    'btnActualizarEstudiante.Visible = True
                    'btnGuardarEstudiante.Visible = False

                End While
                cnDB.Close()
            Catch ex As Exception
                ' Response.Write("<script>alert('Aun no Ha solicitado membresia en el Programa de Honor UPRB'); </script>")
            End Try
        Catch ex As Exception
            Response.Write("<script>alert('Stephanie no es una buena persona'); </script>")

        End Try
    End Sub

End Class