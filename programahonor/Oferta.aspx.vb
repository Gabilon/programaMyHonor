Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Net
Imports System.Net.Mail
Public Class Oferta
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        btnActualizarOferta.Visible = False

    End Sub

    Protected Sub btnGuardarOferta_Click(sender As Object, e As EventArgs) Handles btnGuardarOferta.Click
        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("AddOferta", cnDB)
        Dim oferta_id As String
        oferta_id = System.Guid.NewGuid().ToString()

        command.CommandType = CommandType.StoredProcedure

        command.Parameters.Add("@oferta_id", SqlDbType.VarChar).Value = oferta_id

        command.Parameters.Add("@ofr_CompanyName", SqlDbType.VarChar).Value = For_CompanyName.Text
        command.Parameters.Add("@ofr_Salary", SqlDbType.VarChar).Value = For_Salary.Text
        command.Parameters.Add("@ofr_Extracurricular", SqlDbType.VarChar).Value = For_Extracurricular.Text
        command.Parameters.Add("@ofr_OtherBenefits", SqlDbType.VarChar).Value = For_OtherBenefits.Text
        command.Parameters.Add("@ofr_Schedule", SqlDbType.VarChar).Value = For_Schedule.Text
        command.Parameters.Add("@ofr_Requirements", SqlDbType.VarChar).Value = For_Requirements.Text

        command.Parameters.Add("@ofr_Tasks", SqlDbType.Text).Value = For_Tasks.Text

        command.Parameters.Add("@ofr_ContactName", SqlDbType.VarChar).Value = For_ContactName.Text
        command.Parameters.Add("@ofr_ContactPosition", SqlDbType.VarChar).Value = For_ContactPosition.Text
        command.Parameters.Add("@ofr_ContactExt", SqlDbType.VarChar).Value = For_ContactExt.Text
        command.Parameters.Add("@ofr_ContactOtherPhone", SqlDbType.VarChar).Value = For_ContactOtherPhone.Text
        command.Parameters.Add("@ofr_ContactFax", SqlDbType.VarChar).Value = For_contactFax.Text
        command.Parameters.Add("@ofr_CompanyPhysicalAddress", SqlDbType.VarChar).Value = For_CompanyPhysicalAddress.Text
        command.Parameters.Add("@ofr_CompanyPostalAddress", SqlDbType.VarChar).Value = For_CompanyPostalAddress.Text

        command.Parameters.Add("@ofr_Comments", SqlDbType.Text).Value = For_Comments.Text

        command.Parameters.Add("@ofr_CompanyEmail", SqlDbType.VarChar).Value = For_CompanyEmail.Text
        command.Parameters.Add("@ofr_CompanyWebPage", SqlDbType.VarChar).Value = For_CompanyWebPage.Text

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

        ' Response.Redirect("~/")

    End Sub

    Protected Sub btnActualizarOferta_Click(sender As Object, e As EventArgs) Handles btnActualizarOferta.Click

        Dim cadena As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Dim cnDB As SqlConnection = New SqlConnection(cadena)
        Dim command As New SqlCommand("UpdateOferta", cnDB)
        command.CommandType = CommandType.StoredProcedure
        command.Parameters.Add("@ofr_CompanyName", SqlDbType.VarChar).Value = For_CompanyName.Text
        command.Parameters.Add("@ofr_Salary", SqlDbType.VarChar).Value = For_Salary.Text
        command.Parameters.Add("@ofr_Extracurricular", SqlDbType.VarChar).Value = For_Extracurricular.Text
        command.Parameters.Add("@ofr_OtherBenefits", SqlDbType.VarChar).Value = For_OtherBenefits.Text
        command.Parameters.Add("@ofr_Schedule", SqlDbType.VarChar).Value = For_Schedule.Text
        command.Parameters.Add("@ofr_Requirements", SqlDbType.VarChar).Value = For_Requirements.Text
        command.Parameters.Add("@ofr_Tasks", SqlDbType.Text).Value = For_Tasks.Text
        command.Parameters.Add("@ofr_ContactName", SqlDbType.VarChar).Value = For_ContactName.Text
        command.Parameters.Add("@ofr_ContactPosition", SqlDbType.VarChar).Value = For_ContactPosition.Text
        command.Parameters.Add("@ofr_ContactExt", SqlDbType.VarChar).Value = For_ContactExt.Text
        command.Parameters.Add("@ofr_ContactOtherPhone", SqlDbType.VarChar).Value = For_ContactOtherPhone.Text
        command.Parameters.Add("@ofr_ContactFax", SqlDbType.VarChar).Value = For_contactFax.Text
        command.Parameters.Add("@ofr_CompanyPhysicalAddress", SqlDbType.VarChar).Value = For_CompanyPhysicalAddress.Text
        command.Parameters.Add("@ofr_CompanyPostalAddress", SqlDbType.VarChar).Value = For_CompanyPostalAddress.Text
        command.Parameters.Add("@ofr_Comments", SqlDbType.Text).Value = For_Comments.Text
        command.Parameters.Add("@ofr_CompanyEmail", SqlDbType.VarChar).Value = For_CompanyEmail.Text
        command.Parameters.Add("@ofr_CompanyWebPage", SqlDbType.VarChar).Value = For_CompanyWebPage.Text
        'command.Parameters.Add("@ofr_AplicationDAte", SqlDbType.Date).Value = Date.Today().ToString("D")
        'command.Parameters.Add("@ofr_Status", SqlDbType.VarChar).Value = "solicitando"
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