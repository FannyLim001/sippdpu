Imports System.Data.SqlClient

Public Class dashboard
    Inherits System.Web.UI.Page

    Public total_jalan_rusak As Integer
    Public jalan_diperbaiki As Integer
    Public jan As Integer
    Public feb As Integer
    Public mar As Integer
    Public apr As Integer
    Public mei As Integer
    Public jun As Integer
    Public jul As Integer
    Public agu As Integer
    Public sept As Integer
    Public okt As Integer
    Public nov As Integer
    Public dec As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (String.IsNullOrEmpty(Session("email"))) Then
            Response.Redirect("login.aspx")
        End If
        Dim con = New SqlConnection("Data Source=(localdb)\MSSQLLOCALDB;Initial Catalog=sippdpu;Integrated Security=True")
        con.Open()
        Dim query1 As String = "SELECT COUNT(*) from pengaduan"
        Dim query2 As String = "SELECT COUNT(*) from jalan where status IN ('Proses','Selesai')"
        Dim query3 As String = "SELECT COUNT(*) from admin"
        Dim jalan_rusak As String = "SELECT COUNT(*) from jalan WHERE status IN('Belum ditinjau','Ditinjau')"

        Dim sqlCmd1 = New SqlCommand(query1, con)
        Dim count_pengaduan = Convert.ToInt32(sqlCmd1.ExecuteScalar())
        total_pengaduan.Text = Convert.ToString(count_pengaduan)

        Dim sqlCmd2 = New SqlCommand(query2, con)
        jalan_diperbaiki = Convert.ToInt32(sqlCmd2.ExecuteScalar())
        total_jalan_diperbaiki.Text = Convert.ToString(jalan_diperbaiki)

        Dim sqlCmd3 = New SqlCommand(query3, con)
        Dim count_admin = Convert.ToInt32(sqlCmd3.ExecuteScalar())
        total_admin.Text = Convert.ToString(count_admin)

        Dim sqlCmd4 = New SqlCommand(jalan_rusak, con)
        total_jalan_rusak = Convert.ToInt32(sqlCmd4.ExecuteScalar())

        Dim pengaduan_jan As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=1 and YEAR(tanggal)=2023"
        Dim pengaduan_feb As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=2 and YEAR(tanggal)=2023"
        Dim pengaduan_mar As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=3 and YEAR(tanggal)=2023"
        Dim pengaduan_apr As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=4 and YEAR(tanggal)=2023"
        Dim pengaduan_mei As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=5 and YEAR(tanggal)=2023"
        Dim pengaduan_jun As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=6 and YEAR(tanggal)=2023"
        Dim pengaduan_jul As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=7 and YEAR(tanggal)=2023"
        Dim pengaduan_agu As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=8 and YEAR(tanggal)=2023"
        Dim pengaduan_sept As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=9 and YEAR(tanggal)=2023"
        Dim pengaduan_okt As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=10 and YEAR(tanggal)=2023"
        Dim pengaduan_nov As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=11 and YEAR(tanggal)=2023"
        Dim pengaduan_dec As String = "SELECT COUNT(*) from pengaduan WHERE MONTH(tanggal)=12 and YEAR(tanggal)=2023"

        Dim sqlCmd5 = New SqlCommand(pengaduan_jan, con)
        jan = Convert.ToInt32(sqlCmd5.ExecuteScalar())

        Dim sqlCmd6 = New SqlCommand(pengaduan_feb, con)
        feb = Convert.ToInt32(sqlCmd6.ExecuteScalar())

        Dim sqlCmd7 = New SqlCommand(pengaduan_mar, con)
        mar = Convert.ToInt32(sqlCmd7.ExecuteScalar())

        Dim sqlCmd8 = New SqlCommand(pengaduan_apr, con)
        apr = Convert.ToInt32(sqlCmd8.ExecuteScalar())

        Dim sqlCmd9 = New SqlCommand(pengaduan_mei, con)
        mei = Convert.ToInt32(sqlCmd9.ExecuteScalar())

        Dim sqlCmd10 = New SqlCommand(pengaduan_jun, con)
        jun = Convert.ToInt32(sqlCmd10.ExecuteScalar())

        Dim sqlCmd11 = New SqlCommand(pengaduan_jul, con)
        jul = Convert.ToInt32(sqlCmd11.ExecuteScalar())

        Dim sqlCmd12 = New SqlCommand(pengaduan_agu, con)
        agu = Convert.ToInt32(sqlCmd12.ExecuteScalar())

        Dim sqlCmd13 = New SqlCommand(pengaduan_sept, con)
        sept = Convert.ToInt32(sqlCmd13.ExecuteScalar())

        Dim sqlCmd14 = New SqlCommand(pengaduan_okt, con)
        okt = Convert.ToInt32(sqlCmd14.ExecuteScalar())

        Dim sqlCmd15 = New SqlCommand(pengaduan_nov, con)
        nov = Convert.ToInt32(sqlCmd15.ExecuteScalar())

        Dim sqlCmd16 = New SqlCommand(pengaduan_dec, con)
        dec = Convert.ToInt32(sqlCmd16.ExecuteScalar())

        con.Close()

    End Sub

End Class