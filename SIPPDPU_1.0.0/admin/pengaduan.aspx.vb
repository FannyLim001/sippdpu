Imports System.Data.SqlClient

Public Class pengaduan
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
        Dim query As String = "SELECT * FROM pengaduan"
        Dim sqlCmd = New SqlCommand(query, con)
        tabel_pengaduan.DataSource = sqlCmd.ExecuteReader()
        tabel_pengaduan.DataBind()
    End Sub

End Class