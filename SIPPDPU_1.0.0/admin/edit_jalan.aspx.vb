Imports System.Data.SqlClient
Imports System.IO

Public Class edit_jalan
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (String.IsNullOrEmpty(Session("email"))) Then
            Response.Redirect("login.aspx")
        End If
        If Not Me.IsPostBack Then
            Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
            con.Open()
            Dim query As String = "SELECT * FROM jalan WHERE id_jalan=@id"
            Dim sqlCmd = New SqlCommand(query, con)
            sqlCmd.Parameters.AddWithValue("@id", Session("id_jalan"))
            Dim reader As SqlDataReader = sqlCmd.ExecuteReader()
            While (reader.Read)
                nama_jalan.Text = reader.GetString(1)
                lokasi_jalan.Text = reader.GetString(2)
                status_jalan.Text = reader.GetString(3)
            End While
        End If
    End Sub

    Protected Sub btn_edit_jalan_Click(sender As Object, e As EventArgs) Handles btn_edit_jalan.Click
        Dim bytes As Byte()
        Using br As BinaryReader = New BinaryReader(foto_jalan.PostedFile.InputStream)
            bytes = br.ReadBytes(foto_jalan.PostedFile.ContentLength)
        End Using
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query As String = "UPDATE jalan SET nama_jalan=@nama,lokasi=@lokasi,status=@status,foto_jalan=@foto WHERE id_jalan=@id"
        Dim sqlCmd = New SqlCommand(query, con)
        sqlCmd.Parameters.AddWithValue("@nama", nama_jalan.Text)
        sqlCmd.Parameters.AddWithValue("@lokasi", lokasi_jalan.Text)
        sqlCmd.Parameters.AddWithValue("@status", status_jalan.Text)
        sqlCmd.Parameters.AddWithValue("@foto", bytes)
        sqlCmd.Parameters.AddWithValue("@id", Session("id_jalan"))
        sqlCmd.ExecuteNonQuery()
        Response.Redirect("perbaikan_jalan.aspx")
        con.Close()
    End Sub
End Class