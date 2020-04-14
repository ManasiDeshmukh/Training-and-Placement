Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub BtnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles BtnLogin.Click
        If Page.IsValid Then
            Dim nam1 As String = txtname.Text
            Dim pwd As String = txtpassw.Text
            Dim conn As New SqlConnection("server=Mrudhika\SQLEXPRESS;uid=sa;password=mrudhika;database=master")
            conn.Open()
            Dim cmd As New SqlCommand("select * from reguser2 where Name= '" & txtname.Text.Trim & "'And Password= '" & txtpassw.Text.Trim & "';", conn)

            Dim rd As SqlDataReader = cmd.ExecuteReader
            If rd.Read Then
                Dim nm, ps As String
                nm = rd.GetString(0)
                ps = rd.GetString(1)
                rd.Close()
                cmd.Dispose()
                conn.Dispose()
                conn.Close()
                If pwd.Equals(ps) Then
                    Session.Add("Name  ", nm)
                    Response.Redirect("~/Default3.aspx")
                Else
                    Label5.Text = "invalid username/password..."

                End If
            Else
                rd.Close()
                cmd.Dispose()
                conn.Dispose()
                conn.Close()
                Label5.Text = "invalid user"
            End If
        Else
            Label5.Text = "validation failed.."
        End If
    End Sub
    Protected Sub BtnFrgtPwd_Click(ByVal sender As Object, ByVal e As system.EventArgs) Handles BtnFrgtPwd.Click
        Dim conn As New SqlConnection("server=Mrudhika\\SQLEXPRESS;uid=sa;password=mrudhika;database=master")
        conn.Open()
        Dim cmd As New SqlCommand("select quetion from reguser2 where Name='" & txtname.Text & "'", conn)
        Dim rd As SqlDataReader
        rd = cmd.ExecuteReader
        If rd.Read Then
            Dim q As String
            q = rd.GetString(0).Trim
            quetion.Text = q
        End If
        cmd.Dispose()
        rd.Close()
        'cmd.CommandText = "select answer,Password from reguser2 where Name='" & TextBox1.Text & "'"
        'cmd.Connection = conn
        'rd = cmd.ExecuteReader

        'If rd.Read Then
        '    Dim a As String
        '    Dim p As String
        '    a = rd.GetString(0).Trim.ToString
        '    p = rd.GetString(1).Trim.ToString
        '    If TextBox3.Text = a Then
        '        password1.Text = p
        '    End If
        'End If

    End Sub
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles showbtn.Click
        Dim conn As New SqlConnection("server=Mrudhika\\SQLEXPRESS;uid=sa;password=mrudhika;database=master")
        conn.Open()
        Dim cmd As New SqlCommand
        cmd.CommandText = "Select answer,Password from reguser2 where Name='" & txtname.Text & "'"
        cmd.Connection = conn
        Dim rd As SqlDataReader = cmd.ExecuteReader
        cmd.CommandText = "select answer,Password from reguser2 where Name='" & txtname.Text & "'"
        cmd.Connection = conn
        rd = cmd.ExecuteReader

        If rd.Read Then
            Dim a As String
            Dim p As String
            a = rd.GetString(0).Trim.ToString
            p = rd.GetString(1).Trim.ToString
            If answer.Text = a Then
                showpassw.Text = p
            End If
        End If

    End Sub
End Class
