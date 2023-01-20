Imports System.Data.SqlClient

Public Class tambah_pengaduan
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (String.IsNullOrEmpty(Session("email"))) Then
            Response.Redirect("login.aspx")
        End If
        If Not Me.IsPostBack Then
            Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
            con.Open()
            Dim query As String = "SELECT * FROM pengaduan WHERE id_pengaduan=@id"
            Dim sqlCmd = New SqlCommand(query, con)
            sqlCmd.Parameters.AddWithValue("@id", Session("id_pengaduan"))
            Dim reader As SqlDataReader = sqlCmd.ExecuteReader()
            While (reader.Read)
                nama_pengadu.Text = reader.GetString(1)
                email_pengadu.Text = reader.GetString(2)
                subjek_pengadu.Text = reader.GetString(3)
                pesan_pengadu.Text = reader.GetString(4)
                respon.Text = reader.GetString(5)
            End While
        End If

    End Sub

    Protected Sub btn_kirim_respon_Click(sender As Object, e As EventArgs) Handles btn_kirim_respon.Click
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query As String = "UPDATE pengaduan SET respon=@respon,status='Direspon' WHERE id_pengaduan=@id"
        Dim sqlCmd = New SqlCommand(query, con)
        sqlCmd.Parameters.AddWithValue("@respon", respon.Text)
        sqlCmd.Parameters.AddWithValue("@id", Session("id_pengaduan"))
        sqlCmd.ExecuteNonQuery()
        Response.Redirect("pengaduan.aspx")
        con.Close()
    End Sub
End Class