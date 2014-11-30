Imports System.Net
Imports System.Net.Mail
Imports System.Data.SqlClient

Module Emails

    'Envio de email de notificación al estudiante sobre su confirmación de registro de solicitud
    Public Function emailNotiAplicacionEstudiante(stumail As String) As Boolean
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("grupogerenciaccg@gmail.com")
            e_mail.To.Add(stumail)
            e_mail.Subject = "Confirmación Registro Solicitud Programa de Honor UPRB"
            e_mail.IsBodyHtml = False
            e_mail.Body = "Usted se ha registrado correctamente , Favor no responder a este mensaje, es generado automaticamente" +
                            " por el sistema, cualquier duda o inquietud escribir a programahonor@upr.edu o dirigirse a nuestaras" +
                            " instalaciones en la UPRB.  Siguenos por Facebook."

            Smtp_Server.Send(e_mail)

            Return True

        Catch ex As Exception
            Return False
        End Try
    End Function

    'Envio de email a los evaluadores con el link a la evaluación de los estudiantes
    Public Function emailNotiAplicacionEvaluador(Username As String) As Boolean

        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand() 'instanciamiento de la conexion a la BD
        command.Connection = cnDB 'Cocatenar cadena de conexion de la base de datos a la instancia
        command.CommandType = CommandType.StoredProcedure 'Inidcar al command que debera emplear un Store Procedure
        command.CommandText = "SelectEmailEvaluador" 'Asignacion del StoreProcedure a emplear
        command.Parameters.AddWithValue("@StudentNumber", Username) 'parametro para verificar registro del usuario autenticado

        Dim eval_Email As String = " "
        Dim hashLink As String = " "

        'Lectura de datos de estudiante perteneciente al programa de honor
        Try
            cnDB.Open()
            Dim reader As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD
            Dim contar As Integer = command.Parameters.Count
            While (reader.Read())

                Dim Smtp_Server As New SmtpClient
                Dim e_mail1 As New MailMessage()

                eval_Email = reader.GetString(0)
                hashLink = SimpleHash.ComputeHash(Username, "SHA1", Nothing)
                Dim link As String = "<a href=""http://localhost:57474/Evaluacion.aspx?" & hashLink & """>Link</a>"

                enviarEmailsDocentes(Username, eval_Email, link)

            End While
            cnDB.Close()

            Return True

        Catch ex As Exception
            Return False
        End Try

    End Function

    'Envio de email de notificación al programa de honor sobre la confirmacion de registro de solicitud de un estudiante
    Public Function emailNotiAplicacionProgHonor(stumail As String, StudentName As String, Username As String) As Boolean
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("grupogerenciaccg@gmail.com")
            e_mail.To.Add("grupogerenciaccg@gmail.com")
            e_mail.Subject = "Confirmación Registro Solicitud Programa de Honor UPRB"
            e_mail.IsBodyHtml = False
            e_mail.Body = "Confirmación Registro Solicitud Programa de Honor UPRB" &
                Environment.NewLine & "Nombre: " & StudentName &
                 Environment.NewLine & "Número de Estudiante: " + Username

            Smtp_Server.Send(e_mail)

            Return True

        Catch ex As Exception
            Return False
        End Try
    End Function

    'Envio de email al estudiante sobre una confirmacióon de evaluación
    Public Function emailEvalEstudiante(stumail As String) As Boolean
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("grupogerenciaccg@gmail.com")
            e_mail.To.Add(stumail)
            e_mail.Subject = "Confirmación de Evaluación Programa de Honor UPRB"
            e_mail.IsBodyHtml = False
            e_mail.Body = "Una de sus evaluaciones ya fue efectuada."

            Smtp_Server.Send(e_mail)

            Return True

        Catch ex As Exception
            Return False
        End Try
    End Function

    'Envio de email al programa de honor sobre una confirmación de evaluación
    Public Function emailEvalProgHonor() As Boolean
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("grupogerenciaccg@gmail.com")
            e_mail.To.Add("grupogerenciaccg@gmail.com")
            e_mail.Subject = "Confirmación de Evaluación Programa de Honor UPRB"
            e_mail.IsBodyHtml = False
            e_mail.Body = "Una evaluación ha sido sometida."

            Smtp_Server.Send(e_mail)

            Return True

        Catch ex As Exception
            Return False
        End Try
    End Function

    'Envia emails de los docentes
    Public Function enviarEmailsDocentes(Username As String, eval_Email As String, link As String)
        Dim Smtp_Server As New SmtpClient
        Dim e_mail1 As New MailMessage()

        Try
            e_mail1.From = New MailAddress("grupogerenciaccg@gmail.com")
            e_mail1.To.Add(eval_Email)
            e_mail1.Subject = "Evaluacion de Estudiante de Progrma de Honor"
            e_mail1.IsBodyHtml = True
            e_mail1.Body = "Test: " + link

            Smtp_Server.Send(e_mail1)

            Return Nothing

        Catch ex As Exception
            Return Nothing
        End Try
    End Function

End Module
