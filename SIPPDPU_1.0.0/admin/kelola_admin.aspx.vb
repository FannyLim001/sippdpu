Imports System.Data.SqlClient

Public Class kelola_admin
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
        Dim query As String = "SELECT * FROM admin"
        Dim sqlCmd = New SqlCommand(query, con)
        admin_table.DataSource = sqlCmd.ExecuteReader()
        admin_table.DataBind()
    End Sub

    Protected Sub edit_admin_Command(sender As Object, e As CommandEventArgs)
        Session("id_admin") = e.CommandArgument
        Response.Redirect("edit_admin.aspx")
    End Sub

    Protected Sub hapus_admin_Command(sender As Object, e As CommandEventArgs)
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query As String = "DELETE FROM admin WHERE id_admin=@id"
        Dim sqlCmd = New SqlCommand(query, con)
        sqlCmd.Parameters.AddWithValue("@id", e.CommandArgument)
        sqlCmd.ExecuteNonQuery()
        Response.Write("<script>alert('Admin berhasil dihapus!')</script>")
        con.Close()
    End Sub
End Class