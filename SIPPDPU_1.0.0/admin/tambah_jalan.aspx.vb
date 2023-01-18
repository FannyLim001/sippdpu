Imports System.Data.SqlClient
Imports System.IO

Public Class tambah_jalan
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (String.IsNullOrEmpty(Session("email"))) Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub btn_tambah_jalan_Click(sender As Object, e As EventArgs) Handles btn_tambah_jalan.Click
        Dim bytes As Byte()
        Using br As BinaryReader = New BinaryReader(foto_jalan.PostedFile.InputStream)
            bytes = br.ReadBytes(foto_jalan.PostedFile.ContentLength)
        End Using
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query As String = "INSERT INTO jalan (nama_jalan,lokasi,status,foto_jalan) VALUES(@nama,@lokasi,@status,@foto)"
        Dim sqlCmd = New SqlCommand(query, con)
        sqlCmd.Parameters.AddWithValue("@nama", nama_jalan.Text)
        sqlCmd.Parameters.AddWithValue("@lokasi", lokasi_jalan.Text)
        sqlCmd.Parameters.AddWithValue("@status", status_jalan.Text)
        sqlCmd.Parameters.AddWithValue("@foto", bytes)
        sqlCmd.ExecuteNonQuery()
        Response.Redirect("perbaikan_jalan.aspx")
        con.Close()
    End Sub
End Class