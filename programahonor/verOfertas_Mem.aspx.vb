Imports System.Configuration
Imports System.Data
Imports System.Text
Imports System.Data.SqlClient
Public Class verOfertas_Mem
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            'Populating a DataTable from database.
            'Dim dt As DataSet = Me.GetData()

            Dim cox As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
            Dim cnDB As SqlConnection = New SqlConnection(cox)
            Dim command As New SqlCommand() 'instanciamiento de la conexion a la BD
            command.Connection = cnDB 'Cocatenar cadena de conexion de la base de datos a la instancia
            command.CommandType = CommandType.StoredProcedure 'Inidcar al command que debera emplear un Store Procedure
            command.CommandText = "LeerOferta" 'Asignacion del StoreProcedure a emplear

            Try
                cnDB.Open()
                Dim reader As SqlDataReader = command.ExecuteReader()
                Dim contar As Integer = command.Parameters.Count
                While (reader.Read())

                    For_CompanyName.Text = reader.GetString(0)
                    For_Salary.Text = reader.GetString(1)
                    For_OtherBenefits.Text = reader.GetString(2)

                    For_ContactName.Text = reader.GetString(3)
                    For_ContactOtherPhone.Text = reader.GetString(4)
                    For_contactFax.Text = reader.GetString(5)
                    For_CompanyPhysicalAddress.Text = reader.GetString(6)
                    For_CompanyPostalAddress.Text = reader.GetString(7)

                    For_Comments.Text = reader.GetString(8)

                    For_CompanyEmail.Text = reader.GetString(9)
                    For_CompanyWebPage.Text = reader.GetString(10)


                End While
                reader.Close()
                cnDB.Close()
            Catch ex As Exception
                Response.Write("WHAT")
            End Try

        End If
    End Sub
End Class