Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Public Class FormularioActividades
    Inherits System.Web.UI.Page

    Private Property Random As Object

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button_Click(sender As Object, e As EventArgs) Handles Button.Click
        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddActividades", cnDB)
        command.CommandType = CommandType.StoredProcedure
        Dim ID As String
        ID = System.Guid.NewGuid().ToString()
        command.Parameters.Add("@Actividad_Id", SqlDbType.VarChar).Value = ID
        command.Parameters.Add("@Act_nombre", SqlDbType.VarChar).Value = Actividades__Nombre.Text

        command.Parameters.Add("@Act_Fecha", SqlDbType.Date).Value = Date.ParseExact(Actividades_Fecha.Text.ToString(), "MM/dd/yyyy", System.Globalization.DateTimeFormatInfo.InvariantInfo)

        command.Parameters.Add("@Act_Lugar", SqlDbType.Text).Value = Actividades_Lugar.Text
        command.Parameters.Add("@Act_Descripcion", SqlDbType.VarChar).Value = Actividades_Descripcion.Text
       
        command.Parameters.Add("@Act_Imagen1", SqlDbType.VarChar).Value = Actividades_Imagen1.FileName
        command.Parameters.Add("@Act_Imagen2", SqlDbType.VarChar).Value = Actividades_Imagen2.FileName
        command.Parameters.Add("@Act_Imagen3", SqlDbType.VarChar).Value = Actividades_Imagen3.FileName
        'Try
        cnDB.Open()
        command.ExecuteNonQuery()
        cnDB.Close()

        Response.Write("<script>alert('Información Guardada'); </script>")

        'Catch ex As Exception

        '    Response.Write("<script>alert('Información No Guardada'); </script>")

        'End Try


    End Sub
End Class