﻿Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Public Class Oferta
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       

        'Try 'Verificacion de usuario autenticado para saber si pertenece al progrma

        'Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        'Dim cnDB As SqlConnection = New SqlConnection(cadena)
        ''Dim command As New SqlCommand("select * from Students where StudentNumber = 90997925", cnDB)
        'Dim command As New SqlCommand("select * from Students where StudentNumber = 654789", cnDB)
        ''Dim command As New SqlCommand("SearchStudent", cnDB)

        'Try 'Lectura de datos de estudiante perteneciente al programa de honor
        'cnDB.Open()
        'Dim reader As SqlDataReader = command.ExecuteReader()
        'While (reader.Read())

        'StudentName.Text = reader.GetString(0)
        'StudentNumber.Text = reader.GetString(1)
        'Stu_Gender.Text = reader.GetString(2)
        '            Dim fecha As String = reader.GetString(2)
        '            Stu_Birthday.Text = fecha
        '            Stu_Email.Text = reader.GetString(4)
        '            Stu_Phone.Text = reader.GetString(5)
        '            Stu_Direccion.Text = reader.GetString(6)
        '            Stu_Postal.Text = reader.GetString(7)
        '            Stu_Department.Text = reader.GetString(8)
        '            Stu_Year.Text = reader.GetString(9)
        '            Stu_Igs.Text = reader.GetString(10)
        '            ' Stu_Certificate.FileName = reader.GetString(11)
        '            Stu_Authorization.Text = reader.GetString(12)
        '            Stu_Ensayo.Text = reader.GetString(13)
        'lbl_Status.Visible = True
        'Stu_Status.Visible = True
        'Stu_Status.Text = reader.GetString(16)


        '        End While
        'cnDB.Close()

        'Catch ex As Exception
        '    '    MsgBox("Don't Open Connection")
        'End Try
        'Catch ex As Exception
        '    Response.Redirect("Aplicar.aspx")
        'End Try
    End Sub

    Protected Sub btnGuardarOferta_Click(sender As Object, e As EventArgs) Handles btnGuardarOferta.Click
        'Instanciamiento de la base de datos y Store procedure para insereccion de datos del estudiante que solicita
        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddOferta", cnDB)
        command.CommandType = CommandType.StoredProcedure


        '    command.Parameters.Add("@For_CompanyName", SqlDbType.VarChar).Value = For_CompanyName.Text

        '    command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = StudentNumber.Text
        '    command.Parameters.Add("@Stu_Gender", SqlDbType.VarChar).Value = Stu_Gender.Text
        '    command.Parameters.Add("@Stu_Birthday", SqlDbType.Date).Value = Date.ParseExact(Stu_Birthday.Text.ToString(), "dd/MM/yyyy", System.Globalization.DateTimeFormatInfo.InvariantInfo)
        '    command.Parameters.Add("@Stu_Email", SqlDbType.VarChar).Value = Stu_Email.Text
        '    command.Parameters.Add("@Stu_Phone", SqlDbType.VarChar).Value = Stu_Phone.Text
        '    command.Parameters.Add("@Stu_Direccion", SqlDbType.VarChar).Value = Stu_Direccion.Text
        '    command.Parameters.Add("@Stu_Postal", SqlDbType.VarChar).Value = Stu_Postal.Text
        '    command.Parameters.Add("@Stu_Department", SqlDbType.VarChar).Value = Stu_Department.Text
        '    command.Parameters.Add("@Stu_Year", SqlDbType.VarChar).Value = Stu_Year.Text
        '    command.Parameters.Add("@Stu_Igs", SqlDbType.VarChar).Value = Stu_Igs.Text
        '    command.Parameters.Add("@Stu_Certificate", SqlDbType.VarChar).Value = Stu_Certificate.FileName
        '    command.Parameters.Add("@Stu_Authorization", SqlDbType.VarChar).Value = Stu_Authorization.Text
        '    command.Parameters.Add("@Stu_AplicationDAte", SqlDbType.Date).Value = Date.Today().ToString("D")
        '    command.Parameters.Add("@Stu_Status", SqlDbType.VarChar).Value = "solicitando"

        '    Try
        '        cnDB.Open()
        '        command.ExecuteNonQuery()
        '        cnDB.Close()

        '        Response.Write("<script>alert('Información Guardada'); </script>")

        '    Catch ex As Exception

        '        Response.Write("<script>alert('Informacion No Guardada'); </script>")

        '    End Try

        '    ' Response.Redirect("~/")
    End Sub
End Class