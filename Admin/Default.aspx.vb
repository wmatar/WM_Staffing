
Partial Class Admin_Default
    Inherits System.Web.UI.Page

    Protected Sub btn_State_Click(sender As Object, e As EventArgs) Handles btn_State.Click
        Admin_MultiView.SetActiveView(State_View)
    End Sub

    Protected Sub btn_Job_Click(sender As Object, e As EventArgs) Handles btn_Job.Click
        Admin_MultiView.SetActiveView(Job_View)
    End Sub

    Protected Sub btn_Applicant_Click(sender As Object, e As EventArgs) Handles btn_Applicant.Click
        Admin_MultiView.SetActiveView(Applicant_View)
    End Sub
End Class
