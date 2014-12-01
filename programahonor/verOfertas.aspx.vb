Imports System.Configuration
Imports System.Data
Imports System.Text
Imports System.Data.SqlClient
Public Class verOfertas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'If Not Me.IsPostBack Then
        '    'Populating a DataTable from database.
        '    'Dim dt As DataSet = Me.GetData()

        '    Dim cox As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        '    Dim cnDB As SqlConnection = New SqlConnection(cox)
        '    Dim command As New SqlCommand() 'instanciamiento de la conexion a la BD
        '    command.Connection = cnDB 'Cocatenar cadena de conexion de la base de datos a la instancia
        '    command.CommandType = CommandType.StoredProcedure 'Inidcar al command que debera emplear un Store Procedure
        '    command.CommandText = "LeerOferta" 'Asignacion del StoreProcedure a emplear

        '    Try
        '        cnDB.Open()
        '        Dim reader As SqlDataReader = command.ExecuteReader()
        '        Dim contar As Integer = command.Parameters.Count
        '        While (reader.Read())

        '            For_CompanyName.Text = reader.GetString(0)
        '            For_Salary.Text()
        '            For_Extracurricular.Text()
        '            For_OtherBenefits.Text()
        '            For_Schedule.Text()
        '            For_Requirements.Text()

        '            For_Tasks.Text()

        '            For_ContactName.Text()
        '            For_ContactPosition.Text()
        '            For_ContactExt.Text()
        '            For_ContactOtherPhone.Text()
        '            For_contactFax.Text()
        '            For_CompanyPhysicalAddress.Text()
        '            For_CompanyPostalAddress.Text()

        '            For_Comments.Text()

        '            For_CompanyEmail.Text()
        '            For_CompanyWebPage.Text()


        '        End While
        '    Catch ex As Exception

        '    End Try

        '    'Building an HTML string.
        '    Dim html As New StringBuilder()

        '    'Table start.
        '    html.Append("<table border = '1'>")

        '    'Building the Header row.
        '    html.Append("<tr>")
        '    For Each column As DataColumn In dt.Tables
        '        html.Append("<th>")
        '        html.Append(column.ColumnName)
        '        html.Append("</th>")
        '    Next
        '    html.Append("</tr>")

        '    'Building the Data rows.
        '    For Each row As DataRow In dt.Tables
        '        html.Append("<tr>")
        '        For Each column As DataColumn In dt.Tables
        '            html.Append("<td>")
        '            html.Append(row(column.ColumnName))
        '            html.Append("</td>")
        '        Next
        '        html.Append("</tr>")
        '    Next

        '    'Table end.
        '    html.Append("</table>")

        '    'Append the HTML string to Placeholder.
        '    PlaceHolder1.Controls.Add(New Literal() With { _
        '      .Text = html.ToString() _
        '    })
        'End If
    End Sub

    Private Function GetData() As DataSet

        Dim cox As String = ConfigurationManager.ConnectionStrings("WAPHConnectionString").ConnectionString
        Using con As New SqlConnection(cox)
            Using cmd As New SqlCommand("SELECT * FROM Oferta")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataSet()
                        sda.Fill(dt)
                        Return dt
                    End Using
                End Using
            End Using
        End Using
    End Function
End Class