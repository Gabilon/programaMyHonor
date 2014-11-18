Imports System.Data.SqlClient
Imports System.Security.Cryptography
Imports System.IO

Public Class Registro
    Inherits System.Web.UI.Page

    Protected EncryptedText As String
    Protected DecryptedText As String

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click

        'MsgBox(Encrypt(Stu_Password.Text))

        Dim cnDB As New SqlClient.SqlConnection
        cnDB.ConnectionString = "Data Source=ING_ALM03;User ID=waph;Password=waph!admin;"
        Dim command As New SqlCommand("AddUserRegistration", cnDB)
        command.CommandType = CommandType.StoredProcedure
        cnDB.Open()

        Stu_Password.Text = Encrypt(Stu_Password.Text)
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

    Protected Function Encrypt(password As String) As String

        Dim passwordHashSha1 As String = _
               SimpleHash.ComputeHash(password, "SHA1", Nothing)
        'Nothing es el salt
        'Añadir el primary key de los estudiantes para salt para mejor proteccion

        Return passwordHashSha1
    End Function

    ' Esta funcion sirve para cuando el estudiante quiere hacer login
    Protected Function verifyHash(password As String) As Boolean
        Dim passwordHashSha1 As String = _
              SimpleHash.ComputeHash(password, "SHA1", Nothing)

        Dim verification As Boolean =
            SimpleHash.VerifyHash(password, "SHA1", passwordHashSha1)

        Return verification
    End Function

End Class