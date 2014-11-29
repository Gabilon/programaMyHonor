Imports System.Net
Imports System.Net.Mail

Module Emails

    Public Function emailNotiAplicacionEstudiante(stumail As String) As Boolean
        Try 'Envio de email de notificacion al estudiante sobre su evaluación
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("grupogerenciaccg@gmail.com")
            e_mail.To.Add("emanuel.correa216@gmail.com") 'Aqui va el email del estudiante, stumail
            e_mail.Subject = "Confirmacion Registro Solicitud Programa de Honor UPRB"
            e_mail.IsBodyHtml = False
            e_mail.Body = "Una evaluación ha sido sometida."

            Smtp_Server.Send(e_mail)

            Return True

        Catch ex As Exception
            Return False
        End Try
    End Function

    Public Function emailNotiAplicacionEvaluador(stumail As String) As Boolean
        Dim numEvaluador As Integer

        Try
            For numEvaluador = 1 To 3
                Dim Smtp_Server As New SmtpClient
                Dim e_mail As New MailMessage()
                Dim hashLink As String = SimpleHash.ComputeHash("IDest", "SHA1", Nothing)
                'Guardar el hashLink en la base de datos

                'Dim link As String = "<a href=""https://10:0.41.51.8080/Evaluacion.aspx?" & hashLink & """>Link</a>"
                Dim link As String = "<a href=""http://localhost:57474/Evaluacion.aspx?" & hashLink & """>Link</a>"

                e_mail.From = New MailAddress("grupogerenciaccg@gmail.com")
                e_mail.To.Add("emanuel.correa216@gmail.com") 'Aqui va el email de los evaluadores
                e_mail.Subject = "Evalua a este estudiante tal...haz click en el link para evaluarlo"
                e_mail.IsBodyHtml = True
                e_mail.Body = "Test: " + link

                Smtp_Server.Send(e_mail)
            Next

            Return True

        Catch ex As Exception
            Return False
        End Try
    End Function

    Public Function emailNotiProgHonor(stumail As String)
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("grupogerenciaccg@gmail.com")
            e_mail.To.Add("grupogerenciaccg@gmail.com")
            e_mail.Subject = "Confirmacion Registro Solicitud Programa de Honor UPRB" 'Escribir cual fue el estudiante
            e_mail.IsBodyHtml = False
            e_mail.Body = "Una evaluación ha sido sometida."

            Smtp_Server.Send(e_mail)

            Return True

        Catch ex As Exception
            Return False
        End Try
    End Function

    Public Function emailEvalEstudiante(stumail As String)
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("grupogerenciaccg@gmail.com")
            e_mail.To.Add("emanuel.correa216@gmail.com") 'Aqui va el email del estudiante, stumail
            e_mail.Subject = "Un evaluador lo ha evaluado."
            e_mail.IsBodyHtml = False
            e_mail.Body = "Una evaluación ha sido sometida."

            Smtp_Server.Send(e_mail)

            Return True

        Catch ex As Exception
            Return False
        End Try
    End Function

    Public Function emailEvalProgHonor(stumail As String)
        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("grupogerenciaccg@gmail.com")
            e_mail.To.Add("grupogerenciaccg@gmail.com")
            e_mail.Subject = "Un evaluador ha evaluadoal estudiante tal..."
            e_mail.IsBodyHtml = False
            e_mail.Body = "Una evaluación ha sido sometida."

            Smtp_Server.Send(e_mail)

            Return True

        Catch ex As Exception
            Return False
        End Try
    End Function


End Module
