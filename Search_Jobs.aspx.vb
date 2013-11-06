
Partial Class Search_Jobs
    Inherits System.Web.UI.Page

    Protected Sub tb_job_description_TextChanged(sender As Object, e As EventArgs) Handles tb_job_description.TextChanged
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        'tb_job_description.Focus()
    End Sub

    Protected Sub btn_reset_Click(sender As Object, e As EventArgs) Handles btn_reset.Click
        tb_job_description.Text = ""
        State_DropDownList.SelectedIndex = 0
    End Sub
End Class
