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
        jalan_Table.DataSource = sqlCmd.ExecuteReader()
        jalan_Table.DataBind()
    End Sub

    Protected Sub edit_jalan_Command(sender As Object, e As CommandEventArgs)
        Session("id_jalan") = e.CommandArgument
        Response.Redirect("edit_jalan.aspx")
    End Sub

    Protected Sub hapus_jalan_Command(sender As Object, e As CommandEventArgs)
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query As String = "DELETE FROM jalan WHERE id_jalan=@id"
        Dim sqlCmd = New SqlCommand(query, con)
        sqlCmd.Parameters.AddWithValue("@id", e.CommandArgument)
        sqlCmd.ExecuteNonQuery()
        Response.Write("<script>alert('Jalan berhasil dihapus!')</script>")
        con.Close()
    End Sub
End Class