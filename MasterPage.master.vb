﻿
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        lbl_date.Text = "Welcome to WM Staffing! Today's date: " & Date.Today

    End Sub
End Class

