Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Public Class FormularioActividades
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button_Click(sender As Object, e As EventArgs) Handles Button.Click
        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("Actividadess", cnDB)
        command.CommandType = CommandType.StoredProcedure
        command.Parameters.Add("@Act_nombre", SqlDbType.UniqueIdentifier).Value = Actividades__Nombre
        command.Parameters.Add("@Act_Fecha", SqlDbType.Date).Value = Actividades_Fecha
        command.Parameters.Add("@Act_Lugar", SqlDbType.VarChar).Value = Actividades_Lugar.Text
        command.Parameters.Add("@Act_Descripcion", SqlDbType.VarChar).Value = Actividades_Descripcion.Text
        command.Parameters.Add("@Act_Imagen1", SqlDbType.Image).Value = Actividades_Imagen1
        command.Parameters.Add("@Act_Imagen2", SqlDbType.Image).Value = Actividades_Imagen2
        command.Parameters.Add("@Act_Imagen3", SqlDbType.Image).Value = Actividades_Imagen3
	


    End Sub
End Class