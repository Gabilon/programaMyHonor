Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail

Public Class Aplicar
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lbl_Status.Visible = False ''label deshabilitado del status
        Stu_Status.Visible = False ''textbox deshabilitado del status
        lblStu_Ensayo.Visible = False ''label que desplega el nombre del file de ensayo guardado
        btnActualizarEstudiante.Visible = False

        If (Not IsPostBack) Then
            ''Verificacion de usuario autenticado para saber si pertenece al progrma
            Try
                Dim Username As String = Session("usuario").ToString()

                Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
                Dim cnDB As SqlConnection = New SqlConnection(cadena)
                Dim command As New SqlCommand() 'instanciamiento de la conexion a la BD
                command.Connection = cnDB 'Cocatenar cadena de conexion de la base de datos a la instancia
                command.CommandType = CommandType.StoredProcedure 'Inidcar al command que debera emplear un Store Procedure
                command.CommandText = "LeerInfoRegEstu" 'Asignacion del StoreProcedure a emplear
                command.Parameters.AddWithValue("@StudentNumber", Username) 'parametro para verificar registro del usuario autenticado

                ''Lectura de datos de estudiante perteneciente al programa de honor

                Try
                    cnDB.Open()
                    Dim reader As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD
                    Dim contar As Integer = command.Parameters.Count
                    While (reader.Read())


                        StudentName.Text = reader.GetString(0)
                        StudentNumber.ReadOnly = True
                        StudentNumber.Text = reader.GetString(1)
                        Stu_Gender.Text = reader.GetString(2)
                        Stu_Birthday.Text = reader.GetDateTime(3).Date.ToString("MM/dd/yyyy")
                        Stu_Email.Text = reader.GetString(4)
                        Stu_Phone.Text = reader.GetString(5)
                        Stu_Direccion.Text = reader.GetString(6)
                        Stu_Postal.Text = reader.GetString(7)
                        Stu_Department.Text = reader.GetString(8)
                        Stu_Year.Text = reader.GetString(9)
                        Stu_Igs.Text = reader.GetString(10)
                        Dim certificado As String = String.Concat((Server.MapPath("~/Certificados/" + reader.GetString(11))))
                        lblStu_Ensayo.Text = certificado
                        Stu_Authorization.Text = reader.GetString(12)
                        lblStu_Ensayo.Visible = True
                        Dim ensayo As String = String.Concat((Server.MapPath("~/Ensayos/" + reader.GetString(13))))
                        lblStu_Ensayo.Text = ensayo
                        lbl_Status.Visible = True
                        Stu_Status.Visible = True
                        Stu_Status.ReadOnly = True
                        Stu_Status.Text = reader.GetString(14)
                        eval_Nombre1.Text = reader.GetString(15)
                        eval_Ocupacion1.Text = reader.GetString(16)
                        eval_Trabajo1.Text = reader.GetString(17)
                        eval_Telpersonal1.Text = reader.GetString(18)
                        eval_Teltrabajo1.Text = reader.GetString(19)
                        eval_Email1.Text = reader.GetString(20)
                        infad_Excursiones_edu.Text = reader.GetString(21)
                        infad_Talleres.Text = reader.GetString(22)
                        infad_Talleresde.Text = reader.GetString(23)
                        infad_Conferencias.Text = reader.GetString(24)
                        infad_Conferenciasde.Text = reader.GetString(25)
                        infad_Convenciones.Text = reader.GetString(26)
                        infad_Convencionesde.Text = reader.GetString(27)
                        infad_actividad.Text = reader.GetString(28)
                        infad_actividadesde.Text = reader.GetString(29)
                        infad_otro.Text = reader.GetString(30)

                        StudentName.Text = reader.GetString(0)
                        StudentNumber.ReadOnly = True
                        StudentNumber.Text = reader.GetString(1)
                        Stu_Gender.Text = reader.GetString(2)
                        Stu_Birthday.Text = reader.GetDateTime(3).Date.ToString("MM/dd/yyyy")
                        Stu_Email.Text = reader.GetString(4)
                        Stu_Phone.Text = reader.GetString(5)
                        Stu_Direccion.Text = reader.GetString(6)
                        Stu_Postal.Text = reader.GetString(7)
                        Stu_Department.Text = reader.GetString(8)
                        Stu_Year.Text = reader.GetString(9)
                        Stu_Igs.Text = reader.GetString(10)
                        Dim certificado1 As String = String.Concat((Server.MapPath("~/Certificados/" + reader.GetString(11))))
                        lblStu_Ensayo.Text = certificado1
                        Stu_Authorization.Text = reader.GetString(12)
                        lblStu_Ensayo.Visible = True
                        Dim ensayo1 As String = String.Concat((Server.MapPath("~/Ensayos/" + reader.GetString(13))))
                        lblStu_Ensayo.Text = ensayo1
                        lbl_Status.Visible = True
                        Stu_Status.Visible = True
                        Stu_Status.ReadOnly = True
                        Stu_Status.Text = reader.GetString(14)
                        eval_Nombre2.Text = reader.GetString(15)
                        eval_Ocupacion2.Text = reader.GetString(16)
                        eval_Trabajo2.Text = reader.GetString(17)
                        eval_Telpersonal2.Text = reader.GetString(18)
                        eval_Teltrabajo2.Text = reader.GetString(19)
                        eval_Email2.Text = reader.GetString(20)
                        infad_Excursiones_edu.Text = reader.GetString(21)
                        infad_Talleres.Text = reader.GetString(22)
                        infad_Talleresde.Text = reader.GetString(23)
                        infad_Conferencias.Text = reader.GetString(24)
                        infad_Conferenciasde.Text = reader.GetString(25)
                        infad_Convenciones.Text = reader.GetString(26)
                        infad_Convencionesde.Text = reader.GetString(27)
                        infad_actividad.Text = reader.GetString(28)
                        infad_actividadesde.Text = reader.GetString(29)
                        infad_otro.Text = reader.GetString(30)


                        StudentName.Text = reader.GetString(0)
                        StudentNumber.ReadOnly = True
                        StudentNumber.Text = reader.GetString(1)
                        Stu_Gender.Text = reader.GetString(2)
                        Stu_Birthday.Text = reader.GetDateTime(3).Date.ToString("MM/dd/yyyy")
                        Stu_Email.Text = reader.GetString(4)
                        Stu_Phone.Text = reader.GetString(5)
                        Stu_Direccion.Text = reader.GetString(6)
                        Stu_Postal.Text = reader.GetString(7)
                        Stu_Department.Text = reader.GetString(8)
                        Stu_Year.Text = reader.GetString(9)
                        Stu_Igs.Text = reader.GetString(10)
                        Dim certificado2 As String = String.Concat((Server.MapPath("~/Certificados/" + reader.GetString(11))))
                        lblStu_Ensayo.Text = certificado2
                        Stu_Authorization.Text = reader.GetString(12)
                        lblStu_Ensayo.Visible = True
                        Dim ensayo2 As String = String.Concat((Server.MapPath("~/Ensayos/" + reader.GetString(13))))
                        lblStu_Ensayo.Text = ensayo2
                        lbl_Status.Visible = True
                        Stu_Status.Visible = True
                        Stu_Status.ReadOnly = True
                        Stu_Status.Text = reader.GetString(14)
                        eval_Nombre3.Text = reader.GetString(15)
                        eval_Ocupacion3.Text = reader.GetString(16)
                        eval_Trabajo3.Text = reader.GetString(17)
                        eval_Telpersonal3.Text = reader.GetString(18)
                        eval_Teltrabajo3.Text = reader.GetString(19)
                        eval_Email3.Text = reader.GetString(20)
                        infad_Excursiones_edu.Text = reader.GetString(21)
                        infad_Talleres.Text = reader.GetString(22)
                        infad_Talleresde.Text = reader.GetString(23)
                        infad_Conferencias.Text = reader.GetString(24)
                        infad_Conferenciasde.Text = reader.GetString(25)
                        infad_Convenciones.Text = reader.GetString(26)
                        infad_Convencionesde.Text = reader.GetString(27)
                        infad_actividad.Text = reader.GetString(28)
                        infad_actividadesde.Text = reader.GetString(29)
                        infad_otro.Text = reader.GetString(30)


                        btnActualizarEstudiante.Visible = True
                        btnGuardarEstudiante.Visible = False

                    End While
                    cnDB.Close()
                Catch ex As Exception
                    ' Response.Write("<script>alert('Aun no Ha solicitado membresia en el Programa de Honor UPRB'); </script>")
                End Try
            Catch ex As Exception
                Response.Redirect("Aplicar.aspx")

            End Try
        End If

    End Sub

    Protected Sub Menu1_MenuItemClick(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.MenuEventArgs) Handles Menu1.MenuItemClick
        MultiView1.ActiveViewIndex = Int32.Parse(e.Item.Value)
        Dim i As Integer

        'Muestra una imagen al boton del list view selecionado
        For i = 0 To Menu1.Items.Count - 1
            If i = e.Item.Value Then
                Menu1.Items(i).ImageUrl = "Images/SelectedTab.png"
            Else
                Menu1.Items(i).ImageUrl = "Images/UnselectedTab.png"
            End If
        Next
    End Sub

    'Boton que guarda parcialmente la informacion basica del estudiante
    Protected Sub btnGuardarEstudiante_Click(sender As Object, e As EventArgs) Handles btnGuardarEstudiante.Click

        'Instanciamiento de la base de datos y Store procedure para insereccion de datos del estudiante que solicita
        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddStudents", cnDB)
        command.CommandType = CommandType.StoredProcedure


        command.Parameters.Add("@StudentName", SqlDbType.VarChar).Value = StudentName.Text
        command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = StudentNumber.Text
        command.Parameters.Add("@Stu_Gender", SqlDbType.VarChar).Value = Stu_Gender.Text
        command.Parameters.Add("@Stu_Birthday", SqlDbType.Date).Value = Date.ParseExact(Stu_Birthday.Text.ToString(), "MM/dd/yyyy", System.Globalization.DateTimeFormatInfo.InvariantInfo)
        command.Parameters.Add("@Stu_Email", SqlDbType.VarChar).Value = Stu_Email.Text
        command.Parameters.Add("@Stu_Phone", SqlDbType.VarChar).Value = Stu_Phone.Text
        command.Parameters.Add("@Stu_Direccion", SqlDbType.VarChar).Value = Stu_Direccion.Text
        command.Parameters.Add("@Stu_Postal", SqlDbType.VarChar).Value = Stu_Postal.Text
        command.Parameters.Add("@Stu_Department", SqlDbType.VarChar).Value = Stu_Department.Text
        command.Parameters.Add("@Stu_Year", SqlDbType.VarChar).Value = Stu_Year.Text
        command.Parameters.Add("@Stu_Igs", SqlDbType.VarChar).Value = Stu_Igs.Text
        command.Parameters.Add("@Stu_Certificate", SqlDbType.VarChar).Value = Stu_Certificate.FileName
        If (Stu_Certificate.HasFile) Then
            Dim path As String = String.Concat((Server.MapPath("~/Certificados/" + Stu_Certificate.FileName))) 'Almacenamiento del file seleccionado en la ruta especificada
            Stu_Certificate.PostedFile.SaveAs(path)
        End If
        command.Parameters.Add("@Stu_Authorization", SqlDbType.VarChar).Value = Stu_Authorization.Text
        command.Parameters.Add("@Stu_AplicationDAte", SqlDbType.Date).Value = Date.Today().ToString("D")
        command.Parameters.Add("@Stu_Status", SqlDbType.VarChar).Value = "completado"
        command.Parameters.Add("@fecha_creacion", SqlDbType.Date).Value = Date.Today().ToString("D")
        command.Parameters.Add("@usuario_creacion", SqlDbType.VarChar).Value = Session("usuario").ToString()


        Try
            cnDB.Open()
            command.ExecuteNonQuery()
            cnDB.Close()

            Response.Write("<script>alert('Información Guardada'); </script>")

        Catch ex As Exception

            Response.Write("<script>alert('Información No Guardada'); </script>")

        End Try

        'hace un chequeo por todos los textbox del formulario
        'For Each oControl As Control In ofrm.Controls
        '    If TypeOf oCobtrol Is TextBox Then
        '        oControl.Text = ""
        '    End If
        'Next

        ' Response.Redirect("~/")

    End Sub

    Protected Sub btnGuardarEnsayo_Click(sender As Object, e As EventArgs) Handles btnGuardarEnsayo.Click

        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddEnsayoStudents", cnDB)
        command.CommandType = CommandType.StoredProcedure


        command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = StudentNumber.Text
        command.Parameters.Add("@Stu_Ensayo", SqlDbType.VarChar).Value = Stu_Ensayo.FileName
        If (Stu_Ensayo.HasFile) Then
            Dim path As String = String.Concat((Server.MapPath("~/Ensayos/" + Stu_Ensayo.FileName)))
            Stu_Ensayo.PostedFile.SaveAs(path)
        End If
        command.Parameters.Add("@Stu_Status_Ensayo", SqlDbType.VarChar).Value = "completado"

        Try
            cnDB.Open()
            command.ExecuteNonQuery()
            cnDB.Close()

            Response.Write("<script>alert('Información Guardada'); </script>")

        Catch ex As Exception
            Response.Write("<script>alert('Informacion No Guardada'); </script>")
        End Try

    End Sub
    Protected Sub btnEvalaudores_Click(sender As Object, e As EventArgs) Handles btnEvalaudores.Click

        Try
            Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
            Dim cnDB As SqlConnection = New SqlConnection(cadena)
            Dim command As New SqlCommand("AddEvaluadores", cnDB)
            command.CommandType = CommandType.StoredProcedure

            command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = StudentNumber.Text
            command.Parameters.Add("@eval_Nombre", SqlDbType.VarChar).Value = eval_Nombre1.Text
            command.Parameters.Add("@eval_Ocupacion", SqlDbType.VarChar).Value = eval_Ocupacion1.Text
            command.Parameters.Add("@eval_Trabajo", SqlDbType.VarChar).Value = eval_Trabajo1.Text
            command.Parameters.Add("@eval_Telpersonal", SqlDbType.VarChar).Value = eval_Telpersonal1.Text
            command.Parameters.Add("@eval_Teltrabajo", SqlDbType.VarChar).Value = eval_Teltrabajo1.Text
            command.Parameters.Add("@eval_Email", SqlDbType.VarChar).Value = eval_Email1.Text
            command.Parameters.Add("@eval_Status", SqlDbType.VarChar).Value = "completado"
            command.Parameters.Add("@fecha_creacion", SqlDbType.Date).Value = Date.Today().ToString("D")
            command.Parameters.Add("@usuario_creacion", SqlDbType.VarChar).Value = Session("usuario").ToString()

            cnDB.Open()
            command.ExecuteNonQuery()
            cnDB.Close()
        Catch ex As Exception
            Response.Write("<script>alert('Información No Guardada'); </script>")
        End Try
        Try
            Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
            Dim cnDB As SqlConnection = New SqlConnection(cadena)
            Dim command As New SqlCommand("AddEvaluadores", cnDB)
            command.CommandType = CommandType.StoredProcedure
            Command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = StudentNumber.Text
            Command.Parameters.Add("@eval_Nombre", SqlDbType.VarChar).Value = eval_Nombre2.Text
            Command.Parameters.Add("@eval_Ocupacion", SqlDbType.VarChar).Value = eval_Ocupacion2.Text
            Command.Parameters.Add("@eval_Trabajo", SqlDbType.VarChar).Value = eval_Trabajo2.Text
            Command.Parameters.Add("@eval_Telpersonal", SqlDbType.VarChar).Value = eval_Telpersonal2.Text
            Command.Parameters.Add("@eval_Teltrabajo", SqlDbType.VarChar).Value = eval_Teltrabajo2.Text
            Command.Parameters.Add("@eval_Email", SqlDbType.VarChar).Value = eval_Email2.Text
            Command.Parameters.Add("@eval_Status", SqlDbType.VarChar).Value = "completado"
            Command.Parameters.Add("@fecha_creacion", SqlDbType.Date).Value = Date.Today().ToString("D")
            Command.Parameters.Add("@usuario_creacion", SqlDbType.VarChar).Value = Session("usuario").ToString()

            cnDB.Open()
            Command.ExecuteNonQuery()
            cnDB.Close()
        Catch ex As Exception
            Response.Write("<script>alert('Información No Guardada'); </script>")
        End Try

        Try
            Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
            Dim cnDB As SqlConnection = New SqlConnection(cadena)
            Dim command As New SqlCommand("AddEvaluadores", cnDB)
            command.CommandType = CommandType.StoredProcedure
        
        Command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = StudentNumber.Text
        Command.Parameters.Add("@eval_Nombre", SqlDbType.VarChar).Value = eval_Nombre3.Text
        Command.Parameters.Add("@eval_Ocupacion", SqlDbType.VarChar).Value = eval_Ocupacion3.Text
        Command.Parameters.Add("@eval_Trabajo", SqlDbType.VarChar).Value = eval_Trabajo3.Text
        Command.Parameters.Add("@eval_Telpersonal", SqlDbType.VarChar).Value = eval_Telpersonal3.Text
        Command.Parameters.Add("@eval_Teltrabajo", SqlDbType.VarChar).Value = eval_Teltrabajo3.Text
        Command.Parameters.Add("@eval_Email", SqlDbType.VarChar).Value = eval_Email3.Text
        Command.Parameters.Add("@eval_Status", SqlDbType.VarChar).Value = "completado"
        Command.Parameters.Add("@fecha_creacion", SqlDbType.Date).Value = Date.Today().ToString("D")
        Command.Parameters.Add("@usuario_creacion", SqlDbType.VarChar).Value = Session("usuario").ToString()

        cnDB.Open()
        Command.ExecuteNonQuery()
            cnDB.Close()
            Response.Write("<script>alert('Información Guardada'); </script>")
        Catch ex As Exception
            Response.Write("<script>alert('Información No Guardada'); </script>")
        End Try

     
    End Sub
    Protected Sub btnGuardarInfoAdicional_Click(sender As Object, e As EventArgs) Handles btnGuardarInfoAdicional.Click

        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddInfoAdicional", cnDB)
        command.CommandType = CommandType.StoredProcedure

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
        command.Parameters.Add("@infad_Status", SqlDbType.VarChar).Value = "completado"
        command.Parameters.Add("@fecha_creacion", SqlDbType.Date).Value = Date.Today().ToString("D")
        command.Parameters.Add("@usuario_creacion", SqlDbType.VarChar).Value = Session("usuario").ToString()

        Try
            cnDB.Open()
            command.ExecuteNonQuery()
            cnDB.Close()

            Response.Write("<script>alert('Información Guardada'); </script>")

        Catch ex As Exception
            Response.Write("<script>alert('Informacion No Guardada'); </script>")
        End Try

    End Sub

    Protected Sub btnSometer_Click(sender As Object, e As EventArgs) Handles btnSometer.Click

        Dim stumail As String = " "
        Dim status_info As String = " "
        Dim status_ensayo As String = " "
        Dim status_eval As String = " "
        Dim status_infoadic As String = " "


        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString 'Validacion del estado de los formularios de la aplicacion
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("ValidarParaSometer", cnDB)
        command.CommandType = CommandType.StoredProcedure
        command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = StudentNumber.Text
        Try
            cnDB.Open()
            Dim status As SqlDataReader = command.ExecuteReader()
            While (status.Read())
                status_info = status.GetString(0)
                status_ensayo = status.GetString(1)
                status_eval = status.GetString(2)
                status_infoadic = status.GetString(3)
                stumail = status.GetString(4)
            End While
            cnDB.Close()


            If (status_info <> "" And status_ensayo = "completado" And status_eval = "completado" And status_infoadic = "completado") Then

                Dim cadena1 As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
                Dim cnDB1 As SqlConnection = New SqlConnection(cadena1)
                Dim command1 As New SqlCommand("ActEstadoEstu", cnDB1)
                command1.CommandType = CommandType.StoredProcedure
                command1.Parameters.Add("@Stu_Status", SqlDbType.VarChar).Value = "solicitando" 'actualiza el estado del estudiante de completado del formulario a solicitando

                'Envio de notificación al estudiante sobre su confirmación de registro de solicitud
                If emailNotiAplicacionEstudiante(stumail) = True Then
                    Response.Write("<script>alert('Email Enviado Satisfactoriamente() '); </script>")
                Else
                    Response.Write("<script>alert('Email no Enviado'); </script>")
                End If

                'Envio de email a los evaluadores con el link a la evaluación de los estudiantes
                If emailNotiAplicacionEvaluador(StudentNumber.Text) = True Then
                    Response.Write("<script>alert('Email Enviado Satisfactoriamente() '); </script>")
                Else
                    Response.Write("<script>alert('Email no Enviado'); </script>")
                End If

                'Envio de email de notificación al programa de honor sobre la confirmacion de registro de solicitud de un estudiante
                If emailNotiAplicacionProgHonor(stumail, StudentName.Text, StudentNumber.Text) = True Then
                    Response.Write("<script>alert('Email Enviado Satisfactoriamente() '); </script>")
                Else
                    Response.Write("<script>alert('Email no Enviado'); </script>")
                End If

            Else
                Response.Write("<script>alert('La solictud no ha sido completada, no se pude someter, verifiquela he intente nuevamente.'); </script>")
            End If


        Catch ex As Exception
            Response.Write("<script>alert('No ha completado la solicitud para solicitar admision al Programa de Honor .'); </script>")
        End Try




        'este boton debe cambiar el estatus del estudiante a "sometida o pendiente por aprobacion"
        ' enviar email de notificacion que la solicitud fue sometida al estudiante 
        'el boton se activa si los status de los formularios esta "complete"


    End Sub

    Protected Sub btnActualizarEstudiante_Click(sender As Object, e As EventArgs) Handles btnActualizarEstudiante.Click

        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("EditStudents", cnDB)
        command.CommandType = CommandType.StoredProcedure
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
        command.Parameters.Add("@Stu_Status", SqlDbType.VarChar).Value = "solicitando"
        command.Parameters.Add("@fecha_actualizo", SqlDbType.Date).Value = Date.Today().ToString("D")
        command.Parameters.Add("@usuario_actualizo", SqlDbType.VarChar).Value = Session("usuario").ToString()

        Try
            cnDB.Open()
            command.ExecuteNonQuery()
            cnDB.Close()

            Response.Write("<script>alert('Información actualizada'); </script>")

        Catch ex As Exception

            Response.Write("<script>alert('Información No Actualizada'); </script>")

        End Try

    End Sub
End Class
