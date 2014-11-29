Imports System.Net
Imports System.Net.Mail

Module Emails

    Public Function emailNotificacionEstudiante() As Boolean
        Try 'Envio de email de notificacion al estudiante sobre su evaluación
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("grupogerenciaccg@gmail.com")
            e_mail.To.Add("emanuel.correa216@gmail.com") 'Aqui va el email del estudiante
            e_mail.Subject = "Confirmacion Registro Solicitud Programa de Honor UPRB"
            e_mail.IsBodyHtml = False
            e_mail.Body = "Una evaluación ha sido sometida."

            Smtp_Server.Send(e_mail)

            Return True

        Catch ex As Exception
            Return False
        End Try
    End Function

    Public Function emailNotiAplicacionEstudiante() As Boolean
        Try 'Envio de email de notificacion al estudiante sobre su evaluación
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()

            e_mail = New MailMessage()
            e_mail.From = New MailAddress("grupogerenciaccg@gmail.com")
            e_mail.To.Add("grupogerenciaccg@gmail.com") 'Aqui va el email del estudiante
            e_mail.Subject = "Confirmacion Registro Solicitud Programa de Honor UPRB"
            e_mail.IsBodyHtml = False
            e_mail.Body = "Una evaluación ha sido sometida."

            Smtp_Server.Send(e_mail)

            Return True

        Catch ex As Exception
            Return False
        End Try
    End Function

End Module
