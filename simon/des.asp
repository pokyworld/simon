<%@ Language="VBScript" %>
<!-- #include virtual="./simon/lib/dbOpen.asp" -->
<%
    For Each Item In Request.QueryString
        Response.Write "<p>" & Item & ": " & Request.QueryString(Item) & "</p>"
    Next
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<body>
    <h1>Des</h1>
</body>

</html>