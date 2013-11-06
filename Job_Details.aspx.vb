
Partial Class Job_Details
    Inherits System.Web.UI.Page

    Protected Sub btn_Fill_Out_Ap_Click(sender As Object, e As EventArgs) Handles btn_Fill_Out_Ap.Click
        Response.Redirect("Job_Application.aspx")
    End Sub
End Class
