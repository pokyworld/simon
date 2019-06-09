<%
    For Each Item In Request.Form
        Response.Write Item & ": " & Request.Form(Item) & "<br/>"
    Next
    If Len(Trim(Request.Form("search")&"")) >= 1 Then
        Response.Redirect "/simon/search/" & Request.Form("search") & "/"
    End If
%>