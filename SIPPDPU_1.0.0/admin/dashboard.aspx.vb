Imports System.Data.SqlClient

Public Class dashboard
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (String.IsNullOrEmpty(Session("email"))) Then
            Response.Redirect("login.aspx")
        End If
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query1 As String = "SELECT COUNT(*) from pengaduan"
        Dim query2 As String = "SELECT COUNT(*) from jalan where status=Selesai"
        Dim query3 As String = "SELECT COUNT(*) from admin"

        Dim sqlCmd1 = New SqlCommand(query1, con)
        total_pengaduan.Text = sqlCmd1.ExecuteReader().ToString()
        con.Close()

    End Sub

End Class