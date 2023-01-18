Imports System.Data.SqlClient

Public Class perbaikan_jalan
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (String.IsNullOrEmpty(Session("email"))) Then
            Response.Redirect("login.aspx")
        End If
        If Not Me.IsPostBack Then
            Me.BindGrid()
        End If
    End Sub

    Private Sub BindGrid()
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query As String = "SELECT * FROM jalan"
        Dim sqlCmd = New SqlCommand(query, con)
        tabel_jalan.DataSource = sqlCmd.ExecuteReader()
        tabel_jalan.DataBind()
    End Sub

End Class