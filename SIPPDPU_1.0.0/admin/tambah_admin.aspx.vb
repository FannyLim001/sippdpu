Imports System.Data.SqlClient

Public Class tambah_admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (String.IsNullOrEmpty(Session("email"))) Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub btn_tambah_admin_Click(sender As Object, e As EventArgs) Handles btn_tambah_admin.Click
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query As String = "INSERT INTO admin (email,password,username) VALUES(@email,@password,@username)"
        Dim sqlCmd = New SqlCommand(query, con)
        sqlCmd.Parameters.AddWithValue("@email", admin_email.Text)
        sqlCmd.Parameters.AddWithValue("@password", admin_password.Text)
        sqlCmd.Parameters.AddWithValue("@username", admin_username.Text)
        sqlCmd.ExecuteNonQuery()
        Response.Redirect("kelola_admin.aspx")
        con.Close()
    End Sub
End Class