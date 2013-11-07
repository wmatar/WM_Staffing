
Partial Class Saved
    Inherits System.Web.UI.Page

    Protected Sub Page_LoadComplete(sender As Object, e As EventArgs) Handles Me.LoadComplete
        Response.AddHeader("refresh", "3;url=Search_Jobs.aspx")
    End Sub
End Class
