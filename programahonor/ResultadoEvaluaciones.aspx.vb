Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Public Class ResultadoEvaluaciones
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("LeerEvaluacion", cnDB)
        command.CommandType = CommandType.StoredProcedure
        command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = "841113880"

        Try 'Lectura de datos de estudiante perteneciente al programa de honor

            cnDB.Open()
            Dim reader As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD
            While (reader.Read())


                Result_NumeroEstudiante.Text = reader.GetString(0)
                Resul_AsociacionEst1.Text = reader.GetString(1)
                Eval_ConoceEs1.Text = reader.GetString(2)
                Eval_tiempo1.Text = reader.GetString(3)
                Eval_OpinionProfEst1.Text = reader.GetString(4)
                Eval_FaltaEst1.Text = reader.GetString(5)
                Eval_FaltaEsttxt.Text = reader.GetString(6)

                Eval_Tarea1.Text = reader.GetInt32(7)
                Eval_Cumplimiento1.Text = reader.GetInt32(8)
                Eval_UsoTiempo1.Text = reader.GetInt32(9)
                Eval_Horario1.Text = reader.GetInt32(10)
                Eval_OrdenEstudiante1.Text = reader.GetInt32(11)
                Eval_Procedimiento1.Text = reader.GetInt32(13)
                Eval_AjustaNormas1.Text = reader.GetInt32(14)
                Eval_CalidadTrbajo1.Text = reader.GetInt32(15)
                Eval_DeleganResponsabilidad1.Text = reader.GetInt32(16)
                Eval_Presion1.Text = reader.GetInt32(17)

                Eval_Habilidad_Analisis_Resolver1.Text = reader.GetInt32(18)

                Eval_EnfrentarRetos1.Text = reader.GetInt32(19)

                Eval_DominioPropio1.Text = reader.GetInt32(20)

                Eval_Rectitud1.Text = reader.GetInt32(21)

                Eval_TomadeDecisiones1.Text = reader.GetInt32(22)

                Eval_Sinceridad1.Text = reader.GetInt32(23)

                Eval_ProySerenidad1.Text = reader.GetInt32(24)

                Eval_SentidoComun1.Text = reader.GetInt32(25)

                BuenJuicio1.Text = reader.GetInt32(26)

                Eval_TrabajoComunicacion1.Text = reader.GetInt32(27)

                Eval_habilidadCooperacion1.Text = reader.GetInt32(28)

                Eval_habilidadEquipo1.Text = reader.GetInt32(29)

                Eval_FacilitaDialogo1.Text = reader.GetInt32(30)

                Eval_EducacionUrbanidad1.Text = reader.GetInt32(31)

                Eval_HumorAfabilidad1.Text = reader.GetInt32(32)

                Eval_EscuchaOpinion1.Text = reader.GetInt32(33)

                Eval_AyudaOtros1.Text = reader.GetInt32(34)

                Eval_FortaDebilidades1.Text = reader.GetInt32(35)

                Eval_PerservanciaLogros1.Text = reader.GetInt32(36)

                Eval_OralEscrita1.Text = reader.GetInt32(37)

                Recomienda1.Text = reader.GetString(38)

                PorqueRecomienda1.Text = reader.GetString(39)
                

            End While
            cnDB.Close()

        Catch ex As Exception
            Response.Write("<script>alert('Imposible Atender su solicitud, De persistir el problema comuniquese el Programa de Honor UPRB'); </script>")
        End Try
       

          
    End Sub

End Class