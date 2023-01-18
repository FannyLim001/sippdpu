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
        tabel_admin.DataSource = sqlCmd.ExecuteReader()
        tabel_admin.DataBind()
    End Sub

    Protected Sub tabel_admin_RowEditing(sender As Object, e As GridViewEditEventArgs) Handles tabel_admin.RowEditing
        tabel_admin.EditIndex = e.NewEditIndex
        Me.BindGrid()
    End Sub

    Protected Sub tabel_admin_RowUpdating(sender As Object, e As GridViewUpdateEventArgs) Handles tabel_admin.RowUpdating
        Dim row As GridViewRow = tabel_admin.Rows(e.RowIndex)
        Dim adminId As Integer = Convert.ToInt32(tabel_admin.DataKeys(e.RowIndex).Values(0))
        Dim email As String = TryCast(row.Cells(2).Controls(0), TextBox).Text
        Dim password As String = TryCast(row.Cells(3).Controls(0), TextBox).Text
        Dim username As String = TryCast(row.Cells(4).Controls(0), TextBox).Text
        Using con As New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
            Using cmd As New SqlCommand("UPDATE admin SET email = @email, password = @password, username = @username WHERE id_admin = @adminId")
                cmd.Parameters.AddWithValue("@adminId", adminId)
                cmd.Parameters.AddWithValue("@email", email)
                cmd.Parameters.AddWithValue("@password", password)
                cmd.Parameters.AddWithValue("@username", username)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using
        tabel_admin.EditIndex = -1
        Me.BindGrid()
    End Sub

    Protected Sub tabel_admin_RowDeleting(sender As Object, e As GridViewDeleteEventArgs) Handles tabel_admin.RowDeleting
        Dim adminId As Integer = Convert.ToInt32(tabel_admin.DataKeys(e.RowIndex).Values(0))
        Using con As New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
            Using cmd As New SqlCommand("DELETE FROM admin WHERE id_admin = @adminId")
                cmd.Parameters.AddWithValue("@adminId", adminId)
                cmd.Connection = con
                con.Open()
                cmd.ExecuteNonQuery()
                con.Close()
            End Using
        End Using
        Me.BindGrid()
    End Sub

    Protected Sub tabel_admin_RowCancelingEdit(sender As Object, e As GridViewCancelEditEventArgs) Handles tabel_admin.RowCancelingEdit
        tabel_admin.EditIndex = -1
        Me.BindGrid()
    End Sub
End Class