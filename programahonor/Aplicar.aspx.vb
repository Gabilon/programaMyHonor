Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail

Public Class Aplicar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        btnSometer.Enabled = True


        'Try
        '    Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        '    Dim cnDB As SqlConnection = New SqlConnection(cadena)
        '    Dim command As New SqlCommand("select * from Students where StudentNumber = 16929709", cnDB)
        '    'Dim command As New SqlCommand("SearchStudent", cnDB)
        '    'Try
        '    cnDB.Open()
        '    Dim reader As SqlDataReader = command.ExecuteReader()
        '    While (reader.Read())
        '        'StudentName.Text = (reader["StudentName"]).ToString())
        '        StudentName.Text = reader.GetString(0)
        '        StudentNumber.Text = reader.GetString(1)
        '        Stu_Gender.Text = reader.GetString(2)
        '        Dim fecha As String = reader.GetString(2)
        '        Stu_Birthday.Text = fecha
        '        'Stu_Birthday.Text = reader.GetString(3)
        '        Stu_Email.Text = reader.GetString(4)
        '        Stu_Phone.Text = reader.GetString(5)
        '        Stu_Direccion.Text = reader.GetString(6)
        '        Stu_Postal.Text = reader.GetString(7)
        '        Stu_Department.Text = reader.GetString(8)
        '        Stu_Year.Text = reader.GetString(9)
        '        Stu_Igs.Text = reader.GetString(10)
        '        ' Stu_Certificate.FileName = reader.GetString(11)
        '        Stu_Authorization.Text = reader.GetString(12)
        '        ' Stu_Status.Text = reader.GetString(13)
        '        'stumail = readmail.GetString(0)
        '    End While
        '    cnDB.Close()
        '    'MsgBox("usuario registrado")

        '    'Catch ex As Exception
        '    '    MsgBox("Don't Open Connection")
        '    'End Try
        'Catch ex As Exception

        'End Try

    End Sub

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        MultiView1.ActiveViewIndex = Int32.Parse(e.Item.Value)
        Dim i As Integer

        'Muestra una imagen al boton del list view swlwccionado
        For i = 0 To Menu1.Items.Count - 1
            If i = e.Item.Value Then
                Menu1.Items(i).ImageUrl = "Images/SelectedTab.png"
            Else
                Menu1.Items(i).ImageUrl = "Images/UnselectedTab.png"
            End If
        Next
    End Sub

    Protected Sub btnGuardarEstudiante_Click(sender As Object, e As EventArgs) Handles btnGuardarEstudiante.Click

        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddStudents", cnDB)
        command.CommandType = CommandType.StoredProcedure
        cnDB.Open()

        command.Parameters.Add("@StudentName", SqlDbType.VarChar).Value = StudentName.Text
        command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = StudentNumber.Text
        command.Parameters.Add("@Stu_Gender", SqlDbType.VarChar).Value = Stu_Gender.Text
        command.Parameters.Add("@Stu_Birthday", SqlDbType.Date).Value = Date.ParseExact(Stu_Birthday.Text.ToString(), "dd/MM/yyyy", System.Globalization.DateTimeFormatInfo.InvariantInfo)
        command.Parameters.Add("@Stu_Email", SqlDbType.VarChar).Value = Stu_Email.Text
        command.Parameters.Add("@Stu_Phone", SqlDbType.VarChar).Value = Stu_Phone.Text
        command.Parameters.Add("@Stu_Direccion", SqlDbType.VarChar).Value = Stu_Direccion.Text
        command.Parameters.Add("@Stu_Postal", SqlDbType.VarChar).Value = Stu_Postal.Text
        command.Parameters.Add("@Stu_Department", SqlDbType.VarChar).Value = Stu_Department.Text
        command.Parameters.Add("@Stu_Year", SqlDbType.VarChar).Value = Stu_Year.Text
        command.Parameters.Add("@Stu_Igs", SqlDbType.VarChar).Value = Stu_Igs.Text
        command.Parameters.Add("@Stu_Certificate", SqlDbType.VarChar).Value = Stu_Certificate.FileName
        command.Parameters.Add("@Stu_Authorization", SqlDbType.VarChar).Value = Stu_Authorization.Text
        command.Parameters.Add("@Stu_AplicationDAte", SqlDbType.Date).Value = Date.Today().ToString("D")
        command.Parameters.Add("@Stu_Status", SqlDbType.VarChar).Value = "guardado"

        Try

            command.ExecuteNonQuery()
            cnDB.Close()
            MsgBox("Informacion personal Guardada")

        Catch ex As Exception
            MsgBox("Don't Open Connection")
        End Try

        ' Response.Redirect("~/")

    End Sub

    Protected Sub btnGuardarEnsayo_Click(sender As Object, e As EventArgs) Handles btnGuardarEnsayo.Click

        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddEnsayoStudents", cnDB)
        command.CommandType = CommandType.StoredProcedure
        cnDB.Open()

        command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = StudentNumber.Text
        command.Parameters.Add("@Stu_Ensayo", SqlDbType.VarChar).Value = Stu_Ensayo.Text
        command.Parameters.Add("@Stu_Status", SqlDbType.VarChar).Value = "guardado"

        Try

            command.ExecuteNonQuery()
            cnDB.Close()
            MsgBox("Ensayo Guardado")

        Catch ex As Exception
            MsgBox("Don't Open Connection")
        End Try
    End Sub

    Protected Sub btnEvalaudores_Click(sender As Object, e As EventArgs) Handles btnEvalaudores.Click


        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddEvaluadores", cnDB)
        command.CommandType = CommandType.StoredProcedure
        cnDB.Open()

        command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = StudentNumber.Text

        command.Parameters.Add("@eval_Nombre1", SqlDbType.VarChar).Value = eval_Nombre1.Text
        command.Parameters.Add("@eval_Ocupacion1", SqlDbType.VarChar).Value = eval_Ocupacion1.Text
        command.Parameters.Add("@eval_Trabajo1", SqlDbType.VarChar).Value = eval_Trabajo1.Text
        command.Parameters.Add("@eval_Telpersonal1", SqlDbType.VarChar).Value = eval_Telpersonal1.Text
        command.Parameters.Add("@eval_Teltrabajo1", SqlDbType.VarChar).Value = eval_Teltrabajo1.Text
        command.Parameters.Add("@eval_Email1", SqlDbType.VarChar).Value = eval_Email1.Text

        command.Parameters.Add("@eval_Nombre2", SqlDbType.VarChar).Value = eval_Nombre2.Text
        command.Parameters.Add("@eval_Ocupacion2", SqlDbType.VarChar).Value = eval_Ocupacion2.Text
        command.Parameters.Add("@eval_Trabajo2", SqlDbType.VarChar).Value = eval_Trabajo2.Text
        command.Parameters.Add("@eval_Telpersonal2", SqlDbType.VarChar).Value = eval_Telpersonal2.Text
        command.Parameters.Add("@eval_Teltrabajo2", SqlDbType.VarChar).Value = eval_Teltrabajo2.Text
        command.Parameters.Add("@eval_Email2", SqlDbType.VarChar).Value = eval_Email1.Text

        command.Parameters.Add("@eval_Nombre3", SqlDbType.VarChar).Value = eval_Nombre3.Text
        command.Parameters.Add("@eval_Ocupacion3", SqlDbType.VarChar).Value = eval_Ocupacion3.Text
        command.Parameters.Add("@eval_Trabajo3", SqlDbType.VarChar).Value = eval_Trabajo3.Text
        command.Parameters.Add("@eval_Telpersonal3", SqlDbType.VarChar).Value = eval_Telpersonal3.Text
        command.Parameters.Add("@eval_Teltrabajo3", SqlDbType.VarChar).Value = eval_Teltrabajo3.Text
        command.Parameters.Add("@eval_Email3", SqlDbType.VarChar).Value = eval_Email3.Text

        command.Parameters.Add("@eval_Status", SqlDbType.VarChar).Value = "ok"

        Try

            command.ExecuteNonQuery()
            cnDB.Close()
            MsgBox("Informacion Evaluadores Guardada")

        Catch ex As Exception
            MsgBox("Don't Open Connection")
        End Try
    End Sub
    Protected Sub btnGuardarInfoAdicional_Click(sender As Object, e As EventArgs) Handles btnGuardarInfoAdicional.Click

        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddInfoAdicional", cnDB)
        command.CommandType = CommandType.StoredProcedure
        cnDB.Open()

        command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = StudentNumber.Text
        command.Parameters.Add("@infad_Excursiones_edu", SqlDbType.VarChar).Value = infad_Excursiones_edu.Text
        command.Parameters.Add("@infad_Talleres", SqlDbType.VarChar).Value = infad_Talleres.Text
        command.Parameters.Add("@infad_Talleresde", SqlDbType.VarChar).Value = infad_Talleresde.Text
        command.Parameters.Add("@infad_Conferencias", SqlDbType.VarChar).Value = infad_Conferencias.Text
        command.Parameters.Add("@infad_Conferenciasde", SqlDbType.VarChar).Value = infad_Conferenciasde.Text
        command.Parameters.Add("@infad_Convenciones", SqlDbType.VarChar).Value = infad_Convenciones.Text
        command.Parameters.Add("@infad_Convencionesde", SqlDbType.VarChar).Value = infad_Convencionesde.Text
        command.Parameters.Add("@infad_actividad", SqlDbType.VarChar).Value = infad_actividad.Text
        command.Parameters.Add("@infad_actividadesde", SqlDbType.VarChar).Value = infad_actividadesde.Text
        command.Parameters.Add("@infad_otro", SqlDbType.VarChar).Value = infad_otro.Text
        command.Parameters.Add("@infad_Status", SqlDbType.VarChar).Value = "ok"

        Try

            command.ExecuteNonQuery()
            cnDB.Close()
            MsgBox("Informacion Adicional Guardada")

        Catch ex As Exception
            MsgBox("Don't Open Connection")
        End Try
    End Sub

    Protected Sub btnSometer_Click(sender As Object, e As EventArgs) Handles btnSometer.Click

        Dim stumail As String = "3"

        Try
            Dim Smtp_Server As New SmtpClient
            Dim e_mail As New MailMessage()
            Smtp_Server.UseDefaultCredentials = True
            Smtp_Server.Credentials = New Net.NetworkCredential("gabriel.monsalve@upr.edu", "441121837")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"


            e_mail = New MailMessage()

            Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
            Dim cnDB As SqlConnection = New SqlConnection(cadena)
            Dim command As New SqlCommand("select Stu_Email from Students where StudentNumber = '" + StudentNumber.Text + "'", cnDB)

            Try
                cnDB.Open()
                Dim readmail As SqlDataReader = command.ExecuteReader()
                While (readmail.Read())
                    stumail = readmail.GetString(0)
                End While
                cnDB.Close()
                MsgBox("correo enviado exitosamente")

            Catch ex As Exception
                MsgBox("Don't Open Connection")
            End Try


            e_mail.From = New MailAddress("gabriel.monsalve@upr.edu")
            e_mail.To.Add(stumail)
            e_mail.Subject = "Confirmacion Registro Solicitud Programa de Honor UPRB"
            e_mail.IsBodyHtml = False
            e_mail.Body = "Usted se ha registrado correctamente"
            Smtp_Server.Send(e_mail)
            MsgBox("Mensaje Enviado")

        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try

        'este boton debe cambiar el estatus del estudiante a "sometida o pendiente por aprobacion"
        ' enviar email de notificacion que la solicitud fue sometida al estudiante 
        'el boton se activa si los status de los formularios esta "complete"


    End Sub

End Class
