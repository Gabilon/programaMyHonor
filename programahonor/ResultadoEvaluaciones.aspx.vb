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

            While reader.Read()









                'anade

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

                Eval_Procedimiento1.Text = reader.GetInt32(12)

                Eval_AjustaNormas1.Text = reader.GetInt32(13)

                Eval_CalidadTrbajo1.Text = reader.GetInt32(14)

                Eval_DeleganResponsabilidad1.Text = reader.GetInt32(15)

                Eval_Presion1.Text = reader.GetInt32(16)



                Eval_Habilidad_Analisis_Resolver1.Text = reader.GetInt32(17)



                Eval_EnfrentarRetos1.Text = reader.GetInt32(18)



                Eval_DominioPropio1.Text = reader.GetInt32(19)



                Eval_Rectitud1.Text = reader.GetInt32(20)



                Eval_TomadeDecisiones1.Text = reader.GetInt32(21)



                Eval_Sinceridad1.Text = reader.GetInt32(22)



                Eval_ProySerenidad1.Text = reader.GetInt32(23)



                Eval_SentidoComun1.Text = reader.GetInt32(24)



                BuenJuicio1.Text = reader.GetInt32(25)



                Eval_TrabajoComunicacion1.Text = reader.GetInt32(26)



                Eval_habilidadCooperacion1.Text = reader.GetInt32(27)



                Eval_habilidadEquipo1.Text = reader.GetInt32(28)



                Eval_FacilitaDialogo1.Text = reader.GetInt32(29)



                Eval_EducacionUrbanidad1.Text = reader.GetInt32(30)



                Eval_HumorAfabilidad1.Text = reader.GetInt32(31)



                Eval_EscuchaOpinion1.Text = reader.GetInt32(32)



                Eval_AyudaOtros1.Text = reader.GetInt32(33)



                Eval_FortaDebilidades1.Text = reader.GetInt32(34)



                Eval_PerservanciaLogros1.Text = reader.GetInt32(35)



                Eval_OralEscrita1.Text = reader.GetInt32(36)



                Recomienda1.Text = reader.GetString(37)



                PorqueRecomienda1.Text = reader.GetString(38)





                reader.Read()



                Resul_AsociacionEst2.Text = reader.GetString(1)

                Eval_ConoceEs2.Text = reader.GetString(2)

                Eval_tiempo2.Text = reader.GetString(3)

                Eval_OpinionProfEst2.Text = reader.GetString(4)

                Eval_FaltaEst2.Text = reader.GetString(5)

                Eval_FaltaEst2txt.Text = reader.GetString(6)

                Eval_Tarea2.Text = reader.GetInt32(7)

                Eval_Cumplimiento2.Text = reader.GetInt32(8)

                Eval_UsoTiempo2.Text = reader.GetInt32(9)

                Eval_Horario2.Text = reader.GetInt32(10)

                Eval_OrdenEstudiante2.Text = reader.GetInt32(11)

                Eval_Procedimiento2.Text = reader.GetInt32(12)

                Eval_AjustaNormas2.Text = reader.GetInt32(13)

                Eval_CalidadTrbajo2.Text = reader.GetInt32(14)

                Eval_DeleganResponsabilidad2.Text = reader.GetInt32(15)

                Eval_Presion2.Text = reader.GetInt32(16)



                Eval_Habilidad_Analisis_Resolver2.Text = reader.GetInt32(17)



                Eval_EnfrentarRetos2.Text = reader.GetInt32(18)



                Eval_DominioPropio2.Text = reader.GetInt32(19)



                Eval_Rectitud2.Text = reader.GetInt32(20)



                Eval_TomadeDecisiones2.Text = reader.GetInt32(21)



                Eval_Sinceridad2.Text = reader.GetInt32(22)



                Eval_ProySerenidad2.Text = reader.GetInt32(23)



                Eval_SentidoComun2.Text = reader.GetInt32(24)



                BuenJuicio2.Text = reader.GetInt32(25)



                Eval_TrabajoComunicacion2.Text = reader.GetInt32(26)



                Eval_habilidadCooperacion2.Text = reader.GetInt32(27)



                Eval_habilidadEquipo2.Text = reader.GetInt32(28)



                Eval_FacilitaDialogo2.Text = reader.GetInt32(29)



                Eval_EducacionUrbanidad2.Text = reader.GetInt32(30)



                Eval_HumorAfabilidad2.Text = reader.GetInt32(31)



                Eval_EscuchaOpinion2.Text = reader.GetInt32(32)



                Eval_AyudaOtros2.Text = reader.GetInt32(33)



                Eval_FortaDebilidades2.Text = reader.GetInt32(34)



                Eval_PerservanciaLogros2.Text = reader.GetInt32(35)



                Eval_OralEscrita2.Text = reader.GetInt32(36)



                Recomienda2.Text = reader.GetString(37)



                PorqueRecomienda2.Text = reader.GetString(38)



                reader.Read()



                Resul_AsociacionEst3.Text = reader.GetString(1)

                Eval_ConoceEs3.Text = reader.GetString(2)

                Eval_tiempo3.Text = reader.GetString(3)

                Eval_OpinionProfEst3.Text = reader.GetString(4)

                Eval_FaltaEst3.Text = reader.GetString(5)

                Eval_FaltaEst3txt.Text = reader.GetString(6)

                Eval_Tarea3.Text = reader.GetInt32(7)

                Eval_Cumplimiento3.Text = reader.GetInt32(8)

                Eval_UsoTiempo3.Text = reader.GetInt32(9)

                Eval_Horario3.Text = reader.GetInt32(10)

                Eval_OrdenEstudiante3.Text = reader.GetInt32(11)

                Eval_Procedimiento3.Text = reader.GetInt32(12)

                Eval_AjustaNormas3.Text = reader.GetInt32(13)

                Eval_CalidadTrbajo3.Text = reader.GetInt32(14)

                Eval_DeleganResponsabilidad3.Text = reader.GetInt32(15)

                Eval_Presion3.Text = reader.GetInt32(16)



                Eval_Habilidad_Analisis_Resolver3.Text = reader.GetInt32(17)



                Eval_EnfrentarRetos3.Text = reader.GetInt32(18)



                Eval_DominioPropio3.Text = reader.GetInt32(19)



                Eval_Rectitud3.Text = reader.GetInt32(20)



                Eval_TomadeDecisiones3.Text = reader.GetInt32(21)



                Eval_Sinceridad3.Text = reader.GetInt32(22)



                Eval_ProySerenidad3.Text = reader.GetInt32(23)



                Eval_SentidoComun3.Text = reader.GetInt32(24)



                BuenJuicio3.Text = reader.GetInt32(25)



                Eval_TrabajoComunicacion3.Text = reader.GetInt32(26)



                Eval_habilidadCooperacion3.Text = reader.GetInt32(27)



                Eval_habilidadEquipo3.Text = reader.GetInt32(28)



                Eval_FacilitaDialogo3.Text = reader.GetInt32(29)



                Eval_EducacionUrbanidad3.Text = reader.GetInt32(30)



                Eval_HumorAfabilidad3.Text = reader.GetInt32(31)



                Eval_EscuchaOpinion3.Text = reader.GetInt32(32)



                Eval_AyudaOtros3.Text = reader.GetInt32(33)



                Eval_FortaDebilidades3.Text = reader.GetInt32(34)



                Eval_PerservanciaLogros3.Text = reader.GetInt32(35)



                Eval_OralEscrita3.Text = reader.GetInt32(36)



                Recomieda3.Text = reader.GetString(37)



                PorqueRecomienda3.Text = reader.GetString(38)

                Exit While

            End While

            cnDB.Close()



        Catch ex As Exception

            Response.Write("<script>alert('Imposible Atender su solicitud, De persistir el problema comuniquese el Programa de Honor UPRB'); </script>")

        End Try







    End Sub



