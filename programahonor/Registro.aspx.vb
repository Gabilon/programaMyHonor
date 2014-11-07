Imports System.Data.SqlClient

Public Class Registro
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        Dim cnDB As New SqlClient.SqlConnection
        cnDB.ConnectionString = "Data Source=ING_ALM03;User ID=waph;Password=waph!admin;"
        Dim command As New SqlCommand("AddUserRegistration", cnDB)
        command.CommandType = CommandType.StoredProcedure
        cnDB.Open()

        command.Parameters.Add("@Stu_User", SqlDbType.VarChar).Value = Stu_User.Text
        command.Parameters.Add("@Stu_Password", SqlDbType.VarChar).Value = Stu_Password.Text


        Try
            command.ExecuteNonQuery()
            cnDB.Close()
            MsgBox("Successfully")

        Catch ex As Exception
            MsgBox("Don't Open Connection")
        End Try

        Response.Redirect("Aplicar.aspx")

    End Sub
End Class