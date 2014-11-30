Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Public Class Solicitud
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        btnActualizarSolicitud.Visible = True

        Dim Username As String = Session("usuario").ToString()

        Try 'Verificacion de usuario autenticado para saber si pertenece al progrma

            Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
            Dim cnDB As SqlConnection = New SqlConnection(cadena)
            Dim command As New SqlCommand() 'instanciamiento de la conexion a la BD
            command.Connection = cnDB 'Cocatenar cadena de conexion de la base de datos a la instancia
            command.CommandType = CommandType.StoredProcedure 'Inidcar al command que debera emplear un Store Procedure
            command.CommandText = "LeerSolicitud" 'Asignacion del StoreProcedure a emplear
            command.Parameters.AddWithValue("@StudentNumber", Username) 'parametro para verificar registro del usuario autenticado

            Try 'Lectura de datos de estudiante perteneciente al programa de honor

                cnDB.Open()
                Dim reader As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD
                While (reader.Read())

                    StudentName.ReadOnly = True
                    StudentName.Text = reader.GetString(0)
                    StudentNumber.ReadOnly = True
                    StudentNumber.Text = reader.GetString(1)
                    Stu_Gender.Text = reader.GetString(2)
                    Stu_Email.ReadOnly = True
                    Stu_Email.Text = reader.GetString(3)
                    Stu_Phone.ReadOnly = True
                    Stu_Phone.Text = reader.GetString(4)
                    Stu_Direccion.ReadOnly = True
                    Stu_Direccion.Text = reader.GetString(5)
                    Stu_Postal.ReadOnly = True
                    Stu_Postal.Text = reader.GetString(6)
                    Stu_Department.Text = reader.GetString(7)
                    Stu_Year.Text = reader.GetString(8)
                    Stu_Igs.Text = reader.GetString(9)

                End While
                cnDB.Close()

            Catch ex As Exception
                Response.Write("<script>alert('Imposible Atender su solicitud de internado, De persistir el problema comuniquese el Programa de Honor UPRB'); </script>")
            End Try
        Catch ex As Exception

            Response.Redirect("Solicitud.aspx")
        End Try

    End Sub

    Protected Sub btnGuardarSolicitud_Click(sender As Object, e As EventArgs) Handles btnGuardarSolicitud.Click
        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddSolicitud", cnDB)
        Dim solicitud_id As String
        solicitud_id = System.Guid.NewGuid().ToString()


        'Para validar el fileUpload
        'Dim validFileTypes As String() = {"pdf", "doc"}
        'Dim ext As String = System.IO.Path.GetExtension(Sol_Resume.PostedFile.FileName)
        'Dim isValidFile As Boolean = False

        command.CommandType = CommandType.StoredProcedure

        command.Parameters.Add("@solicitud_id", SqlDbType.VarChar).Value = solicitud_id

        command.Parameters.Add("@Sol_Specialty", SqlDbType.VarChar).Value = Sol_Specialty.Text
        command.Parameters.Add("@Sol_GraduationDate", SqlDbType.VarChar).Value = Sol_GraduationDate.Text
        command.Parameters.Add("@Sol_Transportation", SqlDbType.VarChar).Value = Sol_Transportation.Text
        command.Parameters.Add("@Sol_License", SqlDbType.VarChar).Value = Sol_License.Text
        command.Parameters.Add("@Sol_English", SqlDbType.VarChar).Value = Sol_English.Text
        command.Parameters.Add("@Sol_Interest", SqlDbType.VarChar).Value = Sol_Interest.Text
        command.Parameters.Add("@Sol_Availability", SqlDbType.VarChar).Value = Sol_Availability.Text

        'Para validar el fileUpload
        'For i As Integer = 0 To validFileTypes.Length - 1
        '    If ext = "." & validFileTypes(i) Then
        '        isValidFile = True
        '        Exit For
        '    End If
        'Next
        'If Not isValidFile Then
        '    Label1.ForeColor = System.Drawing.Color.Red
        '    Label1.Text = "Invalid File. Please upload a File with extension " & _
        '                  String.Join(",", validFileTypes)
        'Else
        '    Label1.ForeColor = System.Drawing.Color.Green
        '    Label1.Text = "File uploaded successfully."
        'End If
        command.Parameters.Add("@Sol_Resume", SqlDbType.VarChar).Value = Sol_Resume.FileName

        command.Parameters.Add("@fecha_creacion", SqlDbType.Date).Value = Date.Today().ToString("D")
        command.Parameters.Add("@usuario_creacion", SqlDbType.VarChar).Value = Session("usuario").ToString()
        'command.Parameters.Add("@fecha_actualizo", SqlDbType.Date).Value = fecha_actualizo.Date
        'command.Parameters.Add("@usuario_actualizo", SqlDbType.VarChar).Value = usuario_actualizo.Text

        Try
            cnDB.Open()
            command.ExecuteNonQuery()
            cnDB.Close()

            Response.Write("<script>alert('Información Guardada'); </script>")

        Catch ex As Exception

            Response.Write("<script>alert('Información No Guardada'); </script>")

        End Try

        ' Response.Redirect("~/")

    End Sub

     
    
End Class