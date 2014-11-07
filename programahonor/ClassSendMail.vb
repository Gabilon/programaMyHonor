Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail

Public Class ClassSendMail
    Sub EnviarMail_Demo()

        Dim Correo As New MailMessage

        Correo.From = New MailAddress("MiCorreo@Proveedor.com")

        Correo.To.Add(New MailAddress("TuCorreo@Proveedor.com"))

        Correo.Subject = "Motivo del correo"

        Correo.Body = "Detalle y texto que vas ha recibir en Tu Correo"

        Dim Cartero As New SmtpClient("smtp.TuServidor.com")

        Cartero.Credentials = New NetworkCredential("miCuenta@DeCorreo.com", "ClaveDeAcceso")

        Cartero.Send(Correo)

    End Sub
End Class
