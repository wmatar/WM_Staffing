
Partial Class Job_seeker_Deleted
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Response.AddHeader("refresh", "2;url=../Admin/Default.aspx")

    End Sub
End Class
