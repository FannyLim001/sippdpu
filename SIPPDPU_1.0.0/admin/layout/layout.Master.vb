Public Class layout1
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        username.Text = Session("email")
    End Sub

    Protected Sub link_logout_Click(sender As Object, e As EventArgs) Handles link_logout.Click
        Session.Abandon()
        Response.Redirect("login.aspx")
    End Sub
End Class