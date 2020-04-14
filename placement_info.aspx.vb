Imports System.Data.SqlClient
Imports System.Data
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click

    End Sub

    Protected Sub show_data(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click

        ImageButton2.Visible = False
        ImageButton3.Visible = False
        Dim con As New SqlConnection("Data Source=.\sqlexpress;Initial Catalog=placement;Integrated Security=True;Pooling=False")
        con.Open()
        Dim sql As String = "select * from students_placement"
        Dim da As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet
        da.Fill(ds, "students_placement")
        GridView1.DataSource = ds
        GridView1.DataMember = "students_placement"
        GridView1.DataBind()
        da.Dispose()
        con.Dispose()
        con.Close()
        'GridView1.Visible = True

        End Sub

    Protected Sub ImageButton2_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '  GridView1.Visible = False




    End Sub

    Protected Sub data_show(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton2.Click
        ImageButton1.Visible = False
        ImageButton3.Visible = False

        Dim con As New SqlConnection("Data Source=.\sqlexpress;Initial Catalog=placement;Integrated Security=True;Pooling=False")
        con.Open()
        Dim sql As String = "select * from students_placement"
        Dim da As New SqlDataAdapter(sql, con)
        Dim ds As New DataSet
        da.Fill(ds, "students_it_co")
        GridView1.DataSource = ds
        GridView1.DataMember = "students_it_co"
        GridView1.DataBind()
        da.Dispose()
        con.Dispose()
        con.Close()
    End Sub

   
    


End Class
