Imports System.Data.SqlClient
Public Class login
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        errorMessage.Visible = False
    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query As String = "SELECT * FROM admin where email=@email and password=@password"
        Dim sqlCmd = New SqlCommand(query, con)
        sqlCmd.Parameters.AddWithValue("@email", txtEmail.Text)
        sqlCmd.Parameters.AddWithValue("@password", txtPassword.Text)
        Dim count As Int32 = Convert.ToInt32(sqlCmd.ExecuteScalar())
        If count = 1 Then
            Session("email") = txtEmail.Text
            Response.Redirect("dashboard.aspx")
        Else
            errorMessage.Visible = True
        End If
    End Sub
End Class