Imports System.Data.SqlClient

Public Class edit_admin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (String.IsNullOrEmpty(Session("email"))) Then
            Response.Redirect("login.aspx")
        End If
        If Not Me.IsPostBack Then
            Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
            con.Open()
            Dim query As String = "SELECT * FROM admin WHERE id_admin=@id"
            Dim sqlCmd = New SqlCommand(query, con)
            sqlCmd.Parameters.AddWithValue("@id", Session("id_admin"))
            Dim reader As SqlDataReader = sqlCmd.ExecuteReader()
            While (reader.Read)
                txt_email.Text = reader.GetString(1)
                txt_password.Text = reader.GetString(2)
                txt_username.Text = reader.GetString(3)
            End While
        End If

    End Sub

    Protected Sub btn_edit_admin_Click(sender As Object, e As EventArgs) Handles btn_edit_admin.Click
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query As String = "UPDATE admin SET email=@email,password=@password,username=@username WHERE id_admin=@id"
        Dim sqlCmd = New SqlCommand(query, con)
        sqlCmd.Parameters.AddWithValue("@email", txt_email.Text)
        sqlCmd.Parameters.AddWithValue("@password", txt_password.Text)
        sqlCmd.Parameters.AddWithValue("@username", txt_username.Text)
        sqlCmd.Parameters.AddWithValue("@id", Session("id_admin"))
        sqlCmd.ExecuteNonQuery()
        Response.Redirect("kelola_admin.aspx")
        con.Close()
    End Sub
End Class