<%@ Language="VBScript" %>

<%
    For Each Item in Request.QueryString
        Response.Write Item & " : " & Request.QueryString(Item) & "<br/>"
    Next
%>