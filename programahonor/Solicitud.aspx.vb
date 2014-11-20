'Imports System.Data.SqlClient
'Imports System.Configuration
'Imports System.Net
'Imports System.Net.Mail
Public Class Solicitud
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        'btnActualizarSolicitud.Visible = True

        'Dim Username As String = Session("usuario").ToString()

        'Try 'Verificacion de usuario autenticado para saber si pertenece al progrma

        '    Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        '    Dim cnDB As SqlConnection = New SqlConnection(cadena)
        '    Dim command As New SqlCommand() 'instanciamiento de la conexion a la BD
        '    command.Connection = cnDB 'Cocatenar cadena de conexion de la base de datos a la instancia
        '    command.CommandType = CommandType.StoredProcedure 'Inidcar al command que debera emplear un Store Procedure
        '    command.CommandText = "SearchStudent" 'Asignacion del StoreProcedure a emplear
        '    command.Parameters.AddWithValue("@StudentNumber", Username) 'parametro para verificar registro del usuario autenticado

        '    Try 'Lectura de datos de estudiante perteneciente al programa de honor

        '        cnDB.Open()
        '        Dim reader As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD
        '        While (reader.Read())

        '            StudentName.ReadOnly = True
        '            StudentName.Text = reader.GetString(0)
        '            StudentNumber.ReadOnly = True
        '            StudentNumber.Text = reader.GetString(1)
        '            Stu_Gender.Text = reader.GetString(2)
        '            Stu_Email.ReadOnly = True
        '            Stu_Email.Text = reader.GetString(4)
        '            Stu_Phone.ReadOnly = True
        '            Stu_Phone.Text = reader.GetString(5)
        '            Stu_Direccion.ReadOnly = True
        '            Stu_Direccion.Text = reader.GetString(6)
        '            Stu_Postal.ReadOnly = True
        '            Stu_Postal.Text = reader.GetString(7)
        '            Stu_Department.Text = reader.GetString(8)
        '            Stu_Year.Text = reader.GetString(9)
        '            Stu_Igs.Text = reader.GetString(10)

        '        End While
        '        cnDB.Close()

        '    Catch ex As Exception
        '        Response.Write("<script>alert('Imposible Atender su solicitud, De persistir el problema comuniquese el Programa de Honor UPRB'); </script>")
        '    End Try
        'Catch ex As Exception

        '    Response.Redirect("Solicitud.aspx")
        'End Try

    End Sub

    'Protected Sub btnGuardarSolicitud_Click(sender As Object, e As EventArgs) Handles btnGuardarSolicitud.Click
    'Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
    'Dim cnDB As SqlConnection = New SqlConnection(cadena)
    'Dim command As New SqlCommand("AddSolcitud", cnDB)
    'command.CommandType = CommandType.StoredProcedure

    'command.Parameters.Add("@solicitud_id", SqlDbType.UniqueIdentifier).Value = ""

    'command.Parameters.Add("@Sol_Specialty", SqlDbType.VarChar).Value = Sol_Specialty.Text
    'command.Parameters.Add("@Sol_GraduationDate", SqlDbType.VarChar).Value = Sol_GraduationDate.Text
    'command.Parameters.Add("@Sol_Transportation", SqlDbType.VarChar).Value = Sol_Transportation.Text
    'command.Parameters.Add("@Sol_License", SqlDbType.VarChar).Value = Sol_License.Text
    'command.Parameters.Add("@Sol_English", SqlDbType.VarChar).Value = Sol_English.Text
    'command.Parameters.Add("@Sol_Interest", SqlDbType.VarChar).Value = Sol_Interest.Text
    'command.Parameters.Add("@Sol_Availability", SqlDbType.VarChar).Value = Sol_Availability.Text

    'command.Parameters.Add("@Sol_Resume", SqlDbType.VarChar).Value = Sol_Resume.FileName

    'command.Parameters.Add("@fecha_creacion", SqlDbType.Date).Value = Date.Today().ToString("D")
    ''command.Parameters.Add("@usuario_creacion", SqlDbType.VarChar).Value = Session("usuario").ToString()
    ''command.Parameters.Add("@fecha_actualizo", SqlDbType.Date).Value = fecha_actualizo.Date
    ''command.Parameters.Add("@usuario_actualizo", SqlDbType.VarChar).Value = usuario_actualizo.Text
    'End Sub
End Class