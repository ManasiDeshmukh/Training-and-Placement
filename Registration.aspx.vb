Imports System.Data.SqlClient
Imports System


Partial Class Default2
    Inherits System.Web.UI.Page

    Protected Sub BtnSubmit_Click(ByVal sender As Object, ByVal e As EventArgs) Handles BtnSubmit.Click
        If Page.IsValid Then
            'Try
            Dim n As String = regnametext.Text
            Dim rn As String = regrollnotext.Text
            Dim pass As String = regpasswtext.Text
            Dim confirm As String = regconfpasstext.Text
            Dim c As String = DropDownList1.SelectedItem.Text
            Dim ans As String = reganstext.Text
            Dim conn As New SqlConnection("server=Mrudhika\SQLEXPRESS;uid=sa;password=mrudhika;database=master")
            conn.Open()

            Dim cmd As New SqlCommand("insert into reguser2 values (@Name,@Rollno,@Password,@quetion,@answer);", conn)
            cmd.Parameters.AddWithValue("@Name", n)
            cmd.Parameters.AddWithValue("@Rollno", rn)
            cmd.Parameters.AddWithValue("@Password", pass)
            cmd.Parameters.AddWithValue("@quetion", c)
            cmd.Parameters.AddWithValue("@answer", ans)
            If pass.Equals(confirm) Then


                Dim k As Integer = cmd.ExecuteNonQuery()
                cmd.Dispose()
                conn.Close()
                If k = 1 Then
                    Label8.ForeColor = Drawing.Color.Green
                    Label8.Text = "record saved.."
                    Response.Redirect("~/SearchStudentInformation.aspx")
                Else
                    Label8.ForeColor = Drawing.Color.Red
                    Label8.Text = "record not saved.."
                End If
            End If
            'Catch s As Exception
            '    MsgBox(s.Message)
            'End Try

        Else
            MsgBox("validation failed")
        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