End Class

'Imports System.Data.SqlClient
'Imports System.Configuration
'Imports System.Net
'Imports System.Net.Mail
'Public Class ResultadoEvaluaciones
'    Inherits System.Web.UI.Page

'    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
'        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
'        Dim cnDB As SqlConnection = New SqlConnection(cadena)
'        Dim command As New SqlCommand("LeerEvaluacion", cnDB)
'        command.CommandType = CommandType.StoredProcedure
'        command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = "841113880"

'        Try 'Lectura de datos de estudiante perteneciente al programa de honor

'            cnDB.Open()
'            Dim reader As SqlDataReader = command.ExecuteReader() 'Lectura del resultado entregado por la BD
'            While (reader.Read())


'                Result_NumeroEstudiante.Text = reader.GetString(0)
'                Resul_AsociacionEst1.Text = reader.GetString(1)
'                Eval_ConoceEs1.Text = reader.GetString(2)
'                Eval_tiempo1.Text = reader.GetString(3)
'                Eval_OpinionProfEst1.Text = reader.GetString(4)
'                Eval_FaltaEst1.Text = reader.GetString(5)
'                Eval_FaltaEsttxt.Text = reader.GetString(6)

'                Eval_Tarea1.Text = reader.GetInt32(7)
'                Eval_Cumplimiento1.Text = reader.GetInt32(8)
'                Eval_UsoTiempo1.Text = reader.GetInt32(9)
'                Eval_Horario1.Text = reader.GetInt32(10)
'                Eval_OrdenEstudiante1.Text = reader.GetInt32(11)
'                Eval_Procedimiento1.Text = reader.GetInt32(13)
'                Eval_AjustaNormas1.Text = reader.GetInt32(14)
'                Eval_CalidadTrbajo1.Text = reader.GetInt32(15)
'                Eval_DeleganResponsabilidad1.Text = reader.GetInt32(16)
'                Eval_Presion1.Text = reader.GetInt32(17)

