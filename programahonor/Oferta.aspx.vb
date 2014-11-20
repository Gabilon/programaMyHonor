Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Public Class Oferta
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardarOferta_Click(sender As Object, e As EventArgs) Handles btnGuardarOferta.Click
        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddOferta", cnDB)
        command.CommandType = CommandType.StoredProcedure

        command.Parameters.Add("@oferta_id", SqlDbType.UniqueIdentifier).Value = ""

        command.Parameters.Add("@For_CompanyName", SqlDbType.VarChar).Value = For_CompanyName.Text
        command.Parameters.Add("@For_Salary", SqlDbType.VarChar).Value = For_Salary.Text
        command.Parameters.Add("@For_Extracurricular", SqlDbType.VarChar).Value = For_Extracurricular.Text
        command.Parameters.Add("@For_OtherBenefits", SqlDbType.VarChar).Value = For_OtherBenefits.Text
        command.Parameters.Add("@For_Schedule", SqlDbType.VarChar).Value = For_Schedule.Text
        command.Parameters.Add("@For_Requirements", SqlDbType.VarChar).Value = For_Requirements.Text

        command.Parameters.Add("@For_Tasks", SqlDbType.Text).Value = For_Tasks.Text

        command.Parameters.Add("@For_ContactName", SqlDbType.VarChar).Value = For_ContactName.Text
        command.Parameters.Add("@For_ContactPosition", SqlDbType.VarChar).Value = For_ContactPosition.Text
        command.Parameters.Add("@For_ContactExt", SqlDbType.VarChar).Value = For_ContactExt.Text
        command.Parameters.Add("@For_ContactOtherPhone", SqlDbType.VarChar).Value = For_ContactOtherPhone.Text
        command.Parameters.Add("@For_ContactFax", SqlDbType.VarChar).Value = For_contactFax.Text
        command.Parameters.Add("@For_CompanyPhysicalAddress", SqlDbType.VarChar).Value = For_CompanyPhysicalAddress.Text
        command.Parameters.Add("@For_CompanyPostalAddress", SqlDbType.VarChar).Value = For_CompanyPostalAddress.Text

        command.Parameters.Add("@For_Comments", SqlDbType.Text).Value = For_Comments.Text

        command.Parameters.Add("@For_CompanyEmail", SqlDbType.VarChar).Value = For_CompanyEmail.Text
        command.Parameters.Add("@For_CompanyWebPage", SqlDbType.VarChar).Value = For_CompanyWebPage.Text

        command.Parameters.Add("@fecha_creacion", SqlDbType.Date).Value = Date.Today().ToString("D")
        command.Parameters.Add("@usuario_creacion", SqlDbType.VarChar).Value = Session("usuario").ToString()
        'command.Parameters.Add("@fecha_actualizo", SqlDbType.Date).Value = fecha_actualizo.Date
        'command.Parameters.Add("@usuario_actualizo", SqlDbType.VarChar).Value = usuario_actualizo.Text

    End Sub
End Class