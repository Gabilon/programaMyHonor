﻿Imports System.Net.Mail

Public Class Contacto_estu
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSometer_Click(sender As Object, e As EventArgs) Handles btnSometer.Click
        If Page.IsValid Then
            lblResult.Text = "Correcto."
            lblResult.ForeColor = Drawing.Color.Green

            Try
                Dim Smtp_Server As New SmtpClient
                Dim e_mail As New MailMessage()
                'Smtp_Server.UseDefaultCredentials = True
                Smtp_Server.Credentials = New Net.NetworkCredential("grupogerenciaccg@gmail.com", "gerencia02")
                Smtp_Server.Port = 587
                Smtp_Server.EnableSsl = True
                Smtp_Server.Host = "smtp.gmail.com"

                e_mail = New MailMessage()
                e_mail.From = New MailAddress(Contac_email.Text)
                e_mail.To.Add(New MailAddress("grupogerenciaccg@gmail.com"))
                e_mail.Subject = "Mensaje de Contacto Programa de Honor UPRB"
                e_mail.IsBodyHtml = False
                e_mail.Body = "Nombre: " & Contac_nombre.Text & vbNewLine & "Email: " & Contac_email.Text & vbNewLine & "Mensaje: " & Contac_mensaje.Text
                Smtp_Server.Send(e_mail)

                Response.Write("<script>alert('Email Enviado Satisfactoriamente'); </script>")

            Catch ex As Exception
                Response.Write("<script>alert('Email no Enviado'); </script>")
            End Try

        Else
            lblResult.Text = "El código ingresado esta incorrecto. Intente de nuevo."
            lblResult.ForeColor = Drawing.Color.Red
            '<!--Hay que hacer que vuelva a entrar a la pregunta-->
        End If
    End Sub
End Class