'                Eval_Habilidad_Analisis_Resolver1.Text = reader.GetInt32(18)

'                Eval_EnfrentarRetos1.Text = reader.GetInt32(19)

'                Eval_DominioPropio1.Text = reader.GetInt32(20)

'                Eval_Rectitud1.Text = reader.GetInt32(21)

'                Eval_TomadeDecisiones1.Text = reader.GetInt32(22)

'                Eval_Sinceridad1.Text = reader.GetInt32(23)

'                Eval_ProySerenidad1.Text = reader.GetInt32(24)

'                Eval_SentidoComun1.Text = reader.GetInt32(25)

'                BuenJuicio1.Text = reader.GetInt32(26)

'                Eval_TrabajoComunicacion1.Text = reader.GetInt32(27)

'                Eval_habilidadCooperacion1.Text = reader.GetInt32(28)

'                Eval_habilidadEquipo1.Text = reader.GetInt32(29)

'                Eval_FacilitaDialogo1.Text = reader.GetInt32(30)

'                Eval_EducacionUrbanidad1.Text = reader.GetInt32(31)

'                Eval_HumorAfabilidad1.Text = reader.GetInt32(32)

'                Eval_EscuchaOpinion1.Text = reader.GetInt32(33)

'                Eval_AyudaOtros1.Text = reader.GetInt32(34)

'                Eval_FortaDebilidades1.Text = reader.GetInt32(35)

'                Eval_PerservanciaLogros1.Text = reader.GetInt32(36)

'                Eval_OralEscrita1.Text = reader.GetInt32(37)

'                Recomienda1.Text = reader.GetString(38)

'                PorqueRecomienda1.Text = reader.GetString(39)


'            End While
'            cnDB.Close()

'        Catch ex As Exception
'            Response.Write("<script>alert('Imposible Atender su solicitud, De persistir el problema comuniquese el Programa de Honor UPRB'); </script>")
'        End Try



'    End Sub

'End Class