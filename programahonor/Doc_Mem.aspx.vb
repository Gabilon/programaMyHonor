Imports System.Data.SqlClient

Public Class Doc_Mem
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try

            Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
            Dim cnDB As SqlConnection = New SqlConnection(cadena)
            Dim command As New SqlCommand() 'instanciamiento de la conexion a la BD
            command.Connection = cnDB 'Cocatenar cadena de conexion de la base de datos a la instancia
            command.CommandType = CommandType.StoredProcedure 'Inidcar al command que debera emplear un Store Procedure
            command.CommandText = "LeerDocentes" 'Asignacion del StoreProcedure a emplear
            command.CommandText = "LeerComites" 'Asignacion del StoreProcedure a emplear 

            'Lectura de datos de docentes
            Try
                cnDB.Open()
                Dim reader As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD (Docentes)
                Dim reader2 As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD (Comités)
                
                While reader.Read()

                    Asedoc_nombre.Text = reader.GetString(0)
                    Asedoc_Titulo.Text = reader.GetString(1)
                    Asedoc_Departamento.Text = reader.GetString(2)
                    Asedoc_Email.Text = reader.GetString(3)
                    Asedoc_Descripcion.Text = reader.GetString(4)
                    Asedoc_Status.Text = reader.GetString(5)

                    'lee proximo docente
                    reader.Read()
                    Asedoc_nombre1.Text = reader.GetString(0)
                    Asedoc_Titulo1.Text = reader.GetString(1)
                    Asedoc_Departamento1.Text = reader.GetString(2)
                    Asedoc_Email1.Text = reader.GetString(3)
                    Asedoc_Descripcion1.Text = reader.GetString(4)
                    Asedoc_Status1.Text = reader.GetString(5)

                    'lee data de proximo docente
                    reader.Read()
                    Asedoc_nombre2.Text = reader.GetString(0)
                    Asedoc_Titulo2.Text = reader.GetString(1)
                    Asedoc_Departamento2.Text = reader.GetString(2)
                    Asedoc_Email2.Text = reader.GetString(3)
                    Asedoc_Descripcion2.Text = reader.GetString(4)
                    Asedoc_Status2.Text = reader.GetString(5)

                    'lee data de los nombres comités
                    reader2.Read()
                    Comite_nombre1.Text = reader2.GetString(0)
                    Comite_nombre2.Text = reader2.GetString(1)
                    Comite_nombre3.Text = reader2.GetString(2)
                    Comite_nombre4.Text = reader2.GetString(3)
                    Comite_nombre5.Text = reader2.GetString(4)

                    'lee data de los nombre de los presidentes
                    reader2.Read()
                    Presidente_nombre1.Text = reader2.GetString(0)
                    Presidente_nombre2.Text = reader2.GetString(1)
                    Presidente_nombre3.Text = reader2.GetString(2)
                    Presidente_nombre4.Text = reader2.GetString(3)
                    Presidente_nombre5.Text = reader2.GetString(4)

                    'lee data de los nombre de los secretarios
                    reader2.Read()
                    Secretario_nombre1.Text = reader2.GetString(0)
                    Secretario_nombre2.Text = reader2.GetString(1)
                    Secretario_nombre3.Text = reader2.GetString(2)
                    Secretario_nombre4.Text = reader2.GetString(3)
                    Secretario_nombre5.Text = reader2.GetString(4)

                    'lee data de los nombre de los tesoreros
                    reader2.Read()
                    Tesorero_nombre1.Text = reader2.GetString(0)
                    Tesorero_nombre2.Text = reader2.GetString(1)
                    Tesorero_nombre3.Text = reader2.GetString(2)
                    Tesorero_nombre4.Text = reader2.GetString(3)
                    Tesorero_nombre5.Text = reader2.GetString(4)
                   
                End While

                reader.Close()
                cnDB.Close()

            Catch ex As Exception
                ' Response.Write("<script>alert('Aun no Ha solicitado membresia en el Programa de Honor UPRB'); </script>")
            End Try
        Catch ex As Exception
            Response.Write("<script>alert('Stephanie no es buena'); </script>")

        End Try
    End Sub

End Class