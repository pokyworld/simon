<%
    If IsObject(objConn) = True Then 
        objConn.Close
        Set objCmd = Nothing
        Set objConn = Nothing
    End If

%>