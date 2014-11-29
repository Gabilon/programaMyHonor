Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Public Class Evaluacion
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub




   
    Protected Sub Eval_button_Click(sender As Object, e As EventArgs) Handles Eval_button.Click
        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddEnsayoStudents", cnDB)
        command.CommandType = CommandType.StoredProcedure
        command.Parameters.Add("@EvaluadorId", SqlDbType.UniqueIdentifier).Value = ""
        command.Parameters.Add("@StudentNumber", SqlDbType.VarChar).Value = ""
        command.Parameters.Add("@Eval_AsociacionEst", SqlDbType.VarChar).Value = Eval_AsociacionEst.Text
        command.Parameters.Add("@Eval_ConoceEst", SqlDbType.VarChar).Value = Eval_ConoceEs.Text
        command.Parameters.Add("@Eval_TiempoConEs", SqlDbType.VarChar).Value = Eval_tiempo.Text
        command.Parameters.Add("@Eval_OpinionProEst", SqlDbType.Text).Value = Eval_OpinionProfEst.Text
        command.Parameters.Add("@Eval_FaltaEst", SqlDbType.VarChar).Value = Eval_FaltaEst.Text
        command.Parameters.Add("@Eval_FaltaEsttxt", SqlDbType.Text).Value = Eval_FaltaEsttxt.Text
        command.Parameters.Add("@Eval_Tarea", SqlDbType.Int).Value = Eval_Tarea.Text
        command.Parameters.Add("@Eval_Cumplimiento", SqlDbType.Int).Value = Eval_Cumplimiento.Text()
        command.Parameters.Add("@Eval_UsoTiempo", SqlDbType.Int).Value = Eval_UsoTiempo.Text
        command.Parameters.Add("@Eval_CumpleHorario", SqlDbType.Int).Value = Eval_Horario.Text
        command.Parameters.Add("@Eval_OrdenEstudiante", SqlDbType.Int).Value = Eval_OrdenEstudiante.Text
        command.Parameters.Add("@Eval_Procedimiento", SqlDbType.Int).Value = Eval_Procedimiento.Text
        command.Parameters.Add("@Eval_AjustaNormas", SqlDbType.Int).Value = Eval_AjustaNormas.Text
        command.Parameters.Add("@Eval_CalidadTrbajos", SqlDbType.Int).Value = Eval_CalidadTrbajo.Text
        command.Parameters.Add("@Eval_DelegaResponsabilidad", SqlDbType.Int).Value = Eval_DeleganResponsabilidad.Text
        command.Parameters.Add("@Eval_Habilidad_Analisis_Resolver", SqlDbType.Int).Value = Eval_Habilidad_Analisis_Resolver.Text()
        command.Parameters.Add("@Eval_EnfrentarRetos", SqlDbType.Int).Value = Eval_EnfrentarRetos.Text()
        command.Parameters.Add("@Eval_DominioPropio", SqlDbType.Int).Value = Eval_DominioPropio.Text
        command.Parameters.Add("@Eval_Rectitud", SqlDbType.Int).Value = Eval_Rectitud.Text
        command.Parameters.Add("@Eval_TomadeDecisiones", SqlDbType.Int).Value = Eval_TomadeDecisiones.Text
        command.Parameters.Add("@Eval_Sinceridad", SqlDbType.Int).Value = Eval_Sinceridad.Text
        command.Parameters.Add("@Eval_ProySerenidad", SqlDbType.Int).Value = Eval_ProySerenidad.Text
        command.Parameters.Add("@Eval_SentidoComunn", SqlDbType.Int).Value = Eval_SentidoComun.Text
        command.Parameters.Add("@Eval_TrabajoEquipon", SqlDbType.Int).Value = Eval_TrabajoEquipo.Text
        command.Parameters.Add("@Eval_FacilitaDialogo", SqlDbType.Int).Value = Eval_FacilitaDialogo.Text
        command.Parameters.Add("@Eval_EducacionUrbanidad", SqlDbType.Int).Value = Eval_EducacionUrbanidad.Text
        command.Parameters.Add("@Eval_HumorAfabilidad", SqlDbType.Int).Value = Eval_HumorAfabilidad.Text
        command.Parameters.Add("@Eval_EscuchaOpinion", SqlDbType.Int).Value = Eval_EscuchaOpinion.Text
        command.Parameters.Add("@Eval_AyudaOtros", SqlDbType.Int).Value = Eval_AyudaOtros.Text
        command.Parameters.Add("@Eval_FortaDebilidades", SqlDbType.Int).Value = Eval_FortaDebilidades.Text
        command.Parameters.Add("@Eval_PerseveranciaLogros", SqlDbType.Int).Value = Eval_PerservanciaLogros.Text
        command.Parameters.Add("@Eval_ExprOralEscrita", SqlDbType.Int).Value = Eval_OralEscrita.Text


    End Sub
End Class