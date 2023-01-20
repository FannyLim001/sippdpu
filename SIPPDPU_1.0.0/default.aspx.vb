Imports System.Data.SqlClient

Public Class index
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            'Populating a DataTable from database.
            Dim dt As DataTable = Me.GetData()

            'Building an HTML string.
            Dim html As New StringBuilder()

            'Table start.
            html.Append("<table class = 'table'>")

            'Building the Header row.
            html.Append("<tr>")
            For Each column As DataColumn In dt.Columns
                html.Append("<th>")
                html.Append(column.ColumnName)
                html.Append("</th>")
            Next
            html.Append("</tr>")

            'Building the Data rows.
            For Each row As DataRow In dt.Rows
                html.Append("<tr>")
                For Each column As DataColumn In dt.Columns
                    html.Append("<td>")
                    html.Append(row(column.ColumnName))
                    html.Append("</td>")
                Next
                html.Append("</tr>")
            Next

            'Table end.
            html.Append("</table>")

            'Append the HTML string to Placeholder.
            respon_table.Controls.Add(New Literal() With {
          .Text = html.ToString()
        })
        End If
    End Sub

    Private Function GetData() As DataTable
        Using con As New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
            Using cmd As New SqlCommand("SELECT nama_pengadu as Nama,email_pengadu as Email,subjek as Subjek,pesan as Pesan,respon as Respon FROM pengaduan WHERE status='Direspon'")
                Using sda As New SqlDataAdapter()
                    cmd.Connection = con
                    sda.SelectCommand = cmd
                    Using dt As New DataTable()
                        sda.Fill(dt)
                        Return dt
                    End Using
                End Using
            End Using
        End Using
    End Function

    Protected Sub btn_kirim_pengaduan_Click(sender As Object, e As EventArgs) Handles btn_kirim_pengaduan.Click
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query As String = "INSERT INTO pengaduan (nama_pengadu,email_pengadu,subjek,pesan,status,tanggal) VALUES(@nama_pengadu,@email_pengadu,@subjek,@pesan,@status,@tanggal)"
        Dim sqlCmd = New SqlCommand(query, con)
        sqlCmd.Parameters.AddWithValue("@nama_pengadu", nama_pengadu.Text)
        sqlCmd.Parameters.AddWithValue("@email_pengadu", email_pengadu.Text)
        sqlCmd.Parameters.AddWithValue("@subjek", subjek_pengadu.Text)
        sqlCmd.Parameters.AddWithValue("@pesan", pesan_pengadu.Text)
        sqlCmd.Parameters.AddWithValue("@status", "Belum direspon")
        sqlCmd.Parameters.AddWithValue("@tanggal", Date.Now)
        sqlCmd.ExecuteNonQuery()
        Response.Write("<script>alert('Pengaduan berhasil dikirim!')</script>")
        con.Close()
    End Sub
End Class